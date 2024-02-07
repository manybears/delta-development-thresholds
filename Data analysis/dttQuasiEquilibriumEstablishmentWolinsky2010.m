% Date:     20/06/2023
% Author:   ERS

% This script determines wet-to-<low tide area> ratio. See Wolinsky2010.

%% RUN IMPORT AND EXTRACTION SCRIPTS
dttMapImportDD
    dttExtractBedLevels
        dttParameters
    dttExtractWaterLevels

%% DETERMINE runID FROM IMPORT FILEPATH
if isequal(filePath(end-3:end-1), 'ext')
    runID = filePath(end-11:end-1);
elseif isequal(filePath(end-6:end-1), 'varwav')
    runID = filePath(end-14:end-1);
else
    runID = filePath(end-8:end-1);
end

%% LOAD DATA
% load(['../MATLAB datastore/' runID '_metrics_HPC.mat']);
% load(['../MATLAB datastore/' runID '_bathy.mat']);

%% DETERMINE WATER DEPTHS
dttWaterDepth = dttBedLevel + dttWaterLevel;

%% FIX FOR TIDE LINES/DELTAFRONT SHOWING AT EDGES
dttLowTideFrontLogical(:, 21:end, 1) = 0;
dttLowTideFrontLogical(:, 21:end, end) = 0;
dttLowTideFrontLogical(:, end, :) = 0;

if exist('dttHighTideFrontLogical', 'var') ==1
    dttHighTideFrontLogical(:, 21:end, 1) = 0;
    dttHighTideFrontLogical(:, 21:end, end) = 0;
    dttHighTideFrontLogical(:, end, :) = 0;
end

dttDeltaFrontLogical(:, 21:end, 1) = 0;
dttDeltaFrontLogical(:, 21:end, end) = 0;
dttDeltaFrontLogical(:, end, :) = 0;

%% (ROUGH) DETERMINE INFILLED LOW TIDE BOUNDARY LOGIC MATRIX FOR PLOTS
% % Note: run above fix first
% dttLowTideFrontLogicalCloseLine = zeros(size(dttLowTideFrontLogical));
% dttLowTideFrontLogicalCloseLine(:, 21, :) = 1;
% dttLowTideFrontLogicalClosed = dttLowTideFrontLogical ==1 | dttLowTideFrontLogicalCloseLine ==1;
% dttLowTideFrontLogicalInfilled = zeros(size(dttLowTideFrontLogical));
% for tt = 1:size(dttLowTideFrontLogical, 1)
%     dttLowTideFrontLogicalInfilled(tt, :, :) = imfill(permute(dttLowTideFrontLogicalClosed(tt, :, :), [2 3 1]), 'holes');
% end
% dttLowTideFrontLogicalInfilled = dttLowTideFrontLogicalInfilled==1; % convert from double matrix to logic matrix
% 
% % Remove islands, leaving delta plain only (actually largest single "blob"; will be incorrect in some instances)
% dttLowTideFrontLogicalInfilledDeltaPlain = zeros(size(dttLowTideFrontLogicalInfilled));
% for tt = 1:size(dttLowTideFrontLogicalInfilled, 1)
%     dttLowTideFrontLogicalInfilledDeltaPlain(tt, :, :) = bwareafilt(permute(dttLowTideFrontLogicalInfilled(tt,:,:), [2 3 1]), 1, 'largest');
% end
% 
% dttLowTideFrontLogicalInfilledDeltaPlain = dttLowTideFrontLogicalInfilledDeltaPlain==1; % convert from double matrix to logic matrix

%% DETERMINE LOGICAL MATRICES OF REGIONS ENCLOSED BY LOW TIDE SHORELINE AND INITIAL COASTLINE
dttLowTideFrontContourMax = zeros(size(dttLowTideFrontContour, 1), 1);
dttLowTideFrontContourIndex = zeros(size(dttLowTideFrontContour, 1), 1);
dttLowTideShorelineRegion = zeros(size(dttLowTideFrontLogical));

