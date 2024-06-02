% Date:     01/05/2024
% Author:   ERS

% This script locates river mouths close to a given tidal range and
% significant wave height from the Caldwell2019 dataset. River discharges
% are then cross-referenced (using IDs from Caldwell2019) from the dataset
% of Milliman2011. Data are then written into a table (tabAll) for easy
% reference.

% Note: Milliman2011 gives only annual /suspended/ sediment fluxes. Their
% data is from a range of sources, is often measured far upstream of the
% river mouth, and tends to be more accurate for developed countries where
% more monitoring occurs. Refer to Milliman et al (2011) for details.

%% IMPORT AND TIDY DATA
% Caldwell2019 H_s and H_t
T = readtable('../MATLAB datastore/Supplemental_Table_1.xlsx','Range','H4:I5402');
T = table2array(T);

% Caldwell2019 Milliman river IDs
T_ident = readtable('../MATLAB datastore/Supplemental_Table_1.xlsx','Range','G4:G5402');
T_ident = table2array(T_ident);
T_ident_adj = str2double(T_ident); % nb: this sets any cells with more than 1 Milliman2011 ID to NaN. Following code corrects for this.

T_ident_adj = [T_ident_adj nan(size(T_ident_adj,1),3)]; % add 3 additional rows to allow for multiple milliman IDs (1 to 4 per system)

m = T_ident(strlength(T_ident) > 4); % Isolates only those cells with multiple values

% this block splits each of the multi-value cells over multiple columns
% (separate split command for 2, 3, or 4 values), and converts from char to
% doubles (messy code but works)
k = cell(size(m,1),4);
k([1:14 16:31 33:40 42:47 49:end],1:2) = split(m([1:14 16:31 33:40 42:47 49:end]),{','});
k([15 32 41],1:3) = split(m([15 32 41]),{','});
k(48,1:4) = split(m(48),{','});
k = str2double(k);

multiIDs = find(strlength(T_ident) > 4); % finds indexes of cells in T_ident with more than one value
T_ident_adj(multiIDs,1:4) = k; % re-implements values removed from T_ident_adj with intial str2double command

% Milliman2011 total suspended solids [Mt yr-1]
T_milliman_Qs = readtable('../MATLAB datastore/Milliman2011_Database_updated2012.xls','Range','Z2:Z1532','Sheet','MillimanFarnsworthDatabase');
T_milliman_Qs = table2array(T_milliman_Qs);

% Milliman2011 river discharge [km3 yr-1]
T_milliman_Q = readtable('../MATLAB datastore/Milliman2011_Database_updated2012.xls','Range','S2:S1532','Sheet','MillimanFarnsworthDatabase');
T_milliman_Q = table2array(T_milliman_Q);

% cleanup
clear T_ident T_ident_adj2 k;

%% IDENTIFY RIVER-COASTS WITH COMBINED WAVES AND TIDES SIMILAR TO SIMS
waveHeight = 0.25;
waveHeightRange = 0.5;
tidalRange = 4.0;
tidalRangeRange = 6.0;

b=zeros(size(T,1),1);
for idx=1:size(T,1)
    a = T(idx,1) >= waveHeight-waveHeightRange/2 && T(idx,1) <= waveHeight+waveHeightRange/2 && T(idx,2) >= tidalRange-tidalRangeRange/2 && T(idx,2) <= tidalRange+tidalRangeRange/2;
    b(idx) = a;
end
caldwellID = find(b==1);
numCases = sum(b)

% Find total suspended solids in Milliman2011 dataset, and convert to kg -s
a1 = T_ident_adj(caldwellID,:);

a2 = zeros(numCases,1);
a3 = zeros(numCases,1);
for ii = 1:numCases
    for jj = 1:4
        idx = a1(ii,jj);
        if isnan(idx) % to ignore NaNs
        else
            a2(ii) = a2(ii) + T_milliman_Qs(idx);
            a3(ii) = a3(ii) + T_milliman_Q(idx);
        end
    end
end
a2 = a2 .*(1E9/(365*24*60*60)); % converts [Mt yr-1] to [kg s-1]
a3 = a3 .*(1E9/(365*24*60*60)); % converts [km3 yr-1] to [m3 s-1]

% Create table of outputs
all = [caldwellID T_ident_adj(caldwellID,:) T(caldwellID,:) a3 a2];
tabAll = array2table(all,'VariableNames',{'Caldwell ID','Milliman ID #1','#2','#3','#4','Hs','Ht','Q','Qs'})