% Date:     17/07/2023
% Author:   ERS

% This script plots various time series including flow vectors, sediment
% flux vectors, and wave height contours overlaid on bathymetry. These are
% used to illustrate various morphological processes occurring in DTT
% simulations.

%% RUN IMPORT AND EXTRACTION SCRIPTS
dttMapImportDD;
    dttExtractBedLevels;
        dttParameters;
    dttExtractVelocities;
    dttExtractSuspendedFlux;
    dttExtractBedloadFlux;
    dttExtractSigWaveHeights;
    dttExtractWaveDirection;

%% DETERMINE runID FROM IMPORT FILEPATH
if isequal(filePath(end-3:end-1), 'ext')
    runID = filePath(end-11:end-1);
elseif isequal(filePath(end-6:end-1), 'varwav')
    runID = filePath(end-14:end-1);
else
    runID = filePath(end-8:end-1);
end

%% PLOTS PREAMBLE
% close all;
dttColorMap = cmocean('-tempo');
% dttColorMap = cmocean('phase');
xAxis = [0.0125:0.025:19.7375];
yAxis = [0.0125:0.025:8.9875];

%% PLOT - ESTUARINE INFILLING TIME-SERIES FOR W1.6T0.0
dttEstuarineInfillingPlot = figure(1101);
dttEstuarineInfillingPlot.Position = [0 0 1640 1080];
clf reset
til = tiledlayout(4, 5, 'TileSpacing', 'Tight', 'Padding', 'Compact');
xlabel(til, {'{\itx} [km]'}, 'FontSize', 24)
ylabel(til, '{\ity} [km]', 'FontSize', 24)
t = [377 : 8 : 577];
xRange = [9.75 10.5];
yRange = [0.75 2.75];

nexttile
imagesc(xAxis, yAxis, permute(-dttBedLevel(t(1), :, :), [2 3 1]), [-5 0]);
colormap(gca, dttColorMap)
set(gca, 'yDir', 'Normal', 'FontSize', 16)
axis equal
hold on
rectangle('Position', [xRange(1), yRange(1), xRange(end)-xRange(1), yRange(end)-yRange(1)], 'EdgeColor', 'r');
text(7.25, 3.5, ['\itt \rm = ' num2str((t(1) - 1) *3.125 *mf / (24 * 365), '%.2f') 'yr'], 'FontSize', 24, 'Color', 'white')
xlim([7 12.75])
xticklabels([]);
xticks([]);
ylim([0 4])
yticklabels([]);
yticks([]);

cb = colorbar;
cb.Layout.Tile = 'east';
cb.Label.String = 'Bed elevation [m]';
cb.FontSize = 24;

nexttile
imagesc(xAxis, yAxis, permute(-dttBedLevel(t(2), :, :), [2 3 1]), [-5 0]);
colormap(gca, dttColorMap)
set(gca, 'yDir', 'Normal', 'FontSize', 16)
axis equal
hold on
rectangle('Position', [xRange(1), yRange(1), xRange(end)-xRange(1), yRange(end)-yRange(1)], 'EdgeColor', 'r');
text(7.25, 3.5, ['\itt \rm = ' num2str((t(2) - 1) *3.125 *mf / (24 * 365), '%.2f') 'yr'], 'FontSize', 24, 'Color', 'white')
xlim([7 12.75])
xticklabels([]);
xticks([]);
ylim([0 4])
yticklabels([]);
yticks([]);

nexttile
imagesc(xAxis, yAxis, permute(-dttBedLevel(t(3), :, :), [2 3 1]), [-5 0]);
colormap(gca, dttColorMap)
set(gca, 'yDir', 'Normal', 'FontSize', 16)
axis equal
hold on
rectangle('Position', [xRange(1), yRange(1), xRange(end)-xRange(1), yRange(end)-yRange(1)], 'EdgeColor', 'r');
text(7.25, 3.5, ['\itt \rm = ' num2str((t(3) - 1) *3.125 *mf / (24 * 365), '%.2f') 'yr'], 'FontSize', 24, 'Color', 'white')
xlim([7 12.75])
xticklabels([]);
xticks([]);
ylim([0 4])
yticklabels([]);
yticks([]);

nexttile
imagesc(xAxis, yAxis, permute(-dttBedLevel(t(4), :, :), [2 3 1]), [-5 0]);
colormap(gca, dttColorMap)
set(gca, 'yDir', 'Normal', 'FontSize', 16)
axis equal
hold on
rectangle('Position', [xRange(1), yRange(1), xRange(end)-xRange(1), yRange(end)-yRange(1)], 'EdgeColor', 'r');
text(7.25, 3.5, ['\itt \rm = ' num2str((t(4) - 1) *3.125 *mf / (24 * 365), '%.2f') 'yr'], 'FontSize', 24, 'Color', 'white')
xlim([7 12.75])
xticklabels([]);
xticks([]);
ylim([0 4])
yticklabels([]);
yticks([]);

nexttile
imagesc(xAxis, yAxis, permute(-dttBedLevel(t(5), :, :), [2 3 1]), [-5 0]);
colormap(gca, dttColorMap)
set(gca, 'yDir', 'Normal', 'FontSize', 16)
axis equal
hold on
rectangle('Position', [xRange(1), yRange(1), xRange(end)-xRange(1), yRange(end)-yRange(1)], 'EdgeColor', 'r');
text(7.25, 3.5, ['\itt \rm = ' num2str((t(5) - 1) *3.125 *mf / (24 * 365), '%.2f') 'yr'], 'FontSize', 24, 'Color', 'white')
xlim([7 12.75])
xticklabels([]);
xticks([]);
ylim([0 4])
yticklabels([]);
yticks([]);

nexttile(6, [3 1])
imagesc(xAxis, yAxis, permute(-dttBedLevel(t(1), :, :), [2 3 1]), [-5 0]);
set(gca, 'yDir', 'Normal', 'FontSize', 16)
colormap(gca, dttColorMap)
axis equal
hold on
quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
    permute(dttVelUCell(t(1), 1:2:end, 1:2:end), [2 3 1]), ...
    permute(dttVelVCell(t(1), 1:2:end, 1:2:end), [2 3 1]), 'b')
quiver([0.0375:0.05:19.7375], [0.0375:0.05:8.9875], ...
    permute(dttSuspendedFluxU(t(1), 2:2:end, 2:2:end, 1) + dttBedloadFluxU(t(1), 2:2:end, 2:2:end, 1), [2 3 1])*1000, ...
    permute(dttSuspendedFluxV(t(1), 2:2:end, 2:2:end, 1) + dttBedloadFluxV(t(1), 2:2:end, 2:2:end, 1), [2 3 1])*1000, 0, 'r')
contour(xAxis, yAxis, permute(dttSigWaveHeight(t(1), :, :), [2 3 1]), [0:0.1:1.6], 'ShowText', 'On', 'Color', 'Black');
xlim(xRange)
xticks([xRange(1):0.25:xRange(end)])
xtickangle(60)
xtickformat('%.2f')
ylim(yRange)
ytickformat('%.1f')
% text(xRange(1)+0.05, yRange(end)-0.05, ['\itt \rm = ' num2str((t(1) - 1) *3.125 *mf / (24 * 365), '%.2f') 'yr'], 'FontSize', 24, 'Color', 'white')
% yticklabels([]);

nexttile(7, [3 1])
% axesBathy = axes;
% contour(xAxis, yAxis, permute(-dttBedLevel(t(2), :, :), [2 3 1]), [-5:0.5:0]);
imagesc(xAxis, yAxis, permute(-dttBedLevel(t(2), :, :), [2 3 1]), [-5 0]);
set(gca, 'yDir', 'Normal', 'FontSize', 16)
colormap(gca, dttColorMap)
axis equal
hold on
quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
    permute(dttVelUCell(t(2), 1:2:end, 1:2:end), [2 3 1]), ...
    permute(dttVelVCell(t(2), 1:2:end, 1:2:end), [2 3 1]), 'b')
quiver([0.0375:0.05:19.7375], [0.0375:0.05:8.9875], ...
    permute(dttSuspendedFluxU(t(2), 2:2:end, 2:2:end, 1) + dttBedloadFluxU(t(2), 2:2:end, 2:2:end, 1), [2 3 1])*1000, ...
    permute(dttSuspendedFluxV(t(2), 2:2:end, 2:2:end, 1) + dttBedloadFluxV(t(2), 2:2:end, 2:2:end, 1), [2 3 1])*1000, 0, 'r')
contour(xAxis, yAxis, permute(dttSigWaveHeight(t(2), :, :), [2 3 1]), [0:0.1:1.6], 'ShowText', 'On', 'Color', 'Black');
xlim(xRange)
xticks([xRange(1):0.25:xRange(end)])
xtickangle(60)
xtickformat('%.2f')
ylim(yRange)
ytickformat('%.1f')
% text(xRange(1)+0.05, yRange(end)-0.05, ['\itt \rm = ' num2str((t(2) - 1) *3.125 *mf / (24 * 365), '%.2f') 'yr'], 'FontSize', 24, 'Color', 'white')
yticklabels([]);

nexttile(8, [3 1])
% axesBathy = axes;
% contour(xAxis, yAxis, permute(-dttBedLevel(t(3), :, :), [2 3 1]), [-5:0.5:0]);
imagesc(xAxis, yAxis, permute(-dttBedLevel(t(3), :, :), [2 3 1]), [-5 0]);
set(gca, 'yDir', 'Normal', 'FontSize', 16)
colormap(gca, dttColorMap)
axis equal
hold on
quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
    permute(dttVelUCell(t(3), 1:2:end, 1:2:end), [2 3 1]), ...
    permute(dttVelVCell(t(3), 1:2:end, 1:2:end), [2 3 1]), 'b')
quiver([0.0375:0.05:19.7375], [0.0375:0.05:8.9875], ...
    permute(dttSuspendedFluxU(t(3), 2:2:end, 2:2:end, 1) + dttBedloadFluxU(t(3), 2:2:end, 2:2:end, 1), [2 3 1])*1000, ...
    permute(dttSuspendedFluxV(t(3), 2:2:end, 2:2:end, 1) + dttBedloadFluxV(t(3), 2:2:end, 2:2:end, 1), [2 3 1])*1000, 0, 'r')
