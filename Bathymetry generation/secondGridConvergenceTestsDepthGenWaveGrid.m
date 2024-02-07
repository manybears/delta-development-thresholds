% Date:     14/12/2022
% Author:   ERS

% This script defines and exports depth files for use with the coarse WAVE
% grid into which the FLOW grid is nested.

%% DEFINE BATHYMETRY MATRIX
% create empty matrix
bathyWave = zeros(172+2, 695+2);

% initialize matrix
bathyWave(:,:) = -999;

% beach region
bathyWave(1:2, 1:end-1) = -10;

% basin slope
for ii = 0:109
    bathyWave(ii + 3, 1:end-1) = 5.05 + 0.05*ii;
end

% basin flat
bathyWave(113:end-1, 1:end-1) = 10.5;

% channel (add this later if neccessary)

% test plot
figure(001)
imagesc(bathyWave(1:end-1, 1:end-1));

%% EXPORT BATHYMETRY
% writematrix(bathyWave, '..\MATLAB export\695x172_WAVE.txt', 'Delimiter', ' ');