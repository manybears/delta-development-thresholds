% Date:     04/01/2023
% Author:   ERS

% This script plots various simulation outputs.

%% RUN IMPORT, EXTRACTION, AND PARAMETER SCRIPTS
% dttMapImport;
dttMapImportDD;
    dttExtractBedLevels;
        dttParameters;
%     dttExtractVelocities;
%     dttExtractWaveDirection;
%     dttExtractSigWaveHeights;
%     dttExtractWaterLevels;
    dttExtractVelocities;
    dttExtractSuspendedFlux;
    dttExtractBedloadFlux;


%% DETERMINE WATER DEPTHS
% dttWaterDepth = dttBedLevel + dttWaterLevel;

%% DETERMINE runID FROM IMPORT FILEPATH
if isequal(filePath(end-3:end-1), 'ext')
    runID = filePath(end-11:end-1);
elseif isequal(filePath(end-6:end-1), 'varwav')
    runID = filePath(end-14:end-1);
else
    runID = filePath(end-8:end-1);
end

%% IMPORT METRICS
% load(['../MATLAB datastore/' runID '_metrics_HPC.mat']);

%% PLOTS PREAMBLE
% close all;
% ES2010_colormap;
dttColorMap = cmocean('-tempo');
dttColorMap2 = cmocean('delta');
dttColorMap3 = cmocean('haline');
xAxis = [0.0125 19.7375];
yAxis = [0.0125 8.9875];
xAxisExt = [-9.9875 29.7375];
yAxisExt = [0.0125 9.9875];

%% PLOT BATHYMETRY
dttTestPlot = figure(501);
dttTestPlot.Position = [100 100 1920 720];
clf reset
a1 = axes;
% imagesc(xAxis, yAxis, permute(-dttBedLevel(end, :, :), [2 3 1]), 2.0*[-570/71 10]); % for use with ES2010 colormap
imagesc(xAxis, yAxis, permute(-dttBedLevel(end, :, :), [2 3 1]), [-20 5]);
% imagesc(xAxis, yAxis, permute(-dttBedLevel(end, :, :), [2 3 1]), [-3 3]);
set(a1, 'ydir', 'normal', 'FontSize', 12)
colormap(a1, dttColorMap)
% colormap(a1, ES2010)
axis equal;
ylim([0 9])
xlim([0 19.750])
% title(['W0.4T6.0']);% mf', num2str(mf)], 'cos^{500} and "bin" spectral shape');
cb1 = colorbar;
cb1.Label.String = 'Bed elevation [m]';
xlabel('{\it x}-distance [km]');
ylabel('{\it y}-distance [km]');

%% EXPORT BATHY PLOT (UNCOMMENT TO EXPORT)
exportgraphics(dttTestPlot, ['../MATLAB export/Final/dtt' runID '_bathymetry_72yr.png'], 'Resolution', 150);

%% PLOT INITIAL BATHYMETRY (INCL. WAVE DOMAIN)
% % reproduce initial bathymetry including WAVE domain (used in DTT manuscript)
% dttBedLevelBasinIniExtended = zeros(400, 1590);
% dttBedLevelBasinIniExtended(1:360, 401: 1190) = permute(dttBedLevel(1,:,:), [2 3 1]);
% for mm = 1:360
%     dttBedLevelBasinIniExtended(mm, 1:400) = dttBedLevel(1,mm,1);
%     dttBedLevelBasinIniExtended(mm, 1191:1590) = dttBedLevel(1,mm,790);
% end
% for nn = 401:1190
%     dttBedLevelBasinIniExtended(361:400, nn) = dttBedLevel(1,360,nn-400);
% end
% dttBedLevelBasinIniExtended(361:400, 1:400) = dttBedLevel(1,360,1);
% dttBedLevelBasinIniExtended(361:400, 1191:1590) = dttBedLevel(1,360,790);
% 
% % plot
% dttBathyIniFullPlot = figure(5015);
% dttBathyIniFullPlot.Position = [100 100 1920 720];
% clf
% a15 = axes;
% % imagesc(xAxis, yAxis, permute(-dttBedLevel(end, :, :), [2 3 1]), 2.0*[-570/71 10]); % for use with ES2010 colormap
% imagesc(xAxisExt , yAxisExt, -dttBedLevelBasinIniExtended(:, :), [-20 5]);
% set(a15, 'ydir', 'normal', 'FontSize', 20)
% colormap(a15, dttColorMap)
% % colormap(a1, ES2010)
% axis equal;
% hold on
% rectangle('position', [0 0 19.75 9], 'linestyle', '--', 'linewidth', 1.5) % FLOW basin domain boundary box
% plot([9.875 9.875], [0 10], 'r-.', 'linewidth', 1.5) % transect line
% text(0.5, 8.5, 'FLOW basin domain', 'fontsize', 20, 'color', 'white')
% text(-9.5, 9.5, 'WAVE domain', 'fontsize', 20, 'color', 'white')
% text(8.8, 0.5, 'Y_1', 'fontsize', 20, 'color', 'red') % transect end 1
% text(8.8, 9.5, 'Y_2', 'fontsize', 20, 'color', 'red') % transect end 2
% ylim([0 10])
% xlim([-10 29.750])
% cb1 = colorbar;
% cb1.Label.String = 'Bed elevation [m]';
% xlabel('{\it x} [km]');
% ylabel('{\it y} [km]');

