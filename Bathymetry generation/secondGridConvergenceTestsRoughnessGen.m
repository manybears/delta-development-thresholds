% Date: 17/11/2022
% Author: ERS

% This script defines and exports spatially varying (Chezy) roughness
% values for use in second delta threshold convergence tests (25 m grid)
% only.

%% DEFINE ROUGHNESSES
chezy25 = zeros((360+2)*2, 790+2); % rows doubled as both U and V roughness required.

chezy25(:, :) = 45; % default Chezy value used throughout main domain

chezy25(1:40, 392:401) = 5; % "frictonless" region of main channel (1km)

for mm = 0:20 % transition from low friction to default value (0.5km)
    chezy25(40+mm, 392:401) = 5 + mm * 40/20;
end

chezy25(363:end, :) = chezy25(1:362, :); % repeat values for V-roughnesses

%% EXPORT ROUGHNESS FILE (RENAME MANUALLY TO *.RGH)
% writematrix(chezy25, '..\MATLAB export\790x360Chezy2.txt', 'Delimiter', ' ')