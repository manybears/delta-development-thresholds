% Date: 08/11/2022
% Author: ERS

% This script defines and exports depth files for use in second delta
% threshold convergence tests.
% Grid spacings are 250 m, 125 m, 50 m, 25m, and 12.5 m.
% Corresponding grid sizes are 79×36, 158×72, 395×180, 790×360, and 1580×720.

%% DEFINE ALL BATHYMETRY MATRICES
% Create empty bed level matrices
bathy250 = zeros(36+2, 79+2);
bathy125 = zeros(72+2, 158+2);
bathy50 = zeros(180+2, 395+2);
bathy25 = zeros(360+2, 790+2);
bathy12pt5 = zeros(720+2, 1580+2);

% Initialize all elements to -999
bathy250(:, :) = -999;
bathy125(:, :) = -999;
bathy50(:, :) = -999;
bathy25(:, :) = -999;
bathy12pt5(:, :) = -999;

% Beach region
bathy250(6:7, 1:end-1) = -10;
bathy125(10:13, 1:end-1) = -10;
bathy50(22:31, 1:end-1) = -10;
bathy25(42:61, 1:end-1) = -10;
bathy12pt5(82:121, 1:end-1) = -10;

% Channels
for ii = 1:7
    bathy250(ii, 41) = 4.625 + 0.05 * ii;
end

for ii = 1:13
    bathy125(ii, 80:81) = 4.6725 + 0.025 * ii;
end

for ii = 1:31
    bathy50(ii, 197:201) = 4.685 + 0.01 * ii;
end

for ii = 1:61
    bathy25(ii, 392:401) = 4.6925 + 0.005 * ii;
end

for ii = 1:121
    bathy12pt5(ii, 782:801) = 4.69625 + 0.0025 * ii;
end

% Basins
for ii = 1:22
    bathy250(ii + 7, 1:end-1) = 4.875 + 0.25 * ii;
end

for ii = 1:44
    bathy125(ii + 13, 1:end-1) = 4.9375 + 0.125 * ii;
end

for ii = 1:110
    bathy50(ii + 31, 1:end-1) = 4.975 + 0.05 * ii;
end

for ii = 1:220
    bathy25(ii + 61, 1:end-1) = 4.9875 + 0.025 * ii;
end

for ii = 1:440
    bathy12pt5(ii+121, 1:end-1) = 4.99375 + 0.0125 *ii;
end

% Basin flats
bathy250(30:end-1, 1:end-1) = 10.5;
bathy125(58:end-1, 1:end-1) = 10.5;
bathy50(142:end-1, 1:end-1) = 10.5;
bathy25(282:end-1, 1:end-1) = 10.5;
bathy12pt5(562:end-1, 1:end-1) = 10.5;

%% TEST PLOTS
close all;
ES2010_colormap;

plot1 = figure(101);
imagesc(-bathy250(2:end-1, 2:end-1), 1.5*[-570/71 10]);
colormap(ES2010);

plot2 = figure(102);
imagesc(-bathy125(2:end-1, 2:end-1), 1.5*[-570/71 10]);
colormap(ES2010);

plot3 = figure(103);
imagesc(-bathy50(2:end-1, 2:end-1), 1.5*[-570/71 10]);
colormap(ES2010);

plot = figure(104);
imagesc(-bathy25(2:end-1, 2:end-1), 1.5*[-570/71 10]);
colormap(ES2010);

plot5 = figure(105);
imagesc(-bathy12pt5(2:end-1, 2:end-1), 1.5*[-570/71 10]);
colormap(ES2010);

%% EXPORT
% writematrix(bathy250, '..\MATLAB export\79x36.txt', 'Delimiter', ' ')
% writematrix(bathy125, '..\MATLAB export\158x72.txt', 'Delimiter', ' ')
% writematrix(bathy50, '..\MATLAB export\395x180.txt', 'Delimiter', ' ')
% writematrix(bathy25, '..\MATLAB export\790x360.txt', 'Delimiter', ' ')
% writematrix(bathy12pt5, '..\MATLAB export\1580x720.txt', 'Delimiter', ' ')