%% EXPORT INITIAL BATHY PLOT
% exportgraphics(dttBathyIniFullPlot, ['../MATLAB export/Final/dtt_initial_bathymetry_extended_v2.png'], 'Resolution', 150);

%% PLOT WL
% dttTestPlot2 = figure(502);
% dttTestPlot2.Position = [120 80 1920 720];
% a2 = axes;
% imagesc(xAxis, yAxis, permute(dttWaterLevel(end, :, :), [2 3 1]), [-1 1]);
% set(a2, 'ydir', 'normal', 'FontSize', 16)
% colormap(a2, bone)
% ylim([0 9])
% xlim([0 19.750])
% cb1 = colorbar;
% cb1.Label.String = 'Free surface elevation [m]';
% xlabel('{\it x}-distance [km]');
% ylabel('{\it y}-distance [km]');

%% EXPORT WL PLOT
% exportgraphics etc

%% PLOT SIG WAVE HEIGHT
% dttTestPlot3 = figure(503);
% dttTestPlot3.Position = [140 60 1920 800];
% a3 = axes;
% imagesc(xAxis, yAxis, permute(dttSigWaveHeight(end, :, :), [2 3 1]), [0 2.4]);
% set(a3, 'ydir', 'normal', 'FontSize', 12)
% colormap(a3, turbo)
% ylim([0 9])
% xlim([0 19.750])
% title(['W2T0'], 'cos^{500} wave spreading, stationary mode');
% cb1 = colorbar;
% cb1.Label.String = 'Sig. wave height [m]';
% xlabel('{\it x}-distance [km]');
% ylabel('{\it y}-distance [km]');

%% EXPORT SWH PLOT (UNCOMMENT TO EXPORT)
% exportgraphics(dttTestPlot3, ['../MATLAB export/WAVE testing 2/dtt_SoulsbyVR_W2T0_cos500stationary_sigWaveHeight_1hr.png'], 'Resolution', 150);

%% PLOT DEPTH-AVERAGED VELOCITY
% dttTestPlot4 = figure(504);
% dttTestPlot4.Position = [140 60 1920 800];
% a4 = axes;
% imagesc(xAxis, yAxis, permute(sqrt(dttVelU(end, :, :).^2 + dttVelV(end, :, :).^2), [2 3 1]), [0 1.2]);
% set(a4, 'ydir', 'normal', 'FontSize', 12)
% colormap(a4, turbo)
% ylim([0 9])
% xlim([0 19.750])
% title(['W2T0'], 'cos^{500} wave spreading, stationary mode');
% cb1 = colorbar;
% cb1.Label.String = 'D.A. Vel. magnitude [m s^{-1}]';
% xlabel('{\it x}-distance [km]');
% ylabel('{\it y}-distance [km]');

%% EXPORT DA VELOCITY PLOT
% exportgraphics(dttTestPlot4, ['../MATLAB export/WAVE testing 2/dtt_SoulsbyVR_W2T0_cos500stationary_DAVel_1hr.png'], 'Resolution', 150);

