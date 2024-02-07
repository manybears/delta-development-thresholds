% Date:     01/01/2024
% Author:   ERS

% This script imports alongshore sediment spread data (processed) and
% compares to a range of combinations of W and kappa, in order to determine
% a best fit (to smoothed data) based on adjustment of these variables.

%% LOAD SIMULATION X-SPREAD DATA
load('..\MATLAB datastore\dttW2.0T1.0sedimentSpreading.mat', 'xVol') % !!!set runID manually!!!

%% SMOOTH D3D DATA
xVolSm = movmean(xVol, 161, 2); % smooths first in x
xVolSm = movmean(xVolSm, 4, 1); % smooths second in t (over single tide)

%%
vol = zeros(576,29750);
vol2 = zeros(1,790);
se = zeros(576,790);

rmseSmTab = zeros(1,5); % dims: inputRange × kappa

idx = 1;
for kappa = 0.0065:0.0005:0.0085 % edit as needed
    for inputWidth = 4250:250:4250 % edit as needed
%         dttDiffusionModel
        for tt = 1:577
            vol(tt,:) = dttDiffusionModelAnalyticalFunc(100,29750,inputWidth,kappa,tt*(3.125*60*60*175),1280,0.1);
            for nn=1:790
                vol2(nn) = sum(vol(tt,4976+(nn*25):5000+(nn*25)));
            end
            se(tt,:) = (vol2 - xVolSm(tt,:)*(1600/2650)).^2;
        end
        rmseSmTab(idx) = sqrt(mean(se,'all'));
        idx = idx+1;
    end
end

rmseSmTab = rmseSmTab'