contour(xAxis, yAxis, permute(dttSigWaveHeight(t(3), :, :), [2 3 1]), [0:0.1:1.6], 'ShowText', 'On', 'Color', 'Black');
xlim(xRange)
xticks([xRange(1):0.25:xRange(end)])
xtickangle(60)
xtickformat('%.2f')
ylim(yRange)
ytickformat('%.1f')
% text(xRange(1)+0.05, yRange(end)-0.05, ['\itt \rm = ' num2str((t(3) - 1) *3.125 *mf / (24 * 365), '%.2f') 'yr'], 'FontSize', 24, 'Color', 'white')
yticklabels([]);

nexttile(9, [3 1])
% axesBathy = axes;
% contour(xAxis, yAxis, permute(-dttBedLevel(t(4), :, :), [2 3 1]), [-5:0.5:0]);
imagesc(xAxis, yAxis, permute(-dttBedLevel(t(4), :, :), [2 3 1]), [-5 0]);
set(gca, 'yDir', 'Normal', 'FontSize', 16)
colormap(gca, dttColorMap)
axis equal
hold on
quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
    permute(dttVelUCell(t(4), 1:2:end, 1:2:end), [2 3 1]), ...
    permute(dttVelVCell(t(4), 1:2:end, 1:2:end), [2 3 1]), 'b')
quiver([0.0375:0.05:19.7375], [0.0375:0.05:8.9875], ...
    permute(dttSuspendedFluxU(t(4), 2:2:end, 2:2:end, 1) + dttBedloadFluxU(t(4), 2:2:end, 2:2:end, 1), [2 3 1])*1000, ...
    permute(dttSuspendedFluxV(t(4), 2:2:end, 2:2:end, 1) + dttBedloadFluxV(t(4), 2:2:end, 2:2:end, 1), [2 3 1])*1000, 0, 'r')
contour(xAxis, yAxis, permute(dttSigWaveHeight(t(4), :, :), [2 3 1]), [0:0.1:1.6], 'ShowText', 'On', 'Color', 'Black');
xlim(xRange)
xticks([xRange(1):0.25:xRange(end)])
xtickangle(60)
xtickformat('%.2f')
ylim(yRange)
ytickformat('%.1f')
% text(xRange(1)+0.05, yRange(end)-0.05, ['\itt \rm = ' num2str((t(4) - 1) *3.125 *mf / (24 * 365), '%.2f') 'yr'], 'FontSize', 24, 'Color', 'white')
yticklabels([]);

nexttile(10, [3 1])
% axesBathy = axes;
% contour(xAxis, yAxis, permute(-dttBedLevel(t(5), :, :), [2 3 1]), [-5:0.5:0]);
imagesc(xAxis, yAxis, permute(-dttBedLevel(t(5), :, :), [2 3 1]), [-5 0]);
set(gca, 'yDir', 'Normal', 'FontSize', 16)
colormap(gca, dttColorMap)
axis equal
hold on
quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
    permute(dttVelUCell(t(5), 1:2:end, 1:2:end), [2 3 1]), ...
    permute(dttVelVCell(t(5), 1:2:end, 1:2:end), [2 3 1]), 'b')
quiver([0.0375:0.05:19.7375], [0.0375:0.05:8.9875], ...
    permute(dttSuspendedFluxU(t(5), 2:2:end, 2:2:end, 1) + dttBedloadFluxU(t(5), 2:2:end, 2:2:end, 1), [2 3 1])*1000, ...
    permute(dttSuspendedFluxV(t(5), 2:2:end, 2:2:end, 1) + dttBedloadFluxV(t(5), 2:2:end, 2:2:end, 1), [2 3 1])*1000, 0, 'r')
contour(xAxis, yAxis, permute(dttSigWaveHeight(t(5), :, :), [2 3 1]), [0:0.1:1.6], 'ShowText', 'On', 'Color', 'Black');
xlim(xRange)
xticks([xRange(1):0.25:xRange(end)])
xtickangle(60)
xtickformat('%.2f')
ylim(yRange)
ytickformat('%.1f')
% text(xRange(1)+0.05, yRange(end)-0.05, ['\itt \rm = ' num2str((t(5) - 1) *3.125 *mf / (24 * 365), '%.2f') 'yr'], 'FontSize', 24, 'Color', 'white')
yticklabels([]);