%% PLOT BATHYMETRY W/ SEDIMENT TRANSPORT VECTORS
dttTestPlot5 = figure(505);
dttTestPlot5.Position = [100 100 1920 720];
clf reset
a50 = axes;
imagesc(xAxis, yAxis, -permute(dttBedLevel(end, :, :), [2 3 1]), [-20 5]); % Bathy other
set(a50, 'YDir', 'normal', 'FontSize', 12);
set(gcf,'color','w');
% c = colorbar;
% c.Label.String = 'Bed elevation [m]';
colormap(a50, dttColorMap);
axis equal
xlabel('{\it x}-distance [km]');
ylabel('{\it y}-distance [km]');
xlim([0 19.75])
ylim([0 9])
hold on;

a51 = axes;
quiver([0.0125:0.05:19.7375], [0.0125:0.05:8.9875], ...
    permute(dttSuspendedFluxU(end, 1:2:end, 1:2:end, 1) + dttSuspendedFluxU(end, 1:2:end, 1:2:end, 2), [2 3 4 1])*1, ...
    permute(dttSuspendedFluxV(end, 1:2:end, 1:2:end, 1) + dttSuspendedFluxV(end, 1:2:end, 1:2:end, 2), [2 3 4 1])*1, 'k')
set(a51, 'ydir', 'normal','color','none','visible','off', 'FontSize', 12);
axis equal
ylim([0 9])
xlim([0 19.75])

a52 = axes;
quiver([0.0375:0.05:19.7125], [0.0375:0.05:8.9625], ...
    permute(dttBedloadFluxU(end, 2:2:end-1, 2:2:end-1, 1) + dttBedloadFluxU(end, 2:2:end-1, 2:2:end-1, 2), [2 3 4 1])*1, ...
    permute(dttBedloadFluxV(end, 2:2:end-1, 2:2:end-1, 1) + dttBedloadFluxV(end, 2:2:end-1, 2:2:end-1, 2), [2 3 4 1])*1, 'r')
set(a52, 'ydir', 'normal','color','none','visible','off', 'FontSize', 12);
axis equal
ylim([0 9])
xlim([0 19.75])

%% EXPORT BATHYMETRY W/ SEDIMENT TRANSPORT VECTORS PLOT
exportgraphics(dttTestPlot5, ['../MATLAB export/Final/bathyWithSedimentFlux/dtt' runID '_bathymetryWithSedimentTransportVectors_full_72yr_1500dpi.png'], 'Resolution', 1500);

%% PLOT BATHYMETRY W/ CURRENT VECTORS
dttTestPlot6 = figure(506);
dttTestPlot6.Position = [100 100 1920 720];
clf reset
a60 = axes;
imagesc(xAxis, yAxis, -permute(dttBedLevel(end, :, :), [2 3 1]), [-20 5]); % Bathy other
set(a60, 'YDir', 'normal', 'FontSize', 12);
set(gcf,'color','w');
% c = colorbar;
% c.Label.String = 'Bed elevation [m]';
colormap(a60, dttColorMap);
axis equal
xlabel('{\it x}-distance [km]');
ylabel('{\it y}-distance [km]');
xlim([0 19.75])
ylim([0 9])
hold on;

a61 = axes;
quiver([0.0125:0.05:19.7375], [0.0125:0.05:8.9875], ...
    permute(dttVelUCell(end, 1:2:end, 1:2:end, 1), [2 3 1])*1, ...
    permute(dttVelVCell(end, 1:2:end, 1:2:end, 1), [2 3 1])*1, 'k')
set(a61, 'ydir', 'normal', 'color', 'none', 'visible', 'off', 'FontSize', 12);
axis equal
ylim([0 9])
xlim([0 19.75])

%% EXPORT BATHYMETRY W/ CURRENT VECTORS PLOT
exportgraphics(dttTestPlot6, ['../MATLAB export/Final/bathyWithCurrentVectors/dtt' runID '_bathymetryWithEulerianCurrentVectors_72yr_1500dpi.png'], 'Resolution', 1500);

