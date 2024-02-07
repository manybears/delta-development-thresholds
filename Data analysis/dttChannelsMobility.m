% Date:     31/08/2023
% Author:   ERS

% This script determines channel mobility, defined as proportional overlap
% of (active) channelised cells between tides.

% v2 (22/09/2023) - Amended to make use of dttDeltaOrNot and only analyse
% channel mobility when a delta exists.

%% RUN THESE SCRIPTS FIRST
% dttChannelsAlt;

%% LOAD DATA
% runID = 'W2.0T6.0';
% load(['..\MATLAB datastore\' runID '_metrics_HPC.mat'], 'dttLowTideFrontContour', 'dttIsDelta', 'dttChannelActive');

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

%% DETERMINE CHANNEL MOBILITY
dttChannelOverlap = zeros(size(dttChannelActive));
dttChannelOverlapFraction = zeros(size(dttChannelActive, 1), 1);
dttChannelMobility = zeros(size(dttChannelActive, 1), 1);
dttChannelMobility(1) = NaN;
for tt = 2:size(dttLowTideFrontContour, 1)
    if isequal(dttIsDelta(tt), 0) % channel mobility counted only when given instance of morphology is deltaic
        dttChannelMobility(tt) = NaN;
    else
        dttChannelOverlap(tt,:,:) = dttChannelActive(tt,:,:) .* dttChannelActive(tt-1,:,:) .* dttLowTideShorelineRegion(tt,:,:); % Determine overlapping channel locations over consecutive tides (within shoreline)
        dttChannelOverlapFraction(tt) = (sum(dttChannelOverlap(tt,:,:), 'all') / sum((dttChannelActive(tt,:,:) .* dttLowTideShorelineRegion(tt,:,:)), 'all'));
        dttChannelMobility(tt) = 1 - dttChannelOverlapFraction(tt); 
    end
end

% Determine fraction of overlapping per-tide channels w.r.t total channels (total measured at present rather than previous time)
% dttChannelMobility = zeros(size(dttChannelOverlap, 1), 1);
% for tt = 2:size(dttChannelOverlap, 1)
%     dttChannelMobility(tt) = sum(dttChannelOverlap(tt,:,:), 'all') / sum(dttChannelActive(tt,:,:), 'all');
% end

%% TEST PLOTS
% figure(771)
% clf reset
% imshow(permute(dttChannelActive(end-1,:,:), [2 3 1]))
% axis equal
% set(gca, 'yDir', 'Normal')
% 
% figure(772)
% clf reset
% imshow(permute(dttChannelOverlap(end-1,:,:), [2 3 1]))
% axis equal
% set(gca, 'yDir', 'Normal')

% figure(780)
% clf reset
% plot(dttChannelOverlapFraction)

figure(781)
clf reset
plot(dttChannelMobility)
ylim([0 0.3])

% figure(782)
% clf reset
% imshow(permute(dttLowTideShorelineRegion(end,:,:), [2 3 1]))
% axis equal
% set(gca, 'yDir', 'Normal')

%% SAVE CHANNEL MOBILITY VAR
% save(['..\MATLAB datastore\' runID '_metrics_HPC.mat'], 'dttChannelMobility', '-append');

%% SCRIPT FINISH ALARM
% load gong
% sound(y, Fs)