%% PLOT - ESTUARINE INFILLING TIME-SERIES FOR W1.6T0.0 (VERSION 2 - UNFINISHED)
% dttEstuarineInfillingPlot = figure(11011);
% dttEstuarineInfillingPlot.Position = [0 0 1080 1080];
% clf reset
% til = tiledlayout(3, 3, 'TileSpacing', 'Tight');
% xlabel(til, {'{\itx} [km]'}, 'FontSize', 24)
% ylabel(til, '{\ity} [km]', 'FontSize', 24)
% t = [384 : 8 : 577];
% xRange = [7.75 12.00];
% yRange = [0.0 3.0];
% 
% nexttile
% % axesBathy = axes;
% % contour(xAxis, yAxis, permute(-dttBedLevel(t(1), :, :), [2 3 1]), [-5:0.5:0]);
% imagesc(xAxis, yAxis, permute(-dttBedLevel(t(1), :, :), [2 3 1]), [-5 0]);
% colormap(gca, dttColorMap)
% set(gca, 'yDir', 'Normal', 'FontSize', 16)
% cb = colorbar;
% cb.Layout.Tile = 'east';
% cb.Label.String = 'Bed elevation [m]';
% cb.FontSize = 24;
% axis equal
% hold on
% % contour(xAxis, yAxis, permute(dttSigWaveHeight(t(1), :, :), [2 3 1]), [0:0.1:1.6], 'ShowText', 'On', 'Color', 'Black');
% % quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
% %     permute(dttSigWaveHeight(t(1), 1:2:end, 1:2:end), [2 3 1]) .* cosd(permute(dttMeanWaveDirection(t(1), 1:2:end, 1:2:end), [2 3 1])), ...
% %     permute(dttSigWaveHeight(t(1), 1:2:end, 1:2:end), [2 3 1]) .* sind(permute(dttMeanWaveDirection(t(1), 1:2:end, 1:2:end), [2 3 1])), 'b')
% % axesVel = axes;
% % quiver([0.0125:0.025:19.7375], [0.0125:0.025:8.9875], ...
% %     permute(dttVelUCell(t(1), :, :), [2 3 1]), ...
% %     permute(dttVelVCell(t(1), :, :), [2 3 1]), 'k')
% quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
%     permute(dttVelUCell(t(1), 1:2:end, 1:2:end), [2 3 1]), ...
%     permute(dttVelVCell(t(1), 1:2:end, 1:2:end), [2 3 1]), 'k')
% % quiver([0.0375:0.05:19.7375], [0.0375:0.05:8.9875], ...
% %     permute(dttSuspendedFluxU(t(1), 2:2:end, 2:2:end, 1), [2 3 1])*1000, ...
% %     permute(dttSuspendedFluxV(t(1), 2:2:end, 2:2:end, 1), [2 3 1])*1000, 0, 'k')
% % quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
% %     permute(dttBedloadFluxU(t(1), 1:2:end-1, 1:2:end-1, 1), [2 3 1])*10000, ...
% %     permute(dttBedloadFluxV(t(1), 1:2:end-1, 1:2:end-1, 1), [2 3 1])*10000, 0, 'r')
% % set(axesVel, 'yDir', 'Normal')
% xlim(xRange)
% xticks([xRange(1):1.0:xRange(end)])
% % xtickangle(60)
% xtickformat('%.2f')
% ylim(yRange)
% ytickformat('%.1f')
% text(xRange(1)+0.10, yRange(end)-0.25, ['\itt \rm = ' num2str((t(1) - 1) *3.125 *mf / (24 * 365), '%.2f') 'yr'], 'FontSize', 24, 'Color', 'white')
% % legend
% 
% nexttile
% % axesBathy = axes;
% % contour(xAxis, yAxis, permute(-dttBedLevel(t(2), :, :), [2 3 1]), [-5:0.5:0]);
% imagesc(xAxis, yAxis, permute(-dttBedLevel(t(2), :, :), [2 3 1]), [-5 0]);
% set(gca, 'yDir', 'Normal', 'FontSize', 16)
% colormap(gca, dttColorMap)
% axis equal
% hold on
% % contour(xAxis, yAxis, permute(dttSigWaveHeight(t(2), :, :), [2 3 1]), [0:0.1:1.6], 'ShowText', 'On', 'Color', 'Black');
% % quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
% %     permute(dttSigWaveHeight(t(2), 1:2:end, 1:2:end), [2 3 1]) .* cosd(permute(dttMeanWaveDirection(t(2), 1:2:end, 1:2:end), [2 3 1])), ...
% %     permute(dttSigWaveHeight(t(2), 1:2:end, 1:2:end), [2 3 1]) .* sind(permute(dttMeanWaveDirection(t(2), 1:2:end, 1:2:end), [2 3 1])), 'b')
% % axesVel = axes;
% % quiver([0.0125:0.025:19.7375], [0.0125:0.025:8.9875], ...
% %     permute(dttVelUCell(t(2), :, :), [2 3 1]), ...
% %     permute(dttVelVCell(t(2), :, :), [2 3 1]), 'k')
% quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
%     permute(dttVelUCell(t(2), 1:2:end, 1:2:end), [2 3 1]), ...
%     permute(dttVelVCell(t(2), 1:2:end, 1:2:end), [2 3 1]), 'k')
% % quiver([0.0375:0.05:19.7375], [0.0375:0.05:8.9875], ...
% %     permute(dttSuspendedFluxU(t(2), 2:2:end, 2:2:end, 1), [2 3 1])*1000, ...
% %     permute(dttSuspendedFluxV(t(2), 2:2:end, 2:2:end, 1), [2 3 1])*1000, 0, 'k')
% % quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
% %     permute(dttBedloadFluxU(t(2), 1:2:end-1, 1:2:end-1, 1), [2 3 1])*10000, ...
% %     permute(dttBedloadFluxV(t(2), 1:2:end-1, 1:2:end-1, 1), [2 3 1])*10000, 0, 'r')
% % set(axesVel, 'yDir', 'Normal')
% xlim(xRange)
% xticks([xRange(1):1.0:xRange(end)])
% % xtickangle(60)
% xtickformat('%.2f')
% ylim(yRange)
% yticklabels([]);
% text(xRange(1)+0.10, yRange(end)-0.25, ['\itt \rm = ' num2str((t(2) - 1) *3.125 *mf / (24 * 365), '%.2f') 'yr'], 'FontSize', 24, 'Color', 'white')
% 
% nexttile
% % axesBathy = axes;
% % contour(xAxis, yAxis, permute(-dttBedLevel(t(3), :, :), [2 3 1]), [-5:0.5:0]);
% imagesc(xAxis, yAxis, permute(-dttBedLevel(t(3), :, :), [2 3 1]), [-5 0]);
% set(gca, 'yDir', 'Normal', 'FontSize', 16)
% colormap(gca, dttColorMap)
% axis equal
% hold on
% % contour(xAxis, yAxis, permute(dttSigWaveHeight(t(3), :, :), [2 3 1]), [0:0.1:1.6], 'ShowText', 'On', 'Color', 'Black');
% % quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
% %     permute(dttSigWaveHeight(t(3), 1:2:end, 1:2:end), [2 3 1]) .* cosd(permute(dttMeanWaveDirection(t(3), 1:2:end, 1:2:end), [2 3 1])), ...
% %     permute(dttSigWaveHeight(t(3), 1:2:end, 1:2:end), [2 3 1]) .* sind(permute(dttMeanWaveDirection(t(3), 1:2:end, 1:2:end), [2 3 1])), 'b')
% % axesVel = axes;
% % quiver([0.0125:0.025:19.7375], [0.0125:0.025:8.9875], ...
% %     permute(dttVelUCell(t(3), :, :), [2 3 1]), ...
% %     permute(dttVelVCell(t(3), :, :), [2 3 1]), 'k')
% quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
%     permute(dttVelUCell(t(3), 1:2:end, 1:2:end), [2 3 1]), ...
%     permute(dttVelVCell(t(3), 1:2:end, 1:2:end), [2 3 1]), 'k')
% % quiver([0.0375:0.05:19.7375], [0.0375:0.05:8.9875], ...
% %     permute(dttSuspendedFluxU(t(3), 2:2:end, 2:2:end, 1), [2 3 1])*1000, ...
% %     permute(dttSuspendedFluxV(t(3), 2:2:end, 2:2:end, 1), [2 3 1])*1000, 0, 'k')
% % quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
% %     permute(dttBedloadFluxU(t(3), 1:2:end-1, 1:2:end-1, 1), [2 3 1])*10000, ...
% %     permute(dttBedloadFluxV(t(3), 1:2:end-1, 1:2:end-1, 1), [2 3 1])*10000, 0, 'r')
% % set(axesVel, 'yDir', 'Normal')
% xlim(xRange)
% xticks([xRange(1):1.0:xRange(end)])
% % xtickangle(60)
% xtickformat('%.2f')
% ylim(yRange)
% yticklabels([]);
% text(xRange(1)+0.10, yRange(end)-0.25, ['\itt \rm = ' num2str((t(3) - 1) *3.125 *mf / (24 * 365), '%.2f') 'yr'], 'FontSize', 24, 'Color', 'white')
% 
% nexttile
% % axesBathy = axes;
% % contour(xAxis, yAxis, permute(-dttBedLevel(t(1), :, :), [2 3 1]), [-5:0.5:0]);
% imagesc(xAxis, yAxis, permute(-dttBedLevel(t(1), :, :), [2 3 1]), [-5 0]);
% colormap(gca, dttColorMap)
% set(gca, 'yDir', 'Normal', 'FontSize', 16)
% axis equal
% hold on
% % contour(xAxis, yAxis, permute(dttSigWaveHeight(t(1), :, :), [2 3 1]), [0:0.1:1.6], 'ShowText', 'On', 'Color', 'Black');
% % quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
% %     permute(dttSigWaveHeight(t(1), 1:2:end, 1:2:end), [2 3 1]) .* cosd(permute(dttMeanWaveDirection(t(1), 1:2:end, 1:2:end), [2 3 1])), ...
% %     permute(dttSigWaveHeight(t(1), 1:2:end, 1:2:end), [2 3 1]) .* sind(permute(dttMeanWaveDirection(t(1), 1:2:end, 1:2:end), [2 3 1])), 'b')
% % axesVel = axes;
% % quiver([0.0125:0.025:19.7375], [0.0125:0.025:8.9875], ...
% %     permute(dttVelUCell(t(1), :, :), [2 3 1]), ...
% %     permute(dttVelVCell(t(1), :, :), [2 3 1]), 'k')
% % quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
% %     permute(dttVelUCell(t(1), 1:2:end, 1:2:end), [2 3 1]), ...
% %     permute(dttVelVCell(t(1), 1:2:end, 1:2:end), [2 3 1]), 'k')
% quiver([0.0375:0.05:19.7375], [0.0375:0.05:8.9875], ...
%     permute(dttSuspendedFluxU(t(1), 2:2:end, 2:2:end, 1), [2 3 1])*1000, ...
%     permute(dttSuspendedFluxV(t(1), 2:2:end, 2:2:end, 1), [2 3 1])*1000, 0, 'k')
% quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
%     permute(dttBedloadFluxU(t(1), 1:2:end-1, 1:2:end-1, 1), [2 3 1])*10000, ...
%     permute(dttBedloadFluxV(t(1), 1:2:end-1, 1:2:end-1, 1), [2 3 1])*10000, 0, 'r')
% % set(axesVel, 'yDir', 'Normal')
% xlim(xRange)
% xticks([xRange(1):1.0:xRange(end)])
% % xtickangle(60)
% xtickformat('%.2f')
% ylim(yRange)
% ytickformat('%.1f')
% 
% nexttile
% % axesBathy = axes;
% % contour(xAxis, yAxis, permute(-dttBedLevel(t(2), :, :), [2 3 1]), [-5:0.5:0]);
% imagesc(xAxis, yAxis, permute(-dttBedLevel(t(2), :, :), [2 3 1]), [-5 0]);
% set(gca, 'yDir', 'Normal', 'FontSize', 16)
% colormap(gca, dttColorMap)
% axis equal
% hold on
% % contour(xAxis, yAxis, permute(dttSigWaveHeight(t(2), :, :), [2 3 1]), [0:0.1:1.6], 'ShowText', 'On', 'Color', 'Black');
% % quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
% %     permute(dttSigWaveHeight(t(2), 1:2:end, 1:2:end), [2 3 1]) .* cosd(permute(dttMeanWaveDirection(t(2), 1:2:end, 1:2:end), [2 3 1])), ...
% %     permute(dttSigWaveHeight(t(2), 1:2:end, 1:2:end), [2 3 1]) .* sind(permute(dttMeanWaveDirection(t(2), 1:2:end, 1:2:end), [2 3 1])), 'b')
% % axesVel = axes;
% % quiver([0.0125:0.025:19.7375], [0.0125:0.025:8.9875], ...
% %     permute(dttVelUCell(t(2), :, :), [2 3 1]), ...
% %     permute(dttVelVCell(t(2), :, :), [2 3 1]), 'k')
% % quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
% %     permute(dttVelUCell(t(2), 1:2:end, 1:2:end), [2 3 1]), ...
% %     permute(dttVelVCell(t(2), 1:2:end, 1:2:end), [2 3 1]), 'k')
% quiver([0.0375:0.05:19.7375], [0.0375:0.05:8.9875], ...
%     permute(dttSuspendedFluxU(t(2), 2:2:end, 2:2:end, 1), [2 3 1])*1000, ...
%     permute(dttSuspendedFluxV(t(2), 2:2:end, 2:2:end, 1), [2 3 1])*1000, 0, 'k')
% quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
%     permute(dttBedloadFluxU(t(2), 1:2:end-1, 1:2:end-1, 1), [2 3 1])*10000, ...
%     permute(dttBedloadFluxV(t(2), 1:2:end-1, 1:2:end-1, 1), [2 3 1])*10000, 0, 'r')
% % set(axesVel, 'yDir', 'Normal')
% xlim(xRange)
% xticks([xRange(1):1.0:xRange(end)])
% % xtickangle(60)
% xtickformat('%.2f')
% ylim(yRange)
% yticklabels([]);
% 
% nexttile
% % axesBathy = axes;
% % contour(xAxis, yAxis, permute(-dttBedLevel(t(3), :, :), [2 3 1]), [-5:0.5:0]);
% imagesc(xAxis, yAxis, permute(-dttBedLevel(t(3), :, :), [2 3 1]), [-5 0]);
% set(gca, 'yDir', 'Normal', 'FontSize', 16)
% colormap(gca, dttColorMap)
% axis equal
% hold on
% % contour(xAxis, yAxis, permute(dttSigWaveHeight(t(3), :, :), [2 3 1]), [0:0.1:1.6], 'ShowText', 'On', 'Color', 'Black');
% % quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
% %     permute(dttSigWaveHeight(t(3), 1:2:end, 1:2:end), [2 3 1]) .* cosd(permute(dttMeanWaveDirection(t(3), 1:2:end, 1:2:end), [2 3 1])), ...
% %     permute(dttSigWaveHeight(t(3), 1:2:end, 1:2:end), [2 3 1]) .* sind(permute(dttMeanWaveDirection(t(3), 1:2:end, 1:2:end), [2 3 1])), 'b')
% % axesVel = axes;
% % quiver([0.0125:0.025:19.7375], [0.0125:0.025:8.9875], ...
% %     permute(dttVelUCell(t(3), :, :), [2 3 1]), ...
% %     permute(dttVelVCell(t(3), :, :), [2 3 1]), 'k')
% % quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
% %     permute(dttVelUCell(t(3), 1:2:end, 1:2:end), [2 3 1]), ...
% %     permute(dttVelVCell(t(3), 1:2:end, 1:2:end), [2 3 1]), 'k')
% quiver([0.0375:0.05:19.7375], [0.0375:0.05:8.9875], ...
%     permute(dttSuspendedFluxU(t(3), 2:2:end, 2:2:end, 1), [2 3 1])*1000, ...
%     permute(dttSuspendedFluxV(t(3), 2:2:end, 2:2:end, 1), [2 3 1])*1000, 0, 'k')
% quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
%     permute(dttBedloadFluxU(t(3), 1:2:end-1, 1:2:end-1, 1), [2 3 1])*10000, ...
%     permute(dttBedloadFluxV(t(3), 1:2:end-1, 1:2:end-1, 1), [2 3 1])*10000, 0, 'r')
% % set(axesVel, 'yDir', 'Normal')
% xlim(xRange)
% xticks([xRange(1):1.0:xRange(end)])
% % xtickangle(60)
% xtickformat('%.2f')
% ylim(yRange)
% yticklabels([]);

