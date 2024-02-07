% Date: 08/11/2022
% Author: ERS

% This script defines and exports depth files for use in second delta
% threshold convergence tests.
% Grid spacings are 250 m, 125 m, 50 m, 25m, and 12.5 m.
% Corresponding grid sizes are 79×36, 158×72, 395×180, 790×360, and 1580×720.

% v2 (18/11/2022) - alternative bathy with flat channel (25 m grid
% only)

%% DEFINE ALL BATHYMETRY MATRICES
% Create empty bed level matrices
bathy25alt = zeros(360+2, 790+2);

% Initialize all elements to -999
bathy25alt(:, :) = -999;

% Beach region
bathy25alt(42:61, 1:end-1) = -10;

% Channels
for ii = 1:61
    bathy25alt(ii, 392:401) = 4.6925 + 0.005 * ii;
end
bathy25alt(1:61, 392:401) = 5;

% Basins
for ii = 1:220
    bathy25alt(ii + 61, 1:end-1) = 4.9875 + 0.025 * ii;
end

% Basin flats
bathy25alt(282:end-1, 1:end-1) = 10.5;

%% TEST PLOTS
close all;
ES2010_colormap;

plot = figure(104);
imagesc(-bathy25alt(2:end-1, 2:end-1), 1.5*[-570/71 10]);
colormap(ES2010);

%% EXPORT
% writematrix(bathy25alt, '..\MATLAB export\790x360alt.txt', 'Delimiter', ' ')