%% PLOTS FOR MANUSCRIPT: WET FRACTION AND UPPER DELTA PLAIN FRACTION
% % PLOT 7 PREAMBLE (currently doesn't work - see code in dttQuasiEquilibriumEstablishmentWolinsky2010.m for working method)
% % dttDeltaPlain = zeros(size(dttLowTideFrontLogical));
% % dttUpperPlain = zeros(size(dttLowTideFrontLogical));
% % dttLowTideFrontLogical = logical(dttLowTideFrontLogical);
% % dttHighTideFrontLogical = logical(dttHighTideFrontLogical);
% % for tt = 1:144
% %     dttDeltaPlain(tt,:,:) = bwareafilt(permute(dttLowTideFrontLogical(tt,:,:), [2 3 1]), 1);
% %     dttUpperPlain(tt,:,:) = bwareafilt(permute(dttHighTideFrontLogical(tt,:,:), [2 3 1]), 1);
% % end
% 
% dttPlot7 = figure(507);
% dttPlot7.Position = [100 100 960 480];
% clf;
% % dttPlot7Tiles = tiledlayout(1,2);
% 
% % a7 = nexttile('Position', [0.1 0.1 0.45 0.9]);
% a7 = axes('Position', [0.1 0.1 0.4 0.9]);
% imagesc(xAxis, yAxis, permute(dttWaterDepth(end-3,:,:), [2 3 1]), [0.1099 0.1101])
% set(a7, 'YDir', 'Normal', 'FontSize', 12)
% colormap(a7, flipud(dttColorMap3))
% axis equal
% xlim([6 13.750])
% ylim([0.5 6])
% xlabel('{\it x} [km]');
% ylabel('{\it y} [km]');
% hold on;
% 
% a71 = axes('Position', [0.1 0.1 0.4 0.9]);
% imagesc(xAxis, yAxis, [zeros(3, 790); permute(dttLowTideFrontLogical(end, 4:end, :), [2 3 1])], 'AlphaData', [zeros(3, 790); permute(dttLowTideFrontLogical(end, 4:end, :), [2 3 1])]);
% colormap(a71, flipud(hsv))
% set(a71, 'YDir', 'Normal', 'color', 'none', 'visible', 'off', 'Fontsize', 12)
% axis equal
% xlim([6 13.750])
% ylim([0.5 6])
% 
% % a715 = axes('Position', [0.525 0.1 0.4 0.9]);
% % imagesc(xAxis, yAxis, permute(dttDeltaPlain(end,:,:), [2 3 1]), 'AlphaData', 0.1*permute(dttDeltaPlain(end,:,:), [2 3 1]));
% 
% a72 = axes('Position', [0.525 0.1 0.4 0.9]);
% imagesc(xAxis, yAxis, [zeros(3, 790); permute(dttHighTideFrontLogical(end-1, 4:end, :), [2 3 1])], 'AlphaData', [zeros(3, 790); permute(dttHighTideFrontLogical(end-1, 4:end, :), [2 3 1])]);
% colormap(a72, flipud(winter))
% set(a72, 'YDir', 'Normal', 'Fontsize', 12)
% axis equal
% xlabel('{\it x} [km]');
% xlim([6 13.750])
% ylim([0.5 6])
% yticklabels({})
% 
% a73 = axes('Position', [0.525 0.1 0.4 0.9]);
% imagesc(xAxis, yAxis, [zeros(3, 790); permute(dttLowTideFrontLogical(end, 4:end, :), [2 3 1])], 'AlphaData', [zeros(3, 790); permute(dttLowTideFrontLogical(end, 4:end, :), [2 3 1])]);
% colormap(a73, flipud(hsv))
% set(a73, 'YDir', 'Normal', 'color', 'none', 'visible', 'off', 'Fontsize', 12)
% axis equal
% xlim([6 13.750])
% ylim([0.5 6])
% yticklabels({})
% 
% hold off;

%% EXPORT WET AND UPPER DELTA PLAIN FRACTION PLOT
% exportgraphics(dttPlot7, ['../MATLAB export/Final/wetFractionAndUpperDeltaPlainFractionExample_v0.1.png'], 'Resolution', 150);

%% SCRIPT FINISH ALARM
% load gong
% sound(y, Fs)