%% EXPORT PLOT - ESTUARINE INFILLING W1.6T0.0
% exportgraphics(dttEstuarineInfillingPlot, ['../MATLAB export/Final/dttEstuarineInfillingW1.6T0.0_v4.png'], 'Resolution', 95);

%% PLOT - ALONGSHORE BAR TRANSPORT TIME-SERIES FOR W2.0T0.0
dttAlongshoreBarPlot = figure(1102);
dttAlongshoreBarPlot.Position = [0 0 1640 1080];
% dttAlongshoreBarPlot.Position = [0 0 2050 1350]; % home PC version. Larger monitor!
clf reset
til = tiledlayout(4, 5, 'TileSpacing', 'Tight', 'Padding', 'Compact');
xlabel(til, {'{\itx} [km]'}, 'FontSize', 24)
ylabel(til, '{\ity} [km]', 'FontSize', 24)
t = [377 : 2 : 577];
xRange = [11.50 12.25];
yRange = [1.0 3.0];

nexttile
imagesc(xAxis, yAxis, permute(-dttBedLevel(t(1), :, :), [2 3 1]), [-5 0]);
colormap(gca, dttColorMap)
set(gca, 'yDir', 'Normal', 'FontSize', 16)
axis equal
hold on
rectangle('Position', [xRange(1), yRange(1), xRange(end)-xRange(1), yRange(end)-yRange(1)], 'EdgeColor', 'r');
text(7.25, 3.5, ['\itt \rm = ' num2str((t(1) - 1) *3.125 *mf / (24 * 365), '%.2f') 'yr'], 'FontSize', 24, 'Color', 'white')
xlim([7 12.75])
xticklabels([]);
xticks([]);
ylim([0 4])
yticklabels([]);
yticks([]);

cb = colorbar;
cb.Layout.Tile = 'east';
cb.Label.String = 'Bed elevation [m]';
cb.FontSize = 24;

nexttile
imagesc(xAxis, yAxis, permute(-dttBedLevel(t(2), :, :), [2 3 1]), [-5 0]);
colormap(gca, dttColorMap)
set(gca, 'yDir', 'Normal', 'FontSize', 16)
axis equal
hold on
rectangle('Position', [xRange(1), yRange(1), xRange(end)-xRange(1), yRange(end)-yRange(1)], 'EdgeColor', 'r');
text(7.25, 3.5, ['\itt \rm = ' num2str((t(2) - 1) *3.125 *mf / (24 * 365), '%.2f') 'yr'], 'FontSize', 24, 'Color', 'white')
xlim([7 12.75])
xticklabels([]);
xticks([]);
ylim([0 4])
yticklabels([]);
yticks([]);

nexttile
imagesc(xAxis, yAxis, permute(-dttBedLevel(t(3), :, :), [2 3 1]), [-5 0]);
colormap(gca, dttColorMap)
set(gca, 'yDir', 'Normal', 'FontSize', 16)
axis equal
hold on
rectangle('Position', [xRange(1), yRange(1), xRange(end)-xRange(1), yRange(end)-yRange(1)], 'EdgeColor', 'r');
text(7.25, 3.5, ['\itt \rm = ' num2str((t(3) - 1) *3.125 *mf / (24 * 365), '%.2f') 'yr'], 'FontSize', 24, 'Color', 'white')
xlim([7 12.75])
xticklabels([]);
xticks([]);
ylim([0 4])
yticklabels([]);
yticks([]);

nexttile
imagesc(xAxis, yAxis, permute(-dttBedLevel(t(4), :, :), [2 3 1]), [-5 0]);
colormap(gca, dttColorMap)
set(gca, 'yDir', 'Normal', 'FontSize', 16)
axis equal
hold on
rectangle('Position', [xRange(1), yRange(1), xRange(end)-xRange(1), yRange(end)-yRange(1)], 'EdgeColor', 'r');
text(7.25, 3.5, ['\itt \rm = ' num2str((t(4) - 1) *3.125 *mf / (24 * 365), '%.2f') 'yr'], 'FontSize', 24, 'Color', 'white')
xlim([7 12.75])
xticklabels([]);
xticks([]);
ylim([0 4])
yticklabels([]);
yticks([]);

nexttile
imagesc(xAxis, yAxis, permute(-dttBedLevel(t(5), :, :), [2 3 1]), [-5 0]);
colormap(gca, dttColorMap)
set(gca, 'yDir', 'Normal', 'FontSize', 16)
axis equal
hold on
rectangle('Position', [xRange(1), yRange(1), xRange(end)-xRange(1), yRange(end)-yRange(1)], 'EdgeColor', 'r');
text(7.25, 3.5, ['\itt \rm = ' num2str((t(5) - 1) *3.125 *mf / (24 * 365), '%.2f') 'yr'], 'FontSize', 24, 'Color', 'white')
xlim([7 12.75])
xticklabels([]);
xticks([]);
ylim([0 4])
yticklabels([]);
yticks([]);

nexttile(6, [3 1])
imagesc(xAxis, yAxis, permute(-dttBedLevel(t(1), :, :), [2 3 1]), [-5 0]);
set(gca, 'yDir', 'Normal', 'FontSize', 16)
colormap(gca, dttColorMap)
axis equal
hold on
quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
    permute(dttVelUCell(t(1), 1:2:end, 1:2:end), [2 3 1]), ...
    permute(dttVelVCell(t(1), 1:2:end, 1:2:end), [2 3 1]), 'b')
quiver([0.0375:0.05:19.7375], [0.0375:0.05:8.9875], ...
    permute(dttSuspendedFluxU(t(1), 2:2:end, 2:2:end, 1) + dttBedloadFluxU(t(1), 2:2:end, 2:2:end, 1), [2 3 1])*1000, ...
    permute(dttSuspendedFluxV(t(1), 2:2:end, 2:2:end, 1) + dttBedloadFluxV(t(1), 2:2:end, 2:2:end, 1), [2 3 1])*1000, 0, 'r')
contour(xAxis, yAxis, permute(dttSigWaveHeight(t(1), :, :), [2 3 1]), [0:0.1:1.6], 'ShowText', 'On', 'Color', 'Black');
xlim(xRange)
xticks([xRange(1):0.25:xRange(end)])
xtickangle(60)
xtickformat('%.2f')
ylim(yRange)
ytickformat('%.1f')
% text(xRange(1)+0.05, yRange(end)-0.05, ['\itt \rm = ' num2str((t(1) - 1) *3.125 *mf / (24 * 365), '%.2f') 'yr'], 'FontSize', 24, 'Color', 'white')
% yticklabels([]);

nexttile(7, [3 1])
% axesBathy = axes;
% contour(xAxis, yAxis, permute(-dttBedLevel(t(2), :, :), [2 3 1]), [-5:0.5:0]);
imagesc(xAxis, yAxis, permute(-dttBedLevel(t(2), :, :), [2 3 1]), [-5 0]);
set(gca, 'yDir', 'Normal', 'FontSize', 16)
colormap(gca, dttColorMap)
axis equal
hold on
quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
    permute(dttVelUCell(t(2), 1:2:end, 1:2:end), [2 3 1]), ...
    permute(dttVelVCell(t(2), 1:2:end, 1:2:end), [2 3 1]), 'b')
quiver([0.0375:0.05:19.7375], [0.0375:0.05:8.9875], ...
    permute(dttSuspendedFluxU(t(2), 2:2:end, 2:2:end, 1) + dttBedloadFluxU(t(2), 2:2:end, 2:2:end, 1), [2 3 1])*1000, ...
    permute(dttSuspendedFluxV(t(2), 2:2:end, 2:2:end, 1) + dttBedloadFluxV(t(2), 2:2:end, 2:2:end, 1), [2 3 1])*1000, 0, 'r')
contour(xAxis, yAxis, permute(dttSigWaveHeight(t(2), :, :), [2 3 1]), [0:0.1:1.6], 'ShowText', 'On', 'Color', 'Black');
xlim(xRange)
xticks([xRange(1):0.25:xRange(end)])
xtickangle(60)
xtickformat('%.2f')
ylim(yRange)
ytickformat('%.1f')
% text(xRange(1)+0.05, yRange(end)-0.05, ['\itt \rm = ' num2str((t(2) - 1) *3.125 *mf / (24 * 365), '%.2f') 'yr'], 'FontSize', 24, 'Color', 'white')
yticklabels([]);

nexttile(8, [3 1])
% axesBathy = axes;
% contour(xAxis, yAxis, permute(-dttBedLevel(t(3), :, :), [2 3 1]), [-5:0.5:0]);
imagesc(xAxis, yAxis, permute(-dttBedLevel(t(3), :, :), [2 3 1]), [-5 0]);
set(gca, 'yDir', 'Normal', 'FontSize', 16)
colormap(gca, dttColorMap)
axis equal
hold on
quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
    permute(dttVelUCell(t(3), 1:2:end, 1:2:end), [2 3 1]), ...
    permute(dttVelVCell(t(3), 1:2:end, 1:2:end), [2 3 1]), 'b')
quiver([0.0375:0.05:19.7375], [0.0375:0.05:8.9875], ...
    permute(dttSuspendedFluxU(t(3), 2:2:end, 2:2:end, 1) + dttBedloadFluxU(t(3), 2:2:end, 2:2:end, 1), [2 3 1])*1000, ...
    permute(dttSuspendedFluxV(t(3), 2:2:end, 2:2:end, 1) + dttBedloadFluxV(t(3), 2:2:end, 2:2:end, 1), [2 3 1])*1000, 0, 'r')
