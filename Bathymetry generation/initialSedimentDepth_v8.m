% Date:     09/08/2022
% Author:   ERS

% This script defines and exports erodible sediment depth per cell for DTT
% tests.

% v2 (17/08/2022) - shifted inerodible extent back 500 m (from front of
% beach to back of beach).

% v3 (24/08/2022) - amended to be suitable to new model domain and grid.

% v4 (15/09/2022) - shifted inerodible extent forwards 500 m again...

% v5 (16/09/2022) - made entire chonker beach region erodible down to -7.5
% m depth

% v6 (27/09/2022) - amended for coarsened bathymetry

% v7 (25/10/2022) - amended for v13 bathymetry

% v8 (24/11/2022) - amended for v14 bathymetry

%%
% define empty depth matrix
dttSedimentDepth = zeros(4362, 792);

% transition sediment depths
for ii = 0:39
    dttSedimentDepth(4022 + ii, 2:end-1) = 0.25 + ii * 0.5;
end

% basin sediment depths
dttSedimentDepth(4062:end-1,2:end-1) = 20;

% erodible beach sediment depths
for ii = 0:19
    dttSedimentDepth(4002+ii, 2:391) = 24.9025 + 0.005 * ii;
    dttSedimentDepth(4002+ii, 402:end-1) = 24.9025 + 0.005 * ii;
end

%% INVESTIGATIVE PLOTS
% figure(001);
% imagesc(dttSedimentDepth, [0 20]);

%% EXPORT SEDIMENT DEPTHS
% writematrix(dttSedimentDepth, '..\MATLAB export\790x4360sedDepths.txt', 'Delimiter', ' ')

%% ADAPT AND EXPORT SED DEPTHS FOR DOMAIN DECOMPOSITION METHOD
dttSedimentDepthDDsides = zeros(362, 40);
dttSedimentDepthDDmain = zeros(362, 44);
dttSedimentDepthDDmid = zeros(362, 44);

dttSedimentDepthDDsides(2:end-1, 2:end-1) = dttSedimentDepth(4002:4361, 2:39);
dttSedimentDepthDDmain(2:end-1, 2:end-1) = dttSedimentDepth(4002:4361, 2:43);
dttSedimentDepthDDmid(2:end-1, 2:end-1) = dttSedimentDepth(4002:4361, 376:417);

% writematrix(dttSedimentDepthDDsides, '..\MATLAB export\790x4360v14sedDepthsSides.txt', 'Delimiter', ' ')
% writematrix(dttSedimentDepthDDmain, '..\MATLAB export\790x4360v14sedDepthsMain.txt', 'Delimiter', ' ')
% writematrix(dttSedimentDepthDDmid, '..\MATLAB export\790x4360v14sedDepthsMid.txt', 'Delimiter', ' ')