% Date:     22/09/2023
% Author:   ERS

% This script determines whether a delta has been produced in a simulation
% or not, based on a threshold value of active channel area within the
% low-tide/MSL shoreline.

%% IMPORT AND ARRANGE DATA
runID = 'W1.6T6.0ext';
load(['..\MATLAB datastore\' runID '_metrics_HPC.mat'], 'dttChannelActive', 'dttLowTideFrontContour', 'mf')

%% DETERMINE LOGICAL MATRICES OF REGIONS ENCLOSED BY LOW TIDE SHORELINE AND INITIAL COASTLINE
dttLowTideFrontContourMax = zeros(size(dttLowTideFrontContour, 1), 1);
dttLowTideFrontContourIndex = zeros(size(dttLowTideFrontContour, 1), 1);
dttLowTideShorelineRegion = zeros(size(dttChannelActive));

for tt = 1:size(dttLowTideFrontContour, 1)
    [dttLowTideFrontContourMax(tt), dttLowTideFrontContourIndex(tt)] = max(dttLowTideFrontContour{tt}(2,:)); % Max returns number of elements in longest contour(max will give incorrect result in rare circumstances, but v unlikely). Index is location of max value.
    dttLowTideShorelineRegion(tt,:,:) = poly2mask(dttLowTideFrontContour{tt}(1, dttLowTideFrontContourIndex(tt)+1 : dttLowTideFrontContourIndex(tt) + dttLowTideFrontContourMax(tt)), ...
        dttLowTideFrontContour{tt}(2, dttLowTideFrontContourIndex(tt)+1 : dttLowTideFrontContourIndex(tt) + dttLowTideFrontContourMax(tt)), ...
        360, 790); % Creates logical `mask' of region enclosed by low tide shoreline contour
end

% FIX TO AVOID COUNT OF 'NEGATIVE' RIVER MOUTH AREA AT EARLY TIMES
dttLowTideShorelineRegion (:, 1:20, :) = 0;

%% DETERMINE TOTAL ACTIVE CHANNEL AREA WITHIN SHORELINE
dttChannelActiveAreaThresh = 2.0e5; % May need some calibration... [m^2]

dx = 25; % [m]
dy = 25; % [m]

dttChannelActiveInner = dttChannelActive ==1 & dttLowTideShorelineRegion ==1;

dttChannelActiveInnerArea = zeros(size(dttChannelActive, 1), 1);
for tt = 1:size(dttLowTideFrontContour, 1)
    dttChannelActiveInnerArea(tt) = sum(dttChannelActiveInner(tt,:,:), 'all') *dx *dy; % [m^2]
end

%% IS IT A DELTA?
dttIsDelta = dttChannelActiveInnerArea > dttChannelActiveAreaThresh;
if isequal(runID(end-2:end), 'ext')
    initialDeltaFormationTime = (find(dttIsDelta, 1, 'first')+143) * (12.5*mf / (24*365))
else
    initialDeltaFormationTime = (find(dttIsDelta, 1, 'first')-1) * (12.5*mf / (24*365))
end

%% SAVE WORKSPACE VARS
% save(['../MATLAB datastore/' runID '_metrics_HPC.mat'], 'dttIsDelta', 'initialDeltaFormationTime', '-append')

%% PLOTS PREAMBLE
if isequal(runID(end-2:end), 'ext')
    tYears = 1800*mf / (24*365) : 12.5*mf / (24*365) : 3600*mf / (24*365);
else
    tYears = 0 : 12.5*mf / (24*365) : 1800*mf / (24*365);
end

%% test plots
figure(9000)
clf reset
% if isequal(str2double(runID(6:8)), 0)
    plot(tYears, dttChannelActiveInnerArea)
% else
%     plot(tYears(2:end), dttChannelActiveInnerArea)
% end
hold on
yline(dttChannelActiveAreaThresh, 'k:')
% yline(dttChannelActiveAreaThresh-1e5, 'k:')
% yline(dttChannelActiveAreaThresh-2e5, 'k:')
% yline(dttChannelActiveAreaThresh-3e5, 'k:')
if isequal(runID(end-2:end), 'ext')
    xlim([36 72])
    xticks([36:6:72])
else
    xlim([0 36])
    xticks([0:6:36])
end

%% test anims
% figure(10000)
% for tt = 1:size(dttLowTideFrontContour, 1)
%     clf reset
%     imshow(permute(dttChannelActiveInner(tt,:,:), [2 3 1]))
%     pause(0.1)
% end