contour(xAxis, yAxis, permute(dttSigWaveHeight(t(3), :, :), [2 3 1]), [0:0.1:1.6], 'ShowText', 'On', 'Color', 'Black');
xlim(xRange)
xticks([xRange(1):0.25:xRange(end)])
xtickangle(60)
xtickformat('%.2f')
ylim(yRange)
ytickformat('%.1f')
% text(xRange(1)+0.05, yRange(end)-0.05, ['\itt \rm = ' num2str((t(3) - 1) *3.125 *mf / (24 * 365), '%.2f') 'yr'], 'FontSize', 24, 'Color', 'white')
yticklabels([]);

nexttile(9, [3 1])
% axesBathy = axes;
% contour(xAxis, yAxis, permute(-dttBedLevel(t(4), :, :), [2 3 1]), [-5:0.5:0]);
imagesc(xAxis, yAxis, permute(-dttBedLevel(t(4), :, :), [2 3 1]), [-5 0]);
set(gca, 'yDir', 'Normal', 'FontSize', 16)
colormap(gca, dttColorMap)
axis equal
hold on
quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
    permute(dttVelUCell(t(4), 1:2:end, 1:2:end), [2 3 1]), ...
    permute(dttVelVCell(t(4), 1:2:end, 1:2:end), [2 3 1]), 'b')
quiver([0.0375:0.05:19.7375], [0.0375:0.05:8.9875], ...
    permute(dttSuspendedFluxU(t(4), 2:2:end, 2:2:end, 1) + dttBedloadFluxU(t(4), 2:2:end, 2:2:end, 1), [2 3 1])*1000, ...
    permute(dttSuspendedFluxV(t(4), 2:2:end, 2:2:end, 1) + dttBedloadFluxV(t(4), 2:2:end, 2:2:end, 1), [2 3 1])*1000, 0, 'r')
contour(xAxis, yAxis, permute(dttSigWaveHeight(t(4), :, :), [2 3 1]), [0:0.1:1.6], 'ShowText', 'On', 'Color', 'Black');
xlim(xRange)
xticks([xRange(1):0.25:xRange(end)])
xtickangle(60)
xtickformat('%.2f')
ylim(yRange)
ytickformat('%.1f')
% text(xRange(1)+0.05, yRange(end)-0.05, ['\itt \rm = ' num2str((t(4) - 1) *3.125 *mf / (24 * 365), '%.2f') 'yr'], 'FontSize', 24, 'Color', 'white')
yticklabels([]);

nexttile(10, [3 1])
% axesBathy = axes;
% contour(xAxis, yAxis, permute(-dttBedLevel(t(5), :, :), [2 3 1]), [-5:0.5:0]);
imagesc(xAxis, yAxis, permute(-dttBedLevel(t(5), :, :), [2 3 1]), [-5 0]);
set(gca, 'yDir', 'Normal', 'FontSize', 16)
colormap(gca, dttColorMap)
axis equal
hold on
quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
    permute(dttVelUCell(t(5), 1:2:end, 1:2:end), [2 3 1]), ...
    permute(dttVelVCell(t(5), 1:2:end, 1:2:end), [2 3 1]), 'b')
quiver([0.0375:0.05:19.7375], [0.0375:0.05:8.9875], ...
    permute(dttSuspendedFluxU(t(5), 2:2:end, 2:2:end, 1) + dttBedloadFluxU(t(5), 2:2:end, 2:2:end, 1), [2 3 1])*1000, ...
    permute(dttSuspendedFluxV(t(5), 2:2:end, 2:2:end, 1) + dttBedloadFluxV(t(5), 2:2:end, 2:2:end, 1), [2 3 1])*1000, 0, 'r')
contour(xAxis, yAxis, permute(dttSigWaveHeight(t(5), :, :), [2 3 1]), [0:0.1:1.6], 'ShowText', 'On', 'Color', 'Black');
xlim(xRange)
xticks([xRange(1):0.25:xRange(end)])
xtickangle(60)
xtickformat('%.2f')
ylim(yRange)
ytickformat('%.1f')
% text(xRange(1)+0.05, yRange(end)-0.05, ['\itt \rm = ' num2str((t(5) - 1) *3.125 *mf / (24 * 365), '%.2f') 'yr'], 'FontSize', 24, 'Color', 'white')
yticklabels([]);

