% Date:     01/06/2023
% Author:   ERS

% This script loads data for producing bathy multitile plot.

%% SET runID
runID = 'W2.0T6.0';

%% IMPORT BATHYMETRIES
load(['../MATLAB datastore/' runID '_bathy.mat']);

% below for plots showing wave effect on lowering delta apex in high tide sims
% load('../MATLAB datastore/W0.0T6.0_bathy.mat')
% W0T6.dttBedLevel = dttBedLevel;
% 
% load('../MATLAB datastore/W0.4T6.0_bathy.mat')
% W04T6.dttBedLevel = dttBedLevel;
% 
% load('../MATLAB datastore/W0.8T6.0_bathy.mat')
% W08T6.dttBedLevel = dttBedLevel;
% 
% load('../MATLAB datastore/W1.2T6.0_bathy.mat')
% W12T6.dttBedLevel = dttBedLevel;
% 
% load('../MATLAB datastore/W1.6T6.0_bathy.mat')
% W16T6.dttBedLevel = dttBedLevel;
% 
% load('../MATLAB datastore/W2.0T6.0_bathy.mat')
% W2T6.dttBedLevel = dttBedLevel;
% 
% clear dttBedLevel;

%% IMPORT METRICS DATA
load(['../MATLAB datastore/' runID '_metrics_HPC.mat']);

%% (ROUGH) FIX FOR TIDE LINES SHOWING AT EDGES
dttLowTideFrontLogical(:, 21:end, 1) = 0;
dttLowTideFrontLogical(:, 21:end, end) = 0;
dttLowTideFrontLogical(:, end, :) = 0;

if exist('dttHighTideFrontLogical', 'var')==1
    dttHighTideFrontLogical(:, 21:end, 1) = 0;
    dttHighTideFrontLogical(:, 21:end, end) = 0;
    dttHighTideFrontLogical(:, end, :) = 0;
end

dttDeltaFrontLogical(:, 21:end, 1) = 0;
dttDeltaFrontLogical(:, 21:end, end) = 0;
dttDeltaFrontLogical(:, end, :) = 0;

%% PLOTS PREAMBLE
dttColorMap = cmocean('-tempo');
dttColorMap2 = cmocean('delta');
% xAxis = [0.0125 19.7375];
% yAxis = [0.0125 8.9875];
xAxis = [0 19.75];
yAxis = [0 9];

%% BATHY PLOTS
bathyPlot = figure(1001);
bathyPlot.Position = [2080 100 790 360];
% tiledlayout(2,2, 'TileSpacing', 'none');
clf

% ax1a = nexttile;
ax1 = axes('Position', [0 0 1 1]);
% imagesc(permute(-dttBedLevel(end-4,:,:), [2 3 1]), [-20 5]);
imshow(permute(-dttBedLevel(end-4,:,:), [2 3 1]), [-20 5]);
set(ax1, 'ydir', 'normal')
colormap(ax1, dttColorMap)
% axis equal off
% ylim([0 9])
% xlim([0 19.750])
hold on;

    if exist('dttHighTideFrontLogical', 'var')==1
        ax1a = axes('Position', [0 0 1 1]);
%         ax1a = nexttile(1);
%         imagesc([zeros(9, 790); permute(dttHighTideFrontLogical(end, 10:end, :), [2 3 1])], 'AlphaData', [zeros(9, 790); permute(dttHighTideFrontLogical(end, 10:end, :), [2 3 1])]);
        subA = imshow([zeros(4, 790); permute(dttHighTideFrontLogical(end, 5:end, :), [2 3 1])]);
        set(subA, 'AlphaData', [zeros(4, 790); permute(dttHighTideFrontLogical(end, 5:end, :), [2 3 1])]);
        set(ax1a, 'ydir', 'normal', 'color', 'none', 'visible', 'off');
        colormap(ax1a, flipud(winter))
        axis equal off
%         ylim([0 9])
%         xlim([0 19.750])
    end

    ax1b = axes('Position', [0 0 1 1]);
%     ax1b = nexttile(1);
%     imagesc([zeros(9, 790); permute(dttLowTideFrontLogical(end-1, 10:end, :), [2 3 1])], 'AlphaData', [zeros(9, 790); permute(dttLowTideFrontLogical(end-1, 10:end, :), [2 3 1])]);
    subB = imshow([zeros(9, 790); permute(dttLowTideFrontLogical(end-1, 10:end, :), [2 3 1])]);
    set(subB, 'AlphaData', [zeros(9, 790); permute(dttLowTideFrontLogical(end-1, 10:end, :), [2 3 1])]);
    set(ax1b, 'ydir', 'normal','color','none','visible','off');
    colormap(ax1b, flipud(hsv))
%     colormap(ax1b, cool)
    axis equal off
%     ylim([0 9])
%     xlim([0 19.750])
    
    ax1c = axes('Position', [0 0 1 1]);
