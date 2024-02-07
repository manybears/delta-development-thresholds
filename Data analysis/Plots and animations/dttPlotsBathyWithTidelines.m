% Date:     17/03/2023
% Author:   ERS

% This script plots simulation bathymetry and associated tidelines.

%% RUN THESE SCRIPTS FIRST
% dttTideLines;
% dttDeltaFrontToeLine;

%% (OR) LOAD SAVED DATA/IMPORT BATHY
% runID = 'W2.0T1.0ext';
% load(['../MATLAB datastore/' runID '_metrics_HPC.mat']);
% 
% dttMapImportDD;
%     dttExtractBedLevels;
%         dttParameters;

%% PLOTS PREAMBLE
% close all;
% ES2010_colormap;
dttColorMap = cmocean('-tempo');
xAxis = [0.0125 19.7375];
yAxis = [0.0125 8.9875];

%% (ROUGH) FIX FOR TIDE LINES SHOWING AT EDGES
dttDeltaFrontLogical(:, 21:end, 1) = 0;
dttDeltaFrontLogical(:, 21:end, end) = 0;
dttDeltaFrontLogical(:, end, :) = 0;

dttLowTideFrontLogical(:, 21:end, 1) = 0;
dttLowTideFrontLogical(:, 21:end, end) = 0;
dttLowTideFrontLogical(:, end, :) = 0;

dttHighTideFrontLogical(:, 21:end, 1) = 0;
dttHighTideFrontLogical(:, 21:end, end) = 0;
dttHighTideFrontLogical(:, end, :) = 0;

%% BATHY WITH TIDELINES PLOT
plot1 = figure(101);
plot1.Position = [100 100 1800 760];
clf;
% tiledlayout(1,1);
% nexttile;
a11 = axes;
% imagesc(xAxis, yAxis, permute(-dttBedLevel(dttEnd-4, :, :), [2 3 1]), 3.0*[-570/71 10]); % for use with ES2010 colormap
imagesc(xAxis, yAxis, permute(-dttBedLevel(dttEnd-4, :, :), [2 3 1]), [-20 5]);
set(a11, 'ydir', 'normal', 'FontSize', 12)
% colormap(a11, ES2010)
colormap(a11, dttColorMap)
axis equal
ylim([0 9])
xlim([0 19.750])
% title('W0.0T0.0 - Bathymetry with coastline and delta front line - 36 years') % AMEND TITLE AS REQUIRED
xlabel('{\it x}-distance [km]');
ylabel('{\it y}-distance [km]');
% cb1 = colorbar;
% cb1.Label.String = 'Elevation [m]';
hold on;

    a11 = axes;
    imagesc(xAxis, yAxis, [zeros(3, 790); permute(dttHighTideFrontLogical(end-1, 4:end, :), [2 3 1])], 'AlphaData', [zeros(3, 790); permute(dttHighTideFrontLogical(end-1, 4:end, :), [2 3 1])]);
    colormap(a11, flipud(winter))
    set(a11, 'ydir', 'normal', 'color', 'none', 'visible', 'off', 'FontSize', 12);
    axis equal
    ylim([0 9])
    xlim([0 19.750])

    a12 = axes;
    imagesc(xAxis, yAxis, [zeros(3, 790); permute(dttLowTideFrontLogical(end, 4:end, :), [2 3 1])], 'AlphaData', [zeros(3, 790); permute(dttLowTideFrontLogical(end, 4:end, :), [2 3 1])]);
    colormap(a12, flipud(hsv))
    set(a12, 'ydir', 'normal', 'color', 'none', 'visible', 'off', 'FontSize', 12);
    axis equal
    ylim([0 9])
    xlim([0 19.750])

    a13 = axes;
    imagesc(xAxis, yAxis, [zeros(3, 790); permute(dttDeltaFrontLogical(end-1, 4:end, :), [2 3 1])], 'AlphaData', [zeros(3, 790); permute(dttDeltaFrontLogical(end-1, 4:end, :), [2 3 1])]);
    colormap(a13, flipud(gray))
    set(a13, 'ydir', 'normal', 'color', 'none', 'visible', 'on', 'FontSize', 12);
    axis equal off
    ylim([0 9])
    xlim([0 19.750])
                
hold off;

%% EXPORT PLOT
exportgraphics(plot1, ['../MATLAB export/Final/dtt' runID '_bathymetryWithTideLines_36yr.png'], 'Resolution', 150);