% dttAlongshoreBarPlot = figure(1102);
% dttAlongshoreBarPlot.Position = [0 0 1920 960];
% clf reset
% til = tiledlayout(1, 6, 'TileSpacing', 'Tight');
% xlabel(til, {'\itx\rm-distance [km]'}, 'FontSize', 24)
% ylabel(til, '\ity\rm-distance [km]', 'FontSize', 24)
% t = [375 : 2 : 577];
% xRange = [11.50 12.25];
% yRange = [1.0 3.0];
% 
% nexttile
% % axesBathy = axes;
% % contour(xAxis, yAxis, permute(-dttBedLevel(t(1), :, :), [2 3 1]), [-5:0.5:0]);
% imagesc(xAxis, yAxis, permute(-dttBedLevel(t(1), :, :), [2 3 1]), [-5 0]);
% colormap(gca, dttColorMap)
% set(gca, 'yDir', 'Normal', 'FontSize', 16)
% cb = colorbar;
% cb.Layout.Tile = 'east';
% cb.Label.String = 'Bed elevation [m]';
% cb.FontSize = 24;
% axis equal
% hold on
% contour(xAxis, yAxis, permute(dttSigWaveHeight(t(1), :, :), [2 3 1]), [0:0.1:1.6], 'ShowText', 'On', 'Color', 'Black');
% quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
%     permute(dttSigWaveHeight(t(1), 1:2:end, 1:2:end), [2 3 1]) .* cosd(permute(dttMeanWaveDirection(t(1), 1:2:end, 1:2:end), [2 3 1])), ...
%     permute(dttSigWaveHeight(t(1), 1:2:end, 1:2:end), [2 3 1]) .* sind(permute(dttMeanWaveDirection(t(1), 1:2:end, 1:2:end), [2 3 1])), 'b')
% % axesVel = axes;
% % quiver([0.0125:0.025:19.7375], [0.0125:0.025:8.9875], ...
% %     permute(dttVelUCell(t(1), :, :), [2 3 1]), ...
% %     permute(dttVelVCell(t(1), :, :), [2 3 1]), 'k')
% % quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
% %     permute(dttVelUCell(t(1), 1:2:end, 1:2:end), [2 3 1]), ...
% %     permute(dttVelVCell(t(1), 1:2:end, 1:2:end), [2 3 1]), 'k')
% % quiver([0.0375:0.05:19.7375], [0.0375:0.05:8.9875], ...
% %     permute(dttSuspendedFluxU(t(1), 2:2:end, 2:2:end, 1), [2 3 4 1])*1000, ...
% %     permute(dttSuspendedFluxV(t(1), 2:2:end, 2:2:end, 1), [2 3 4 1])*1000, 0, 'k')
% % quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
% %     permute(dttBedloadFluxU(t(1), 1:2:end-1, 1:2:end-1, 1), [2 3 4 1])*10000, ...
% %     permute(dttBedloadFluxV(t(1), 1:2:end-1, 1:2:end-1, 1), [2 3 4 1])*10000, 0, 'r')
% % set(axesVel, 'yDir', 'Normal')
% xlim(xRange)
% xticks([11.625:0.125:12.125])
% xtickangle(60)
% xtickformat('%.3f')
% ylim(yRange)
% ytickformat('%.1f')
% text(xRange(1)+0.05, yRange(2)-0.05, ['{\itt} = ' num2str(t(1)*mf*3.125/(24*365), '%2.2f') 'yr'], 'FontSize', 24, 'Color', 'white')
% % legend
% 
% nexttile
% % axesBathy = axes;
% % contour(xAxis, yAxis, permute(-dttBedLevel(t(2), :, :), [2 3 1]), [-5:0.5:0]);
% imagesc(xAxis, yAxis, permute(-dttBedLevel(t(2), :, :), [2 3 1]), [-5 0]);
% set(gca, 'yDir', 'Normal', 'FontSize', 16)
% colormap(gca, dttColorMap)
% axis equal
% hold on
% contour(xAxis, yAxis, permute(dttSigWaveHeight(t(2), :, :), [2 3 1]), [0:0.1:1.6], 'ShowText', 'On', 'Color', 'Black');
% quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
%     permute(dttSigWaveHeight(t(2), 1:2:end, 1:2:end), [2 3 1]) .* cosd(permute(dttMeanWaveDirection(t(2), 1:2:end, 1:2:end), [2 3 1])), ...
%     permute(dttSigWaveHeight(t(2), 1:2:end, 1:2:end), [2 3 1]) .* sind(permute(dttMeanWaveDirection(t(2), 1:2:end, 1:2:end), [2 3 1])), 'b')
% % axesVel = axes;
% % quiver([0.0125:0.025:19.7375], [0.0125:0.025:8.9875], ...
% %     permute(dttVelUCell(t(2), :, :), [2 3 1]), ...
% %     permute(dttVelVCell(t(2), :, :), [2 3 1]), 'k')
% % quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
% %     permute(dttVelUCell(t(2), 1:2:end, 1:2:end), [2 3 1]), ...
% %     permute(dttVelVCell(t(2), 1:2:end, 1:2:end), [2 3 1]), 'k')
% % quiver([0.0375:0.05:19.7375], [0.0375:0.05:8.9875], ...
% %     permute(dttSuspendedFluxU(t(2), 2:2:end, 2:2:end, 1), [2 3 4 1])*1000, ...
% %     permute(dttSuspendedFluxV(t(2), 2:2:end, 2:2:end, 1), [2 3 4 1])*1000, 0, 'k')
% % quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
% %     permute(dttBedloadFluxU(t(2), 1:2:end-1, 1:2:end-1, 1), [2 3 4 1])*10000, ...
% %     permute(dttBedloadFluxV(t(2), 1:2:end-1, 1:2:end-1, 1), [2 3 4 1])*10000, 0, 'r')
% % set(axesVel, 'yDir', 'Normal')
% xlim(xRange)
% xticks([11.625:0.125:12.125])
% xtickangle(60)
% xtickformat('%.3f')
% ylim(yRange)
% ytickformat('%.1f')
% text(xRange(1)+0.05, yRange(2)-0.05, ['{\itt} = ' num2str(t(2)*mf*3.125/(24*365), '%2.2f') 'yr'], 'FontSize', 24, 'Color', 'white')
% yticklabels([]);
% 
% nexttile
% % axesBathy = axes;
% % contour(xAxis, yAxis, permute(-dttBedLevel(t(3), :, :), [2 3 1]), [-5:0.5:0]);
% imagesc(xAxis, yAxis, permute(-dttBedLevel(t(3), :, :), [2 3 1]), [-5 0]);
% set(gca, 'yDir', 'Normal', 'FontSize', 16)
% colormap(gca, dttColorMap)
% axis equal
% hold on
% contour(xAxis, yAxis, permute(dttSigWaveHeight(t(3), :, :), [2 3 1]), [0:0.1:1.6], 'ShowText', 'On', 'Color', 'Black');
% quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
%     permute(dttSigWaveHeight(t(3), 1:2:end, 1:2:end), [2 3 1]) .* cosd(permute(dttMeanWaveDirection(t(3), 1:2:end, 1:2:end), [2 3 1])), ...
%     permute(dttSigWaveHeight(t(3), 1:2:end, 1:2:end), [2 3 1]) .* sind(permute(dttMeanWaveDirection(t(3), 1:2:end, 1:2:end), [2 3 1])), 'b')
% % axesVel = axes;
% % quiver([0.0125:0.025:19.7375], [0.0125:0.025:8.9875], ...
% %     permute(dttVelUCell(t(3), :, :), [2 3 1]), ...
% %     permute(dttVelVCell(t(3), :, :), [2 3 1]), 'k')
% % quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
% %     permute(dttVelUCell(t(3), 1:2:end, 1:2:end), [2 3 1]), ...
% %     permute(dttVelVCell(t(3), 1:2:end, 1:2:end), [2 3 1]), 'k')
% % quiver([0.0375:0.05:19.7375], [0.0375:0.05:8.9875], ...
% %     permute(dttSuspendedFluxU(t(3), 2:2:end, 2:2:end, 1), [2 3 4 1])*1000, ...
% %     permute(dttSuspendedFluxV(t(3), 2:2:end, 2:2:end, 1), [2 3 4 1])*1000, 0, 'k')
% % quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
% %     permute(dttBedloadFluxU(t(3), 1:2:end-1, 1:2:end-1, 1), [2 3 4 1])*10000, ...
% %     permute(dttBedloadFluxV(t(3), 1:2:end-1, 1:2:end-1, 1), [2 3 4 1])*10000, 0, 'r')
% % set(axesVel, 'yDir', 'Normal')
% xlim(xRange)
% xticks([11.625:0.125:12.125])
% xtickangle(60)
% xtickformat('%.3f')
% ylim(yRange)
% ytickformat('%.1f')
% text(xRange(1)+0.05, yRange(2)-0.05, ['{\itt} = ' num2str(t(3)*mf*3.125/(24*365), '%2.2f') 'yr'], 'FontSize', 24, 'Color', 'white')
% yticklabels([]);
% 
% nexttile
% % axesBathy = axes;
% % contour(xAxis, yAxis, permute(-dttBedLevel(t(4), :, :), [2 3 1]), [-5:0.5:0]);
% imagesc(xAxis, yAxis, permute(-dttBedLevel(t(4), :, :), [2 3 1]), [-5 0]);
% set(gca, 'yDir', 'Normal', 'FontSize', 16)
% colormap(gca, dttColorMap)
% axis equal
% hold on
% contour(xAxis, yAxis, permute(dttSigWaveHeight(t(4), :, :), [2 3 1]), [0:0.1:1.6], 'ShowText', 'On', 'Color', 'Black');
% quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
%     permute(dttSigWaveHeight(t(4), 1:2:end, 1:2:end), [2 3 1]) .* cosd(permute(dttMeanWaveDirection(t(4), 1:2:end, 1:2:end), [2 3 1])), ...
%     permute(dttSigWaveHeight(t(4), 1:2:end, 1:2:end), [2 3 1]) .* sind(permute(dttMeanWaveDirection(t(4), 1:2:end, 1:2:end), [2 3 1])), 'b')
% % axesVel = axes;
% % quiver([0.0125:0.025:19.7375], [0.0125:0.025:8.9875], ...
% %     permute(dttVelUCell(t(4), :, :), [2 3 1]), ...
% %     permute(dttVelVCell(t(4), :, :), [2 3 1]), 'k')
% % quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
% %     permute(dttVelUCell(t(4), 1:2:end, 1:2:end), [2 3 1]), ...
% %     permute(dttVelVCell(t(4), 1:2:end, 1:2:end), [2 3 1]), 'k')
% % quiver([0.0375:0.05:19.7375], [0.0375:0.05:8.9875], ...
% %     permute(dttSuspendedFluxU(t(4), 2:2:end, 2:2:end, 1), [2 3 4 1])*1000, ...
% %     permute(dttSuspendedFluxV(t(4), 2:2:end, 2:2:end, 1), [2 3 4 1])*1000, 0, 'k')
% % quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
% %     permute(dttBedloadFluxU(t(4), 1:2:end-1, 1:2:end-1, 1), [2 3 4 1])*10000, ...
% %     permute(dttBedloadFluxV(t(4), 1:2:end-1, 1:2:end-1, 1), [2 3 4 1])*10000, 0, 'r')
% % set(axesVel, 'yDir', 'Normal')
% xlim(xRange)
% xticks([11.625:0.125:12.125])
% xtickangle(60)
% xtickformat('%.3f')
% ylim(yRange)
% ytickformat('%.1f')
% text(xRange(1)+0.05, yRange(2)-0.05, ['{\itt} = ' num2str(t(4)*mf*3.125/(24*365), '%2.2f') 'yr'], 'FontSize', 24, 'Color', 'white')
% yticklabels([]);
% 
% nexttile
% % axesBathy = axes;
% % contour(xAxis, yAxis, permute(-dttBedLevel(t(5), :, :), [2 3 1]), [-5:0.5:0]);
% imagesc(xAxis, yAxis, permute(-dttBedLevel(t(5), :, :), [2 3 1]), [-5 0]);
% set(gca, 'yDir', 'Normal', 'FontSize', 16)
% colormap(gca, dttColorMap)
% axis equal
% hold on
% contour(xAxis, yAxis, permute(dttSigWaveHeight(t(5), :, :), [2 3 1]), [0:0.1:1.6], 'ShowText', 'On', 'Color', 'Black');
% quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
%     permute(dttSigWaveHeight(t(5), 1:2:end, 1:2:end), [2 3 1]) .* cosd(permute(dttMeanWaveDirection(t(5), 1:2:end, 1:2:end), [2 3 1])), ...
%     permute(dttSigWaveHeight(t(5), 1:2:end, 1:2:end), [2 3 1]) .* sind(permute(dttMeanWaveDirection(t(5), 1:2:end, 1:2:end), [2 3 1])), 'b')
% % axesVel = axes;
% % quiver([0.0125:0.025:19.7375], [0.0125:0.025:8.9875], ...
% %     permute(dttVelUCell(t(5), :, :), [2 3 1]), ...
% %     permute(dttVelVCell(t(5), :, :), [2 3 1]), 'k')
% % quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
% %     permute(dttVelUCell(t(5), 1:2:end, 1:2:end), [2 3 1]), ...
% %     permute(dttVelVCell(t(5), 1:2:end, 1:2:end), [2 3 1]), 'k')
% % quiver([0.0375:0.05:19.7375], [0.0375:0.05:8.9875], ...
% %     permute(dttSuspendedFluxU(t(5), 2:2:end, 2:2:end, 1), [2 3 4 1])*1000, ...
% %     permute(dttSuspendedFluxV(t(5), 2:2:end, 2:2:end, 1), [2 3 4 1])*1000, 0, 'k')
% % quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
% %     permute(dttBedloadFluxU(t(5), 1:2:end-1, 1:2:end-1, 1), [2 3 4 1])*10000, ...
% %     permute(dttBedloadFluxV(t(5), 1:2:end-1, 1:2:end-1, 1), [2 3 4 1])*10000, 0, 'r')
% % set(axesVel, 'yDir', 'Normal')
% xlim(xRange)
% xticks([11.625:0.125:12.125])
% xtickangle(60)
% xtickformat('%.3f')
% ylim(yRange)
% ytickformat('%.1f')
% text(xRange(1)+0.05, yRange(2)-0.05, ['{\itt} = ' num2str(t(5)*mf*3.125/(24*365), '%2.2f') 'yr'], 'FontSize', 24, 'Color', 'white')
% yticklabels([]);
% 
% nexttile
% % axesBathy = axes;
% % contour(xAxis, yAxis, permute(-dttBedLevel(t(6), :, :), [2 3 1]), [-5:0.5:0]);
% imagesc(xAxis, yAxis, permute(-dttBedLevel(t(6), :, :), [2 3 1]), [-5 0]);
% set(gca, 'yDir', 'Normal', 'FontSize', 16)
% colormap(gca, dttColorMap)
% axis equal
% hold on
% contour(xAxis, yAxis, permute(dttSigWaveHeight(t(6), :, :), [2 3 1]), [0:0.1:1.6], 'ShowText', 'On', 'Color', 'Black');
% quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
%     permute(dttSigWaveHeight(t(6), 1:2:end, 1:2:end), [2 3 1]) .* cosd(permute(dttMeanWaveDirection(t(6), 1:2:end, 1:2:end), [2 3 1])), ...
%     permute(dttSigWaveHeight(t(6), 1:2:end, 1:2:end), [2 3 1]) .* sind(permute(dttMeanWaveDirection(t(6), 1:2:end, 1:2:end), [2 3 1])), 'b')
% % axesVel = axes;
% % quiver([0.0125:0.025:19.7375], [0.0125:0.025:8.9875], ...
% %     permute(dttVelUCell(t(6), :, :), [2 3 1]), ...
% %     permute(dttVelVCell(t(6), :, :), [2 3 1]), 'k')
% % quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
% %     permute(dttVelUCell(t(6), 1:2:end, 1:2:end), [2 3 1]), ...
% %     permute(dttVelVCell(t(6), 1:2:end, 1:2:end), [2 3 1]), 'k')
% % quiver([0.0375:0.05:19.7375], [0.0375:0.05:8.9875], ...
% %     permute(dttSuspendedFluxU(t(6), 2:2:end, 2:2:end, 1), [2 3 4 1])*1000, ...
% %     permute(dttSuspendedFluxV(t(6), 2:2:end, 2:2:end, 1), [2 3 4 1])*1000, 0, 'k')
% % quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
% %     permute(dttBedloadFluxU(t(6), 1:2:end-1, 1:2:end-1, 1), [2 3 4 1])*10000, ...
% %     permute(dttBedloadFluxV(t(6), 1:2:end-1, 1:2:end-1, 1), [2 3 4 1])*10000, 0, 'r')
% % set(axesVel, 'yDir', 'Normal')
% xlim(xRange)
% xticks([11.625:0.125:12.125])
% xtickangle(60)
% xtickformat('%.3f')
% ylim(yRange)
% ytickformat('%.1f')
% text(xRange(1)+0.05, yRange(2)-0.05, ['{\itt} = ' num2str(t(6)*mf*3.125/(24*365), '%2.2f') 'yr'], 'FontSize', 24, 'Color', 'white')
% yticklabels([]);