%     ax1c = nexttile(1);
%     imagesc([zeros(9, 790); permute(dttDeltaFrontLogical(end, 10:end, :), [2 3 1])], 'AlphaData', [zeros(9, 790); permute(dttDeltaFrontLogical(end, 10:end, :), [2 3 1])]);
    subC = imshow([zeros(9, 790); permute(dttDeltaFrontLogical(end, 10:end, :), [2 3 1])]);
    set(subC, 'AlphaData', [zeros(9, 790); permute(dttDeltaFrontLogical(end, 10:end, :), [2 3 1])]);
    set(ax1c, 'ydir', 'normal','color','none','visible','off');
    colormap(ax1c, flipud(gray))
    axis equal off
%     ylim([0 9])
%     xlim([0 19.750])
    
    text(20, 320, '(ad)', 'color', 'white', 'fontsize', 64);
    text(400, 320, runID, 'color', 'white', 'fontsize', 64);
    
%% EXPORT INDIVIDUAL SUBPLOTS
exportgraphics(bathyPlot, ['../MATLAB export/Final/multiBathyPlots/dttBathyNoAxis' runID '_v2.png'], 'resolution', 96);

%% IMPORT INDIVIDUAL PNGS FOR MULTI-TILE PLOT
% tiletest = imtile({'../MATLAB export/Final/multiBathyPlots/dttBathyNoAxisW0.0T0.0.png', ...
%     '../MATLAB export/Final/multiBathyPlots/dttBathyNoAxisW0.0T2.0.png', ...
%     '../MATLAB export/Final/multiBathyPlots/dttBathyNoAxisW0.0T4.0.png', ...
%     '../MATLAB export/Final/multiBathyPlots/dttBathyNoAxisW0.0T6.0.png', ...
%     '../MATLAB export/Final/multiBathyPlots/dttBathyNoAxisW0.4T0.0.png', ...
%     '../MATLAB export/Final/multiBathyPlots/dttBathyNoAxisW0.4T2.0.png', ...
%     '../MATLAB export/Final/multiBathyPlots/dttBathyNoAxisW0.4T4.0.png', ...
%     '../MATLAB export/Final/multiBathyPlots/dttBathyNoAxisW0.4T6.0.png', ...
%     '../MATLAB export/Final/multiBathyPlots/dttBathyNoAxisW0.8T0.0.png', ...
%     '../MATLAB export/Final/multiBathyPlots/dttBathyNoAxisW0.8T2.0.png', ...
%     '../MATLAB export/Final/multiBathyPlots/dttBathyNoAxisW0.8T4.0.png', ...
%     '../MATLAB export/Final/multiBathyPlots/dttBathyNoAxisW0.8T6.0.png', ...
%     '../MATLAB export/Final/multiBathyPlots/dttBathyNoAxisW1.2T0.0.png', ...
%     '../MATLAB export/Final/multiBathyPlots/dttBathyNoAxisW1.2T2.0.png', ...
%     '../MATLAB export/Final/multiBathyPlots/dttBathyNoAxisW1.2T4.0.png', ...
%     '../MATLAB export/Final/multiBathyPlots/dttBathyNoAxisW1.2T6.0.png', ...
%     '../MATLAB export/Final/multiBathyPlots/dttBathyNoAxisW1.6T0.0.png', ...
%     '../MATLAB export/Final/multiBathyPlots/dttBathyNoAxisW1.6T2.0.png', ...
%     '../MATLAB export/Final/multiBathyPlots/dttBathyNoAxisW1.6T4.0.png', ...
%     '../MATLAB export/Final/multiBathyPlots/dttBathyNoAxisW1.6T6.0.png', ...
%     '../MATLAB export/Final/multiBathyPlots/dttBathyNoAxisW2.0T0.0.png', ...
%     '../MATLAB export/Final/multiBathyPlots/dttBathyNoAxisW2.0T2.0.png', ...
%     '../MATLAB export/Final/multiBathyPlots/dttBathyNoAxisW2.0T4.0.png', ...
%     '../MATLAB export/Final/multiBathyPlots/dttBathyNoAxisW2.0T6.0.png'});
% 
% multiBathyPlot = figure(1002);
% imshow(tiletest);

%% EXPORT MULTI-TILE PLOT
% exportgraphics(multiBathyPlot, '../MATLAB export/Final/multiBathyPlots/dttMultiTileBathyNoAxis.png');

%% IMPORT INDIVIDUAL PNGS FOR MULTI-TILE PLOT 2 (T1 SIMS ONLY)
% tiletest2 = imtile({'../MATLAB export/Final/multiBathyPlots/dttBathyNoAxisW0.0T1.0_TEST.png', ...
%     '../MATLAB export/Final/multiBathyPlots/dttBathyNoAxisW0.4T1.0_TEST.png', ...
%     '../MATLAB export/Final/multiBathyPlots/dttBathyNoAxisW0.8T1.0_TEST.png', ...
%     '../MATLAB export/Final/multiBathyPlots/dttBathyNoAxisW1.2T1.0_TEST.png', ...
%     '../MATLAB export/Final/multiBathyPlots/dttBathyNoAxisW1.6T1.0_TEST.png', ...
%     '../MATLAB export/Final/multiBathyPlots/dttBathyNoAxisW2.0T1.0_TEST.png'});
% 
% multiBathyPlot2 = figure(1003);
% 
% imshow(tiletest2);
% 
% set(gca,'units','pixels')
% origpos=get(gca,'position');
% origpos(3) = 4034;
% origpos(4) = 2763;
% set(gca,'position',origpos)

