% Date: 08/11/2022
% Author: ERS

% This script defines and exports initial sediment depths for use in second
% delta threshold convergence tests.

% v2 (18/11/2022) - for alternative bathy with flat channel (25 m grid
% only)

%% DEFINE ALL DEPTH MATRICES
% Create empty depth matrices
depth25alt = zeros(360+2, 790+2);

% Beach
depth25alt(42:61, [1:391 402:end-1]) = 15;

% Transition sediment depths
for ii = 0:39
    depth25alt(ii + 62, 1:end-1) = 0.25 + 0.5 * ii;
end

% Constant sediment depths
depth25alt(102:end-1, 1:end-1) = 20;

%% TEST PLOTS
close all;

plot = figure(104);
imagesc(depth25alt(2:end-1, 2:end-1));

%% EXPORT
% writematrix(depth25alt, '..\MATLAB export\790x360sedalt.txt', 'Delimiter', ' ')