%% EXPORT PLOT - ALONGSHORE BAR TRANSPORT W2.0T0.0
% exportgraphics(dttAlongshoreBarPlot, ['../MATLAB export/Final/dttAlongshoreBarTransportW2.0T0.0_combined.png'], 'Resolution', 95);

%% PLOT - CHANNEL TIP DEFLECTION W0.8T0.0
% dttChannelTipPlot = figure(1103);
% dttChannelTipPlot.Position = [0 0 1920 960];
% clf reset
% til = tiledlayout(1, 6, 'TileSpacing', 'Tight');
% xlabel(til, {'\itx\rm-distance [km]'}, 'FontSize', 24)
% ylabel(til, '\ity\rm-distance [km]', 'FontSize', 24)
% t = [401 : 4 : 577];
% xRange = [12.0 12.75];
% yRange = [1.5 3.5];
% depthRange = [-10 0];
% 
% nexttile
% % axesBathy = axes;
% % contour(xAxis, yAxis, permute(-dttBedLevel(t(1), :, :), [2 3 1]), [-5:0.5:0]);
% imagesc(xAxis, yAxis, permute(-dttBedLevel(t(1), :, :), [2 3 1]), depthRange);
% colormap(gca, dttColorMap)
% set(gca, 'yDir', 'Normal', 'FontSize', 16)
% cb = colorbar;
% cb.Layout.Tile = 'east';
% cb.Label.String = 'Bed elevation [m]';
% cb.FontSize = 24;
% axis equal
% hold on
% % contour(xAxis, yAxis, permute(dttSigWaveHeight(t(1), :, :), [2 3 1]), [0:0.1:1.6], 'ShowText', 'On', 'Color', 'Black');
% % quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
% %     permute(dttSigWaveHeight(t(1), 1:2:end, 1:2:end), [2 3 1]) .* cosd(permute(dttMeanWaveDirection(t(1), 1:2:end, 1:2:end), [2 3 1])), ...
% %     permute(dttSigWaveHeight(t(1), 1:2:end, 1:2:end), [2 3 1]) .* sind(permute(dttMeanWaveDirection(t(1), 1:2:end, 1:2:end), [2 3 1])), 'b')
% quiver([0.0125:0.025:19.7375], [0.0125:0.025:8.9875], ...
%     permute(dttVelUCell(t(1), :, :), [2 3 1]), ...
%     permute(dttVelVCell(t(1), :, :), [2 3 1]), 'k') % every cell
% % quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
% %     permute(dttVelUCell(t(1), 1:2:end, 1:2:end), [2 3 1]), ...
% %     permute(dttVelVCell(t(1), 1:2:end, 1:2:end), [2 3 1]), 'k')% intersections of even cells
% % quiver([0.0375:0.05:19.7375], [0.0375:0.05:8.9875], ...
% %     permute(dttSuspendedFluxU(t(1), 2:2:end, 2:2:end, 1), [2 3 4 1])*1000, ...
% %     permute(dttSuspendedFluxV(t(1), 2:2:end, 2:2:end, 1), [2 3 4 1])*1000, 0, 'k')
% % quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
% %     permute(dttBedloadFluxU(t(1), 1:2:end-1, 1:2:end-1, 1), [2 3 4 1])*10000, ...
% %     permute(dttBedloadFluxV(t(1), 1:2:end-1, 1:2:end-1, 1), [2 3 4 1])*10000, 0, 'r')
% % set(axesVel, 'yDir', 'Normal')
% xlim(xRange)
% xticks([xRange(1)+0.125:0.125:xRange(2)-0.125])
% xtickangle(60)
% xtickformat('%.3f')
% ylim(yRange)
% ytickformat('%.1f')
% text(xRange(1)+0.05, yRange(2)-0.05, ['{\itt} = ' num2str((t(1)-1)*mf*3.125/(24*365), '%2.2f') 'yr'], 'FontSize', 24, 'Color', 'white')
% % legend