%% EXPORT MULTI-TILE PLOT 2
% exportgraphics(multiBathyPlot2, '../MATLAB export/Final/multiBathyPlots/dttMultiTileBathy2NoAxis.png');

%% MULTI-TILE PLOT BATHIES WITHIN TIDAL RANGE
% dttTestPlot3 = figure(1004);
% dttTestPlot3.Position = [100 100 920 690];
% clf reset
% tiledFig = tiledlayout(3, 2, 'TileSpacing', 'Tight', 'Padding', 'Tight');
% xlabel(tiledFig, '{\itx} [km]', 'FontSize', 14)
% ylabel(tiledFig, '{\ity} [km]', 'FontSize', 14)
% 
% nexttile
% imagesc(xAxis, yAxis, permute(-W0T6.dttBedLevel(end, :, :), [2 3 1]), [-3 3]);
% set(gca, 'ydir', 'normal', 'FontSize', 12)
% colormap(gca, dttColorMap2)
% % colormap(gca, ES2010)
% axis equal;
% xlim([5 14.750])
% xticklabels([]);
% ylim([0 5])
% text(5.25, 4.5, 'a)', 'Color', 'White', 'FontSize', 24)
% 
% nexttile
% imagesc(xAxis, yAxis, permute(-W04T6.dttBedLevel(end, :, :), [2 3 1]), [-3 3]);
% set(gca, 'ydir', 'normal', 'FontSize', 12)
% colormap(gca, dttColorMap2)
% % colormap(a1, ES2010)
% axis equal;
% xlim([5 14.750])
% xticklabels([]);
% ylim([0 5])
% yticklabels([]);
% text(5.25, 4.5, 'b)', 'Color', 'White', 'FontSize', 24)
% 
% nexttile
% imagesc(xAxis, yAxis, permute(-W08T6.dttBedLevel(end, :, :), [2 3 1]), [-3 3]);
% set(gca, 'ydir', 'normal', 'FontSize', 12)
% colormap(gca, dttColorMap2)
% % colormap(a1, ES2010)
% axis equal;
% xlim([5 14.750])
% xticklabels([]);
% ylim([0 5])
% text(5.25, 4.5, 'c)', 'Color', 'White', 'FontSize', 24)
% 
% nexttile
% imagesc(xAxis, yAxis, permute(-W12T6.dttBedLevel(end, :, :), [2 3 1]), [-3 3]);
% set(gca, 'ydir', 'normal', 'FontSize', 12)
% colormap(gca, dttColorMap2)
% % colormap(a1, ES2010)
% axis equal;
% xlim([5 14.750])
% xticklabels([]);
% ylim([0 5])
% yticklabels([]);
% text(5.25, 4.5, 'd)', 'Color', 'White', 'FontSize', 24)
% 
% nexttile
% imagesc(xAxis, yAxis, permute(-W16T6.dttBedLevel(end, :, :), [2 3 1]), [-3 3]);
% set(gca, 'ydir', 'normal', 'FontSize', 12)
% colormap(gca, dttColorMap2)
% % colormap(a1, ES2010)
% axis equal;
% xlim([5 14.750])
% ylim([0 5])
% text(5.25, 4.5, 'e)', 'Color', 'White', 'FontSize', 24)
% 
% nexttile
% imagesc(xAxis, yAxis, permute(-W2T6.dttBedLevel(end, :, :), [2 3 1]), [-3 3]);
% set(gca, 'ydir', 'normal', 'FontSize', 12)
% colormap(gca, dttColorMap2)
% % colormap(a1, ES2010)
% axis equal;
% xlim([5 14.750])
% ylim([0 5])
% yticklabels([]);
% text(5.25, 4.5, 'f)', 'Color', 'White', 'FontSize', 24)
% 
% cb1 = colorbar;
% cb1.Label.String = 'Bed elevation [m]';
% cb1.Layout.Tile = 'east';
% cb1.Ticks = [-3 -2 -1 0 1 2 3];
% cb1.TickLabels = {'{\leq}-3', '-2', '-1', '0', '1', '2' , '{\geq}3'};
% cb1.FontSize = 12;

%% EXPORT MULTI-TILE PLOT 3
% exportgraphics(dttTestPlot3, '../MATLAB export/Final/multiBathyPlots/dttMultiTileBathy3_waveEffectOnDeltaApexBedLevel_T6_v2.png');