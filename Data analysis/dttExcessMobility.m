% Date:     20/06/2023
% Author:   ERS

% This script calculates an "excess mobility number", defined as normalised
% net excess bed level increase per tide. The normalisation factor is
% the expected net bed level increase due to sediment influx alone over
% 0.25yr of morphodynamic development.

%% RUN IMPORT AND EXTRACTION SCRIPTS
dttMapImportDD;
    dttExtractBedLevels;
        dttParameters;

%% DETERMINE runID FROM IMPORT FILEPATH
if isequal(filePath(end-3:end-1), 'ext')
    runID = filePath(end-11:end-1);
elseif isequal(filePath(end-6:end-1), 'varwav')
    runID = filePath(end-14:end-1);
else
    runID = filePath(end-8:end-1);
end

%% LOAD METRICS
load(['..\MATLAB datastore\' runID '_metrics_HPC.mat'], 'dttLowTideFrontContour');

%% DETERMINE LOGICAL MATRICES OF REGIONS ENCLOSED BY LOW TIDE SHORELINE AND INITIAL COASTLINE
dttLowTideFrontContourMax = zeros(size(dttLowTideFrontContour, 1), 1);
dttLowTideFrontContourIndex = zeros(size(dttLowTideFrontContour, 1), 1);
dttLowTideShorelineRegion = zeros(size(dttBedLevel(1:4:end,:,:)));
for tt = 1:size(dttLowTideFrontContour, 1)
    [dttLowTideFrontContourMax(tt), dttLowTideFrontContourIndex(tt)] = max(dttLowTideFrontContour{tt}(2,:)); % Max returns number of elements in longest contour(max will give incorrect result in rare circumstances, but v unlikely). Index is location of max value.
    dttLowTideShorelineRegion(tt,:,:) = poly2mask(dttLowTideFrontContour{tt}(1, dttLowTideFrontContourIndex(tt)+1 : dttLowTideFrontContourIndex(tt) + dttLowTideFrontContourMax(tt)), ...
        dttLowTideFrontContour{tt}(2, dttLowTideFrontContourIndex(tt)+1 : dttLowTideFrontContourIndex(tt) + dttLowTideFrontContourMax(tt)), ...
        360, 790); % Creates logical `mask' of region enclosed by low tide shoreline contour
end

% FIX TO AVOID COUNT OF 'NEGATIVE' RIVER MOUTH AREA AT EARLY TIMES
dttLowTideShorelineRegion (:, 1:20, :) = 0;

%% BED LEVEL CHANGE PER TIDE
dttBedLevelChangePerTide = -dttBedLevel(5:4:end, :, :) + dttBedLevel(1:4:end-4, :, :); % note downward positive convention

%% ESTIMATE EXPECTED TOTAL BEDLEVEL CHANGE
% I could actually count incoming sediment directly from history files here instead... hard to account for time lag between passing and settling though
c = 0.1; % concentration [kg m-3]
Q = 1280;% volumetric discharge rate [m3 s-1]
rhoBulk = 1600; % bulk density of deposits [kg m-3]
T_p = 12.5 * 60 * 60; % tidal period [s]

dzExpected = c  * Q * T_p * mf / (rhoBulk * dx * dy); % total bed level increase based on sediment influx only (MORFAC accelerated) [m]

%% DETERMINE EXCESS MOBILITY NUMBER(S)
% excess mobility number quantifies bed level activity beyond that which
% would be expected by deposition of sediment at inflow alone.
dzIncrease = zeros(size(dttBedLevelChangePerTide, 1), 1);
dzIncreaseInner = zeros(size(dttBedLevelChangePerTide, 1), 1);
dzIncreaseOuter = zeros(size(dttBedLevelChangePerTide, 1), 1);
dzDecrease = zeros(size(dttBedLevelChangePerTide, 1), 1);
dzDecreaseInner = zeros(size(dttBedLevelChangePerTide, 1), 1);
dzDecreaseOuter = zeros(size(dttBedLevelChangePerTide, 1), 1);

for tt = 1:size(dttBedLevelChangePerTide, 1)
    a = permute(dttBedLevelChangePerTide(tt, :, :), [2 3 1]);
    dzIncrease(tt) = sum(a(a > 0), 'all');
    dzIncreaseInner(tt) = sum(a(a .* permute(dttLowTideShorelineRegion(tt, :, :), [2 3 1]) > 0) , 'all');
    dzIncreaseOuter(tt) = sum(a(a .* ~permute(dttLowTideShorelineRegion(tt, :, :), [2 3 1]) > 0) , 'all');
    dzDecrease(tt) = abs(sum(a(a < 0), 'all'));
    dzDecreaseInner(tt) = abs(sum(a(a .* permute(dttLowTideShorelineRegion(tt, :, :), [2 3 1]) < 0) , 'all'));
    dzDecreaseOuter(tt) = abs(sum(a(a .* ~permute(dttLowTideShorelineRegion(tt, :, :), [2 3 1]) < 0) , 'all'));
end

dttChi = dzDecrease./dzExpected;
dttChiInner = dzDecreaseInner./dzExpected;
dttChiOuter = dzDecreaseOuter./dzExpected;
dzIncreaseInnerNetFraction = (dzIncreaseInner - dzDecreaseInner)./dzExpected;
dzIncreaseOuterNetFraction = (dzIncreaseOuter - dzDecreaseOuter)./dzExpected;

%% SAVE MOBILITY NUMBERS
save(['../MATLAB datastore/' runID '_metrics_HPC.mat'], 'dttChi', 'dttChiInner', 'dttChiOuter', 'dzIncreaseInnerNetFraction', 'dzIncreaseOuterNetFraction', '-append')

%% TEMP LOAD FOR FIXES
% runID = 'W0.8T5.0';
% load(['../MATLAB datastore/' runID '_metrics_HPC.mat'], 'mf', 'dttChi', 'dttChiInner', 'dttChiOuter', 'dzIncreaseInnerNetFraction', 'dzIncreaseOuterNetFraction')

%% PLOTS/ANIMS PREAMBLE
dttColorMap = cmocean('diff');
xAxis = [0.0125:0.025:19.7375];
yAxis = [0.0125:0.025:8.9875];
tAxis = [12.5*mf/(365*24):12.5*mf/(365*24):12.5*mf/(365*24)*144];

%% PLOTS 1
chiPlot = figure(871);
chiPlot.Position = [20 100 920 480];
clf reset
plot(tAxis, dttChi, 'k')
hold on
plot(tAxis, dttChiInner, 'k:')
plot(tAxis, dttChiOuter, 'k--')
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 5])
ylabel('{\it\chi} [-]')
grid on
legend('\chi', '\chi_{inner}', '\chi_{outer}', 'Location', 'Northwest')

% figure(872)
% clf reset
% plot(dzDecrease, 'k')
% hold on
% plot(dzDecreaseInner, 'k:')
% plot(dzDecreaseOuter, 'k--')

% figure(873)
% clf reset
% plot(dzIncrease, 'r')
% hold on
% plot(dzIncreaseInner, 'r:')
% plot(dzIncreaseOuter, 'r--')

% figure(874)
% clf reset
% plot(dzDecreaseInner, 'k:')
% hold on
% plot(dzDecreaseOuter, 'k--')
% plot(dzIncreaseInner, 'r:')
% plot(dzIncreaseOuter, 'r--')

netChangeFractionPlot = figure(875);
netChangeFractionPlot.Position = [980 100 920 480];
clf reset
plot(tAxis, dzIncreaseOuterNetFraction, 'k')
hold on
plot(tAxis, dzIncreaseInnerNetFraction, 'r')
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([-0.4 1.4])
ylabel('Fraction of expected net bed level change [-]')
grid on
legend('Outer', 'Inner', 'Location', 'Northwest')

%% EXPORT PLOTS
exportgraphics(chiPlot, ['../MATLAB export/Final/bedMobility/dttExcessMobility' runID '.png'], 'resolution', 150);
exportgraphics(netChangeFractionPlot, ['../MATLAB export/Final/bedMobility/dttNetBedLevelChangeFraction' runID '.png'], 'resolution', 150);

%% LOAD MOBILITY NUMBERS
% load('../MATLAB datastore/dttExcessMobilityNumbers.mat')
% mf = 175;

%% PLOTS MULTI
% dttMobilityIndexPlot = figure(881);
% dttMobilityIndexPlot.Position = [10 10 1280 720];
% imshow(permute(dttBedLevelChangePerTide(end, :, :), [2 3 1]));
% set(gca, 'yDir', 'Normal')
% 
% dttExcessMobilityNumberPlotT0 = figure(882);
% clf reset
% dttExcessMobilityNumberPlotT0.Position = [50 50 1280 720];
% plot(tAxis, W0T0.dttExcessMobilityNumber, 'x')
% hold on
% plot(tAxis, W04T0.dttExcessMobilityNumber, 's')
% plot(tAxis, W08T0.dttExcessMobilityNumber, 'd')
% plot(tAxis, W12T0.dttExcessMobilityNumber, '^')
% plot(tAxis, W16T0.dttExcessMobilityNumber, '+')
% plot(tAxis, W2T0.dttExcessMobilityNumber, 'v')
% grid on
% legend('W0.0T0.0', 'W0.4T0.0', 'W0.8T0.0', 'W1.2T0.0', 'W1.6T0.0', 'W2.0T0.0', 'Location', 'Northwest')
% xlabel('Time, {\itt} [yr]')
% xlim([0 36])
% xticks([0:6:36])
% ylabel('Excess mobility number, {\it\chi} [-]')
% 
% dttExcessMobilityNumberPlotT1 = figure(883);
% clf reset
% dttExcessMobilityNumberPlotT1.Position = [50 50 1280 720];
% plot(tAxis, W0T1.dttExcessMobilityNumber, 'x')
% hold on
% plot(tAxis, W04T1.dttExcessMobilityNumber, 's')
% plot(tAxis, W08T1.dttExcessMobilityNumber, 'd')
% plot(tAxis, W12T1.dttExcessMobilityNumber, '^')
% plot(tAxis, W16T1.dttExcessMobilityNumber, '+')
% plot(tAxis, W2T1.dttExcessMobilityNumber, 'v')
% grid on
% legend('W0.0T1.0', 'W0.4T1.0', 'W0.8T1.0', 'W1.2T1.0', 'W1.6T1.0', 'W2.0T1.0', 'Location', 'Northwest')
% xlabel('Time, {\itt} [yr]')
% xlim([0 36])
% xticks([0:6:36])
% ylabel('Excess mobility number, {\it\chi} [-]')
% 
% dttExcessMobilityNumberPlotT2 = figure(884);
% clf reset
% dttExcessMobilityNumberPlotT2.Position = [50 50 1280 720];
% plot(tAxis, W0T2.dttExcessMobilityNumber, 'x')
% hold on
% plot(tAxis, W04T2.dttExcessMobilityNumber, 's')
% plot(tAxis, W08T2.dttExcessMobilityNumber, 'd')
% plot(tAxis, W12T2.dttExcessMobilityNumber, '^')
% plot(tAxis, W16T2.dttExcessMobilityNumber, '+')
% plot(tAxis, W2T2.dttExcessMobilityNumber, 'v')
% grid on
% legend('W0.0T2.0', 'W0.4T2.0', 'W0.8T2.0', 'W1.2T2.0', 'W1.6T2.0', 'W2.0T2.0', 'Location', 'Northwest')
% xlabel('Time, {\itt} [yr]')
% xlim([0 36])
% xticks([0:6:36])
% ylabel('Excess mobility number, {\it\chi} [-]')
% 
% dttExcessMobilityNumberPlotT4 = figure(885);
% clf reset
% dttExcessMobilityNumberPlotT4.Position = [50 50 1280 720];
% plot(tAxis, W0T4.dttExcessMobilityNumber, 'x')
% hold on
% plot(tAxis, W04T4.dttExcessMobilityNumber, 's')
% plot(tAxis, W08T4.dttExcessMobilityNumber, 'd')
% plot(tAxis, W12T4.dttExcessMobilityNumber, '^')
% plot(tAxis, W16T4.dttExcessMobilityNumber, '+')
% plot(tAxis, W2T4.dttExcessMobilityNumber, 'v')
% grid on
% legend('W0.0T4.0', 'W0.4T4.0', 'W0.8T4.0', 'W1.2T4.0', 'W1.6T4.0', 'W2.0T4.0', 'Location', 'Northwest')
% xlabel('Time, {\itt} [yr]')
% xlim([0 36])
% xticks([0:6:36])
% ylabel('Excess mobility number, {\it\chi} [-]')
% 
% dttExcessMobilityNumberPlotT6 = figure(886);
% clf reset
% dttExcessMobilityNumberPlotT6.Position = [50 50 1280 720];
% plot(tAxis, W0T6.dttExcessMobilityNumber, 'x')
% hold on
% plot(tAxis, W04T6.dttExcessMobilityNumber, 's')
% plot(tAxis, W08T6.dttExcessMobilityNumber, 'd')
% plot(tAxis, W12T6.dttExcessMobilityNumber, '^')
% plot(tAxis, W16T6.dttExcessMobilityNumber, '+')
% plot(tAxis, W2T6.dttExcessMobilityNumber, 'v')
% grid on
% legend('W0.0T6.0', 'W0.4T6.0', 'W0.8T6.0', 'W1.2T6.0', 'W1.6T6.0', 'W2.0T6.0', 'Location', 'Northwest')
% xlabel('Time, {\itt} [yr]')
% xlim([0 36])
% xticks([0:6:36])
% ylabel('Excess mobility number, {\it\chi} [-]')
% 
% dttExcessMobilityNumberPlotW0 = figure(982);
% clf reset
% dttExcessMobilityNumberPlotW0.Position = [50 50 1280 720];
% plot(tAxis, W0T0.dttExcessMobilityNumber, 'x')
% hold on
% % plot(tAxis, W0T05.dttExcessMobilityNumber, 's')
% plot(tAxis, W0T1.dttExcessMobilityNumber, 'd')
% plot(tAxis, W0T2.dttExcessMobilityNumber, '^')
% % plot(tAxis, W0T3.dttExcessMobilityNumber, 'v')
% plot(tAxis, W0T4.dttExcessMobilityNumber, '+')
% % plot(tAxis, W0T5.dttExcessMobilityNumber, '<')
% plot(tAxis, W0T6.dttExcessMobilityNumber, 'o')
% grid on
% legend('W0.0T0.0', 'W0.0T1.0', 'W0.0T2.0', 'W0.0T4.0', 'W0.0T6.0', 'Location', 'Northwest')
% % legend('W0.0T0.0', 'W0.0T0.5', 'W0.0T1.0', 'W0.0T2.0', 'W0.0T3.0', 'W0.0T4.0', 'W0.0T5.0', 'W0.0T6.0', 'Location', 'Northwest')
% xlabel('Time, {\itt} [yr]')
% xlim([0 36])
% xticks([0:6:36])
% ylabel('Excess mobility number, {\it\chi} [-]')
% ylim([0 2])
% 
% dttExcessMobilityNumberPlotW04 = figure(983);
% clf reset
% dttExcessMobilityNumberPlotW04.Position = [50 50 1280 720];
% plot(tAxis, W04T0.dttExcessMobilityNumber, 'x')
% hold on
% plot(tAxis, W04T1.dttExcessMobilityNumber, 'd')
% plot(tAxis, W04T2.dttExcessMobilityNumber, '^')
% plot(tAxis, W04T4.dttExcessMobilityNumber, '+')
% plot(tAxis, W04T6.dttExcessMobilityNumber, 'o')
% grid on
% legend('W0.4T0.0', 'W0.4T1.0', 'W0.4T2.0', 'W0.4T4.0', 'W0.4T6.0', 'Location', 'Northwest')
% xlabel('Time, {\itt} [yr]')
% xlim([0 36])
% xticks([0:6:36])
% ylabel('Excess mobility number, {\it\chi} [-]')
% ylim([0 2])
% 
% dttExcessMobilityNumberPlotW08 = figure(984);
% clf reset
% dttExcessMobilityNumberPlotW08.Position = [50 50 1280 720];
% plot(tAxis, W08T0.dttExcessMobilityNumber, 'x')
% hold on
% plot(tAxis, W08T1.dttExcessMobilityNumber, 'd')
% plot(tAxis, W08T2.dttExcessMobilityNumber, '^')
% plot(tAxis, W08T4.dttExcessMobilityNumber, '+')
% plot(tAxis, W08T6.dttExcessMobilityNumber, 'o')
% grid on
% legend('W0.8T0.0', 'W0.8T1.0', 'W0.8T2.0', 'W0.8T4.0', 'W0.8T6.0', 'Location', 'Northwest')
% xlabel('Time, {\itt} [yr]')
% xlim([0 36])
% xticks([0:6:36])
% ylabel('Excess mobility number, {\it\chi} [-]')
% % ylim([0 2])
% 
% dttExcessMobilityNumberPlotW12 = figure(985);
% clf reset
% dttExcessMobilityNumberPlotW12.Position = [50 50 1280 720];
% plot(tAxis, W12T0.dttExcessMobilityNumber, 'x')
% hold on
% plot(tAxis, W12T1.dttExcessMobilityNumber, 'd')
% plot(tAxis, W12T2.dttExcessMobilityNumber, '^')
% plot(tAxis, W12T4.dttExcessMobilityNumber, '+')
% plot(tAxis, W12T6.dttExcessMobilityNumber, 'o')
% grid on
% legend('W1.2T0.0', 'W1.2T1.0', 'W1.2T2.0', 'W1.2T4.0', 'W1.2T6.0', 'Location', 'Northwest')
% xlabel('Time, {\itt} [yr]')
% xlim([0 36])
% xticks([0:6:36])
% ylabel('Excess mobility number, {\it\chi} [-]')
% % ylim([0 2])
% 
% dttExcessMobilityNumberPlotW16 = figure(986);
% clf reset
% dttExcessMobilityNumberPlotW16.Position = [50 50 1280 720];
% plot(tAxis, W16T0.dttExcessMobilityNumber, 'x')
% hold on
% plot(tAxis, W16T1.dttExcessMobilityNumber, 'd')
% plot(tAxis, W16T2.dttExcessMobilityNumber, '^')
% plot(tAxis, W16T4.dttExcessMobilityNumber, '+')
% plot(tAxis, W16T6.dttExcessMobilityNumber, 'o')
% grid on
% legend('W1.6T0.0', 'W1.6T1.0', 'W1.6T2.0', 'W1.6T4.0', 'W1.6T6.0', 'Location', 'Northwest')
% xlabel('Time, {\itt} [yr]')
% xlim([0 36])
% xticks([0:6:36])
% ylabel('Excess mobility number, {\it\chi} [-]')
% % ylim([0 2])
% 
% dttExcessMobilityNumberPlotW2 = figure(987);
% clf reset
% dttExcessMobilityNumberPlotW2.Position = [50 50 1280 720];
% plot(tAxis, W2T0.dttExcessMobilityNumber, 'x')
% hold on
% plot(tAxis, W2T1.dttExcessMobilityNumber, 'd')
% plot(tAxis, W2T2.dttExcessMobilityNumber, '^')
% plot(tAxis, W2T4.dttExcessMobilityNumber, '+')
% plot(tAxis, W2T6.dttExcessMobilityNumber, 'o')
% grid on
% legend('W2.0T0.0', 'W2.0T1.0', 'W2.0T2.0', 'W2.0T4.0', 'W2.0T6.0', 'Location', 'Northwest')
% xlabel('Time, {\itt} [yr]')
% xlim([0 36])
% xticks([0:6:36])
% ylabel('Excess mobility number, {\it\chi} [-]')
% % ylim([0 2])

%% EXPORT EXCESS MOBILITY PLOTS
% exportgraphics(dttExcessMobilityNumberPlotW2, '../MATLAB export/Final/bedMobility/dttExcessMobilityNumber_W2.0.png', 'Resolution', 150);

%% ANIMATIONS
% dttMobilityIndexAnim = figure(891);
% dttMobilityIndexAnim.Position = [10 10 2160 930];
% for tt = 1:size(dttBedLevelChangePerTide, 1)
%     clf reset
%     ax1 = axes;
%     imagesc(xAxis, yAxis, permute(dttBedLevelChangePerTide(tt, :, :), [2 3 1]), [-15 15]);
%     colormap(ax1, hsv)
%     hold on
%     axis equal
%     xlabel('\itx\rm-distance [km]')
%     ylabel('\ity\rm-distance [km]')
%     ax2 = axes;
%     contour(xAxis, yAxis, permute(-dttBedLevel((tt*4)+1, :, :), [2 3 1]), [-20:4:8], 'LineWidth', 0.25)
%     linkaxes([ax1 ax2])
%     ax2.Visible = 'off';
%     ax2.XTick = [];
%     ax2.YTick = [];
%     axis equal
%     colormap(ax2, bone);
%     set(ax1, 'yDir', 'Normal')
%     set(ax2, 'yDir', 'Normal', 'CLim', [-20 8])
%     set(gcf, 'Color', 'White')
%     set([ax1,ax2],'Position',[.13 .11 .815 .815]);
%     cb1 = colorbar(ax1,'Position',[.05 .11 .02 .815], 'FontSize', 12);
%     cb2 = colorbar(ax2,'Position',[.10 .11 .02 .815], 'Ticks', [-20:4:8], 'FontSize', 12);
%     cb1.Label.String = 'Bed level change per 0.25yr [m]';
%     cb2.Label.String = 'Bed elevation [m]';
%     
%     % original
%     text(xAxis(1)+0.5, yAxis(end)-0.5, ['Time elapsed: ' num2str((tt-1)*mf*12.5/(24*365), '%.2f') ' years'], 'FontSize', 36)
%     % extended
% %     text(xAxis(1)+0.5, yAxis(end)-0.5, ['Time elapsed: ' num2str((tt+144)*mf*12.5/(24*365), '%.2f') ' years'], 'FontSize', 36)
% 
%     dttAnimationFrame(tt) = getframe(gcf);
% end

%% EXPORT ANIMATION
% writerObj = VideoWriter(['..\MATLAB export\Final\bedMobility\dtt' runID '_bedLevelChangePer0.25yr'], 'MPEG-4');
% writerObj.FrameRate = 6; % 6 or 24
% 
% % open the video writer
% open(writerObj);
% 
% % write the frames to the video
% for ii=1:size(dttAnimationFrame, 2)
%     
% %     convert the image to a frame
%     frame = dttAnimationFrame(ii);
%     writeVideo(writerObj, frame);
%     
% end
% 
% % close the writer object
% close(writerObj);
% 
% % clear dttAnimationFrame object for next animation
% clear dttAnimationFrame;

%% SCRIPT FINISH ALARM
% load gong
% sound(y, Fs)