for tt = 1:size(dttLowTideFrontContour, 1)
    [dttLowTideFrontContourMax(tt), dttLowTideFrontContourIndex(tt)] = max(dttLowTideFrontContour{tt}(2,:)); % Max returns number of elements in longest contour(max will give incorrect result in rare circumstances, but v unlikely). Index is location of max value.
    dttLowTideShorelineRegion(tt,:,:) = poly2mask(dttLowTideFrontContour{tt}(1, dttLowTideFrontContourIndex(tt)+1 : dttLowTideFrontContourIndex(tt) + dttLowTideFrontContourMax(tt)), ...
        dttLowTideFrontContour{tt}(2, dttLowTideFrontContourIndex(tt)+1 : dttLowTideFrontContourIndex(tt) + dttLowTideFrontContourMax(tt)), ...
        360, 790); % Creates logical `mask' of region enclosed by low tide shoreline contour
end

% FIX TO AVOID COUNT OF 'NEGATIVE' RIVER MOUTH AREA AT EARLY TIMES
dttLowTideShorelineRegion (:, 1:20, :) = 0;

%% DETERMINE WET AND DRY CELLS WITHIN LOW TIDE BOUNDARY
dttDryCells = dttWaterDepth < 0.11;
dttWetCells = ~dttDryCells;

if size(dttLowTideShorelineRegion, 1) ==144
    dttWetCellsDeltaPlain = dttWetCells(2:4:end-3, :, :) ==1 & dttLowTideShorelineRegion ==1;
    dttDryCellsDeltaPlain = dttDryCells(2:4:end-3, :, :) ==1 & dttLowTideShorelineRegion ==1;
else
    dttWetCellsDeltaPlain = dttWetCells(1:4:end, :, :) ==1 & dttLowTideShorelineRegion ==1;
    dttDryCellsDeltaPlain = dttDryCells(1:4:end, :, :) ==1 & dttLowTideShorelineRegion ==1;
end
    
dttDryCellDeltaPlainTotal = zeros(size(dttDryCellsDeltaPlain, 1), 1);
dttDryCellDeltaPlainFraction = zeros(size(dttDryCellsDeltaPlain, 1), 1);
dttWetCellDeltaPlainFraction = zeros(size(dttWetCellsDeltaPlain, 1), 1);
for tt = 1:size(dttDryCellsDeltaPlain, 1)
    dttDryCellDeltaPlainTotal(tt) = sum(dttDryCellsDeltaPlain(tt,:,:), 'all') *dx/1000 *dy/1000;
    dttDryCellDeltaPlainFraction(tt) = dttDryCellDeltaPlainTotal(tt)/dttLowTideAreaOnshore(tt);
    dttWetCellDeltaPlainFraction(tt) = 1 - dttDryCellDeltaPlainFraction(tt);
end

%% SAVE WET DELTA PLAIN FRACTION WORKSPACE VAR
save(['../MATLAB datastore/' runID '_metrics_HPC.mat'], 'dttWetCellDeltaPlainFraction', '-append');

%% PLOTS PREAMBLE
% tYears = [0:12.5*mf/(24*365):(size(dttLowTideAreaOnshore, 1)-1)*12.5*mf/(24*365)]; % OG sims
tYears = [144*12.5*mf/(24*365):12.5*mf/(24*365):287*12.5*mf/(24*365)]; % ext sims

%% PLOTS
% test plots
time = 144;

figure(9991)
if size(dttLowTideShorelineRegion, 1) ==144
%     imagesc(permute(dttWetCells((time*4)+1,:,:), [2 3 1]))
    imagesc(permute(dttWetCells((time*4)-2,:,:), [2 3 1]))
else
%     imagesc(permute(dttWetCells((time*4),:,:), [2 3 1]))
    imagesc(permute(dttWetCells((time*4)-3,:,:), [2 3 1]))
end
% hold on
% imagesc(permute(dttLowTideFrontLogical(end,:,:), [2 3 1]), 'AlphaData', permute(dttLowTideFrontLogical(end,:,:), [2 3 1]));
set(gca, 'ydir', 'normal')

figure(9993)
imagesc(permute(dttWetCellsDeltaPlain(time,:,:), [2 3 1]))
set(gca, 'ydir', 'normal')

figure(9994)
imagesc(permute(dttDryCellsDeltaPlain(time,:,:), [2 3 1]))
set(gca, 'ydir', 'normal')

% WET FRACTION OVER TIME
kRange = [23 0];

dttWetFractionPlot = figure(9995);
dttWetFractionPlot.Position = [2000 100 920 480];
clf
plot(tYears, dttWetCellDeltaPlainFraction, 'k-')
hold on
plot(tYears, movmean(dttWetCellDeltaPlainFraction, kRange, 'omitnan'), 'k--')
% plot(tYears, movmax(dttWetCellDeltaPlainFraction, kRange, 'omitnan'), 'r-.')
% plot(tYears, movmin(dttWetCellDeltaPlainFraction, kRange, 'omitnan'), 'r-.')
% xlim([0 36]) % OG sims
xlim([36 72]) % ext sims
xticks(0:6:72)
xlabel('Time, {\itt} [yr]')
ylim([0 1])
ylabel({'Wet fraction of delta plain, {\ita_w} [-]'})
legend(runID, [num2str(((kRange(1)+kRange(2)+1)/4)) 'yr moving mean'], 'location', 'northwest')
grid on

%% EXPORT PLOT
% exportgraphics(dttWetFractionPlot, ['../MATLAB export/Final/quasiEquilibrium/dttWetFractionDeltaPlain_' runID '_v2.png'], 'resolution', 150);

%% FINISH ALARM
% load gong
% sound(y, Fs)