% nexttile
% % axesBathy = axes;
% % contour(xAxis, yAxis, permute(-dttBedLevel(t(2), :, :), [2 3 1]), [-5:0.5:0]);
% imagesc(xAxis, yAxis, permute(-dttBedLevel(t(2), :, :), [2 3 1]), depthRange);
% set(gca, 'yDir', 'Normal', 'FontSize', 16)
% colormap(gca, dttColorMap)
% axis equal
% hold on
% contour(xAxis, yAxis, permute(dttSigWaveHeight(t(2), :, :), [2 3 1]), [0:0.1:1.6], 'ShowText', 'On', 'Color', 'Black');
% quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
%     permute(dttSigWaveHeight(t(2), 1:2:end, 1:2:end), [2 3 1]) .* cosd(permute(dttMeanWaveDirection(t(2), 1:2:end, 1:2:end), [2 3 1])), ...
%     permute(dttSigWaveHeight(t(2), 1:2:end, 1:2:end), [2 3 1]) .* sind(permute(dttMeanWaveDirection(t(2), 1:2:end, 1:2:end), [2 3 1])), 'b')
% % quiver([0.0125:0.025:19.7375], [0.0125:0.025:8.9875], ...
% %     permute(dttVelUCell(t(2), :, :), [2 3 1]), ...
% %     permute(dttVelVCell(t(2), :, :), [2 3 1]), 'k')
% % quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
% %     permute(dttVelUCell(t(2), 1:2:end, 1:2:end), [2 3 1]), ...
% %     permute(dttVelVCell(t(2), 1:2:end, 1:2:end), [2 3 1]), 'k')
% % quiver([0.0375:0.05:19.7375], [0.0375:0.05:8.9875], ...
% %     permute(dttSuspendedFluxU(t(2), 2:2:end, 2:2:end, 1), [2 3 4 1])*1000, ...
% %     permute(dttSuspendedFluxV(t(2), 2:2:end, 2:2:end, 1), [2 3 4 1])*1000, 0, 'k')
% % quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
% %     permute(dttBedloadFluxU(t(2), 1:2:end-1, 1:2:end-1, 1), [2 3 4 1])*10000, ...
% %     permute(dttBedloadFluxV(t(2), 1:2:end-1, 1:2:end-1, 1), [2 3 4 1])*10000, 0, 'r')
% % set(axesVel, 'yDir', 'Normal')
% xlim(xRange)
% xticks([xRange(1)+0.125:0.125:xRange(2)-0.125])
% xtickangle(60)
% xtickformat('%.3f')
% ylim(yRange)
% ytickformat('%.1f')
% text(xRange(1)+0.05, yRange(2)-0.05, ['{\itt} = ' num2str((t(2)-1)*mf*3.125/(24*365), '%2.2f') 'yr'], 'FontSize', 24, 'Color', 'white')
% yticklabels([]);
% 
% nexttile
% % axesBathy = axes;
% % contour(xAxis, yAxis, permute(-dttBedLevel(t(3), :, :), [2 3 1]), [-5:0.5:0]);
% imagesc(xAxis, yAxis, permute(-dttBedLevel(t(3), :, :), [2 3 1]), depthRange);
% set(gca, 'yDir', 'Normal', 'FontSize', 16)
% colormap(gca, dttColorMap)
% axis equal
% hold on
% contour(xAxis, yAxis, permute(dttSigWaveHeight(t(3), :, :), [2 3 1]), [0:0.1:1.6], 'ShowText', 'On', 'Color', 'Black');
% quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
%     permute(dttSigWaveHeight(t(3), 1:2:end, 1:2:end), [2 3 1]) .* cosd(permute(dttMeanWaveDirection(t(3), 1:2:end, 1:2:end), [2 3 1])), ...
%     permute(dttSigWaveHeight(t(3), 1:2:end, 1:2:end), [2 3 1]) .* sind(permute(dttMeanWaveDirection(t(3), 1:2:end, 1:2:end), [2 3 1])), 'b')
% % quiver([0.0125:0.025:19.7375], [0.0125:0.025:8.9875], ...
% %     permute(dttVelUCell(t(3), :, :), [2 3 1]), ...
% %     permute(dttVelVCell(t(3), :, :), [2 3 1]), 'k')
% % quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
% %     permute(dttVelUCell(t(3), 1:2:end, 1:2:end), [2 3 1]), ...
% %     permute(dttVelVCell(t(3), 1:2:end, 1:2:end), [2 3 1]), 'k')
% % quiver([0.0375:0.05:19.7375], [0.0375:0.05:8.9875], ...
% %     permute(dttSuspendedFluxU(t(3), 2:2:end, 2:2:end, 1), [2 3 4 1])*1000, ...
% %     permute(dttSuspendedFluxV(t(3), 2:2:end, 2:2:end, 1), [2 3 4 1])*1000, 0, 'k')
% % quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
% %     permute(dttBedloadFluxU(t(3), 1:2:end-1, 1:2:end-1, 1), [2 3 4 1])*10000, ...
% %     permute(dttBedloadFluxV(t(3), 1:2:end-1, 1:2:end-1, 1), [2 3 4 1])*10000, 0, 'r')
% % set(axesVel, 'yDir', 'Normal')
% xlim(xRange)
% xticks([xRange(1)+0.125:0.125:xRange(2)-0.125])
% xtickangle(60)
% xtickformat('%.3f')
% ylim(yRange)
% ytickformat('%.1f')
% text(xRange(1)+0.05, yRange(2)-0.05, ['{\itt} = ' num2str((t(3)-1)*mf*3.125/(24*365), '%2.2f') 'yr'], 'FontSize', 24, 'Color', 'white')
% yticklabels([]);
% 
% nexttile
% % axesBathy = axes;
% % contour(xAxis, yAxis, permute(-dttBedLevel(t(4), :, :), [2 3 1]), [-5:0.5:0]);
% imagesc(xAxis, yAxis, permute(-dttBedLevel(t(4), :, :), [2 3 1]), depthRange);
% set(gca, 'yDir', 'Normal', 'FontSize', 16)
% colormap(gca, dttColorMap)
% axis equal
% hold on
% contour(xAxis, yAxis, permute(dttSigWaveHeight(t(4), :, :), [2 3 1]), [0:0.1:1.6], 'ShowText', 'On', 'Color', 'Black');
% quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
%     permute(dttSigWaveHeight(t(4), 1:2:end, 1:2:end), [2 3 1]) .* cosd(permute(dttMeanWaveDirection(t(4), 1:2:end, 1:2:end), [2 3 1])), ...
%     permute(dttSigWaveHeight(t(4), 1:2:end, 1:2:end), [2 3 1]) .* sind(permute(dttMeanWaveDirection(t(4), 1:2:end, 1:2:end), [2 3 1])), 'b')
% % quiver([0.0125:0.025:19.7375], [0.0125:0.025:8.9875], ...
% %     permute(dttVelUCell(t(4), :, :), [2 3 1]), ...
% %     permute(dttVelVCell(t(4), :, :), [2 3 1]), 'k')
% % quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
% %     permute(dttVelUCell(t(4), 1:2:end, 1:2:end), [2 3 1]), ...
% %     permute(dttVelVCell(t(4), 1:2:end, 1:2:end), [2 3 1]), 'k')
% % quiver([0.0375:0.05:19.7375], [0.0375:0.05:8.9875], ...
% %     permute(dttSuspendedFluxU(t(4), 2:2:end, 2:2:end, 1), [2 3 4 1])*1000, ...
% %     permute(dttSuspendedFluxV(t(4), 2:2:end, 2:2:end, 1), [2 3 4 1])*1000, 0, 'k')
% % quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
% %     permute(dttBedloadFluxU(t(4), 1:2:end-1, 1:2:end-1, 1), [2 3 4 1])*10000, ...
% %     permute(dttBedloadFluxV(t(4), 1:2:end-1, 1:2:end-1, 1), [2 3 4 1])*10000, 0, 'r')
% % set(axesVel, 'yDir', 'Normal')
% xlim(xRange)
% xticks([xRange(1)+0.125:0.125:xRange(2)-0.125])
% xtickangle(60)
% xtickformat('%.3f')
% ylim(yRange)
% ytickformat('%.1f')
% text(xRange(1)+0.05, yRange(2)-0.05, ['{\itt} = ' num2str((t(4)-1)*mf*3.125/(24*365), '%2.2f') 'yr'], 'FontSize', 24, 'Color', 'white')
% yticklabels([]);
% 
% nexttile
% % axesBathy = axes;
% % contour(xAxis, yAxis, permute(-dttBedLevel(t(5), :, :), [2 3 1]), [-5:0.5:0]);
% imagesc(xAxis, yAxis, permute(-dttBedLevel(t(5), :, :), [2 3 1]), depthRange);
% set(gca, 'yDir', 'Normal', 'FontSize', 16)
% colormap(gca, dttColorMap)
% axis equal
% hold on
% contour(xAxis, yAxis, permute(dttSigWaveHeight(t(5), :, :), [2 3 1]), [0:0.1:1.6], 'ShowText', 'On', 'Color', 'Black');
% quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
%     permute(dttSigWaveHeight(t(5), 1:2:end, 1:2:end), [2 3 1]) .* cosd(permute(dttMeanWaveDirection(t(5), 1:2:end, 1:2:end), [2 3 1])), ...
%     permute(dttSigWaveHeight(t(5), 1:2:end, 1:2:end), [2 3 1]) .* sind(permute(dttMeanWaveDirection(t(5), 1:2:end, 1:2:end), [2 3 1])), 'b')
% % quiver([0.0125:0.025:19.7375], [0.0125:0.025:8.9875], ...
% %     permute(dttVelUCell(t(5), :, :), [2 3 1]), ...
% %     permute(dttVelVCell(t(5), :, :), [2 3 1]), 'k')
% % quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
% %     permute(dttVelUCell(t(5), 1:2:end, 1:2:end), [2 3 1]), ...
% %     permute(dttVelVCell(t(5), 1:2:end, 1:2:end), [2 3 1]), 'k')
% % quiver([0.0375:0.05:19.7375], [0.0375:0.05:8.9875], ...
% %     permute(dttSuspendedFluxU(t(5), 2:2:end, 2:2:end, 1), [2 3 4 1])*1000, ...
% %     permute(dttSuspendedFluxV(t(5), 2:2:end, 2:2:end, 1), [2 3 4 1])*1000, 0, 'k')
% % quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
% %     permute(dttBedloadFluxU(t(5), 1:2:end-1, 1:2:end-1, 1), [2 3 4 1])*10000, ...
% %     permute(dttBedloadFluxV(t(5), 1:2:end-1, 1:2:end-1, 1), [2 3 4 1])*10000, 0, 'r')
% % set(axesVel, 'yDir', 'Normal')
% xlim(xRange)
% xticks([xRange(1)+0.125:0.125:xRange(2)-0.125])
% xtickangle(60)
% xtickformat('%.3f')
% ylim(yRange)
% ytickformat('%.1f')
% text(xRange(1)+0.05, yRange(2)-0.05, ['{\itt} = ' num2str((t(5)-1)*mf*3.125/(24*365), '%2.2f') 'yr'], 'FontSize', 24, 'Color', 'white')
% yticklabels([]);
% 
% nexttile
% % axesBathy = axes;
% % contour(xAxis, yAxis, permute(-dttBedLevel(t(6), :, :), [2 3 1]), [-5:0.5:0]);
% imagesc(xAxis, yAxis, permute(-dttBedLevel(t(6), :, :), [2 3 1]), depthRange);
% set(gca, 'yDir', 'Normal', 'FontSize', 16)
% colormap(gca, dttColorMap)
% axis equal
% hold on
% contour(xAxis, yAxis, permute(dttSigWaveHeight(t(6), :, :), [2 3 1]), [0:0.1:1.6], 'ShowText', 'On', 'Color', 'Black');
% quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
%     permute(dttSigWaveHeight(t(6), 1:2:end, 1:2:end), [2 3 1]) .* cosd(permute(dttMeanWaveDirection(t(6), 1:2:end, 1:2:end), [2 3 1])), ...
%     permute(dttSigWaveHeight(t(6), 1:2:end, 1:2:end), [2 3 1]) .* sind(permute(dttMeanWaveDirection(t(6), 1:2:end, 1:2:end), [2 3 1])), 'b')
% % quiver([0.0125:0.025:19.7375], [0.0125:0.025:8.9875], ...
% %     permute(dttVelUCell(t(6), :, :), [2 3 1]), ...
% %     permute(dttVelVCell(t(6), :, :), [2 3 1]), 'k')
% % quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
% %     permute(dttVelUCell(t(6), 1:2:end, 1:2:end), [2 3 1]), ...
% %     permute(dttVelVCell(t(6), 1:2:end, 1:2:end), [2 3 1]), 'k')
% % quiver([0.0375:0.05:19.7375], [0.0375:0.05:8.9875], ...
% %     permute(dttSuspendedFluxU(t(6), 2:2:end, 2:2:end, 1), [2 3 4 1])*1000, ...
% %     permute(dttSuspendedFluxV(t(6), 2:2:end, 2:2:end, 1), [2 3 4 1])*1000, 0, 'k')
% % quiver([0.0125:0.05:19.7125], [0.0125:0.05:8.9625], ...
% %     permute(dttBedloadFluxU(t(6), 1:2:end-1, 1:2:end-1, 1), [2 3 4 1])*10000, ...
% %     permute(dttBedloadFluxV(t(6), 1:2:end-1, 1:2:end-1, 1), [2 3 4 1])*10000, 0, 'r')
% % set(axesVel, 'yDir', 'Normal')
% xlim(xRange)
% xticks([xRange(1)+0.125:0.125:xRange(2)-0.125])
% xtickangle(60)
% xtickformat('%.3f')
% ylim(yRange)
% ytickformat('%.1f')
% text(xRange(1)+0.05, yRange(2)-0.05, ['{\itt} = ' num2str((t(6)-1)*mf*3.125/(24*365), '%2.2f') 'yr'], 'FontSize', 24, 'Color', 'white')
% yticklabels([]);

%% EXPORT PLOT - CHANNEL TIP DEFLECTION W0.8T0.0
% exportgraphics(dttChannelTipPlot, ['../MATLAB export/Final/dttChannelTipDeflectionW0.8T0.0_currentVectors.png'], 'Resolution', 95);
% exportgraphics(dttChannelTipPlot, ['../MATLAB export/Final/dttChannelTipDeflectionW0.8T0.0_suspendedFlux(black)AndBedloadFlux(red).png'], 'Resolution', 95);
% exportgraphics(dttChannelTipPlot, ['../MATLAB export/Final/dttChannelTipDeflectionW0.8T0.0_waveHeightsAndVectors.png'], 'Resolution', 95);