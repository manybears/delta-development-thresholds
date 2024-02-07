% Date:     15/09/2023
% Author:   ERS

% This script skeletonizes the (active) channel network and counts the
% number [[and order (not implemented)]] of (active) channels present. Also
% counts total number of channel nodes/branchpoints, total number of
% channels crossing shoreline, and estimates total number of channel
% elements from these two measures.

%% LOAD DATA
% runID = 'W0.0T0.0';
% load(['../MATLAB datastore/' runID '_metrics_HPC.mat'], 'dttChannelActive', 'dttChannelInactive', 'dttLowTideFrontContour', 'dttLowTideFrontLogical');

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

% code here defines shoreline-enclosed region PLUS river channel PLUS 500 m
% to either side of river channel. Allows for isolation of the single
% largest connected skeletonised network element, whilst eliminating parts
% of this network which exit then re-enter the shoreline-enclosed region
% (using later bwareafilt method)
dttLowTideShorelineRegionAndRiver = dttLowTideShorelineRegion;
dttLowTideShorelineRegionAndRiver(:, 1:20, 371:420) = 1;

%% PRODUCE CHANNEL SKELETON NETWORK
% SKELETONIZE ACTIVE CHANNELS
dttChannelActiveSkeleton = false(size(dttChannelActive));
for tt = 1:145
%     dttChannelActiveSkeleton(tt, :, :) = bwskel(permute(logical(dttChannelActive(tt,:,:)), [2 3 1]), 'MinBranchLength', 2);
    dttChannelActiveSkeleton(tt, :, :) = bwmorph(permute(logical(dttChannelActive(tt,:,:)), [2 3 1]), 'skel', 'Inf');
%     dttChannelActiveSkeleton(tt, :, :) = bwmorph(permute(logical(dttChannelActive(tt,:,:) + dttChannelInactive(tt,:,:)), [2 3 1]), 'skel', 'Inf');
end

%% REMOVE SPURS
dttChannelActiveSkeleton_0 = zeros(size(dttChannelActiveSkeleton));
for tt = 1:size(dttChannelActive, 1)
    dttChannelActiveSkeleton_0(tt,:,:) = bwmorph(permute(dttChannelActiveSkeleton(tt,:,:), [2 3 1]), 'spur');
end

%% OMIT REGIONS OF SKELETON NETWORK OUTSIDE SHORELINE REGION
if isequal(size(dttChannelActiveSkeleton, 1), size(dttLowTideShorelineRegion, 1))
    dttChannelActiveSkeleton_1 = dttChannelActiveSkeleton_0 .* dttLowTideShorelineRegionAndRiver;
else
    dttChannelActiveSkeleton_1 = dttChannelActiveSkeleton_0 .* [dttLowTideShorelineRegionAndRiver; zeros(1, 360, 790)];
end

% CONVERT DOUBLE MATRIX TO LOGIC MATRIX
dttChannelActiveSkeleton_1 = logical(dttChannelActiveSkeleton_1);

% dttChannelActiveSkeleton_1 = logical(dttChannelActiveSkeleton_0); % Use if skipping omission of network outside shoreline

%% ISOLATE MAIN CHANNEL NETWORK
dttChannelActiveSkeleton_2 = zeros(size(dttChannelActiveSkeleton));
for tt = 1:size(dttChannelActive, 1)
    dttChannelActiveSkeleton_2(tt,:,:) = bwareafilt(permute(dttChannelActiveSkeleton_1(tt,:,:), [2 3 1]), 1);
end

%% THIN NETWORK TO REMOVE RARE "BLOCKS" OF CHANNEL (AS THESE CAUSE INCORRECT BRANCH COUNTS)
dttChannelActiveSkeleton_3 = zeros(size(dttChannelActiveSkeleton));
for tt = 1:size(dttChannelActive, 1)
    dttChannelActiveSkeleton_3(tt,:,:) = bwmorph(permute(dttChannelActiveSkeleton_2(tt,:,:), [2 3 1]), 'thin', 'Inf');
%     dttChannelActiveSkeleton_3(tt,:,:) = bwmorph(permute(dttChannelActiveSkeleton_1(tt,:,:), [2 3 1]), 'thin', 'Inf'); % use if skipping main network isolation step
end

%% COUNT "BRANCHPOINTS"
dttChannelActiveSkeletonNodes = zeros(size(dttChannelActiveSkeleton));
dttChannelActiveSkeletonNodesCount = zeros(size(dttChannelActiveSkeleton, 1), 1);
for tt = 1:size(dttLowTideShorelineRegion, 1)
    dttChannelActiveSkeletonNodes(tt,:,:) = bwmorph(permute(dttChannelActiveSkeleton_3(tt,:,:), [2 3 1]), 'branchpoints');
%     dttChannelActiveSkeletonNodesCount(tt) = sum(dttChannelActiveSkeletonNodes(tt,:,:), 'all');
    dttChannelActiveSkeletonNodesCount(tt) = sum(dttChannelActiveSkeletonNodes(tt,:,:), 'all');
end

% remove count of false Y-branch within initial river mouth
dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount - 1;

%% READ ACTIVE CHANNELS ALONG LOW TIDE SHORELINE CONTOUR
dttLowTideFrontContourActiveChannels = cell(size(dttLowTideFrontContour, 1), 1);
dttLowTideFrontContourActiveChannelsAlt = cell(size(dttLowTideFrontContour, 1), 1);
dttLowTideFrontContourMax = zeros(size(dttLowTideFrontContour, 1), 1);
dttLowTideFrontContourIndex = zeros(size(dttLowTideFrontContour, 1), 1);
for tt = 1:size(dttLowTideFrontContour, 1)
    [dttLowTideFrontContourMax(tt), dttLowTideFrontContourIndex(tt)] = max(dttLowTideFrontContour{tt}(2,:)); % Max returns number of elements in longest contour(max will give incorrect result in rare circumstances, but v unlikely). Index is location of max value
    dttLowTideFrontContourActiveChannels{tt} = zeros(dttLowTideFrontContourMax(tt), 1); % sets number of depth measurements equal to number of elements of max contour at each time
    for nn = dttLowTideFrontContourIndex(tt)+1 : dttLowTideFrontContourIndex(tt) + dttLowTideFrontContourMax(tt)
        dttLowTideFrontContourActiveChannels{tt}(nn - dttLowTideFrontContourIndex(tt)) = ...
            permute(dttChannelActiveSkeleton_3(tt, round(dttLowTideFrontContour{tt}(2,nn)), round(dttLowTideFrontContour{tt}(1,nn))), [2 3 1]); % checks for 1 or 0 at contour node in matrix dttChannelActiveSkeleton_2
    end
end

%% COUNT NUMBER OF UNIQUE ACTIVE CHANNELS INTERSECTING LOW TIDE SHORELINE
dttChannelActiveNo = zeros(size(dttLowTideFrontContourActiveChannels));
dttChannelActiveCounting = cell(size(dttLowTideFrontContourActiveChannels));
for tt = 1:size(dttLowTideFrontContourActiveChannels, 1)
    dttChannelActiveCounting{tt} = bwlabel(dttLowTideFrontContourActiveChannels{tt});
    dttChannelActiveNo(tt) = max(dttChannelActiveCounting{tt});
end

%% DETERMINE EULER NUMBER OF NETWORK
% Euler number in this context is used as a count of fully enclosed regions
% of the channel network. Any such enclosed region implied the presence of
% a channel confluence, and hence can be used to discount clear confluences
% to give a more accurate count of actual difluences in the network.
dttChannelActiveEulerNumber = zeros(size(dttChannelActiveSkeleton_3, 1), 1);
for tt = 1: size(dttChannelActiveSkeleton_3, 1)
    dttChannelActiveEulerNumber(tt) = bweuler(permute(dttChannelActiveSkeleton_3(tt,:,:), [2 3 1]));
end

%% SAVE NODE, CHANNEL CROSSING, AND EULER NUMBER COUNTS
% save(['../MATLAB datastore/' runID '_metrics_HPC.mat'], 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber', '-append')

% % alternate var names for full network version (i.e. not just network within shoreline)
% dttChannelActiveSkeletonNodesCountFull = dttChannelActiveSkeletonNodesCount;
% dttChannelActiveEulerNumberFull = dttChannelActiveEulerNumber;
% save(['../MATLAB datastore/' runID '_metrics_HPC.mat'], 'dttChannelActiveSkeletonNodesCountFull', 'dttChannelActiveEulerNumberFull', '-append')

%% test plots
t = 144;

figure(5551)
clf reset
imshow(labeloverlay(permute(dttChannelActive(t,:,:), [2 3 1]), permute(dttChannelActiveSkeleton_3(t,:,:), [2 3 1]), 'Transparency', 0))
set(gca, 'yDir', 'normal')

figure(5552)
clf reset
imshow(permute(dttChannelActiveSkeleton(t,:,:), [2 3 1]));
set(gca, 'yDir', 'normal')

figure(55525)
clf reset
imshow(permute(dttChannelActiveSkeleton_0(t,:,:), [2 3 1]));
set(gca, 'yDir', 'normal')

figure(5553)
clf reset
imshow(permute(dttChannelActiveSkeleton_1(t,:,:), [2 3 1]));
set(gca, 'yDir', 'normal')

% figure(5554)
% clf reset
% imshow(permute(dttChannelActiveSkeleton_2(t,:,:), [2 3 1]));
% hold on
% set(gca, 'yDir', 'normal')

figure(55542)
clf reset
imshow(labeloverlay(permute(dttChannelActiveSkeleton_3(t,:,:), [2 3 1]), permute(dttLowTideFrontLogical(t,:,:), [2 3 1]), 'Transparency', 0.5));
hold on
set(gca, 'yDir', 'normal')

figure(55545)
clf reset
imshow(labeloverlay(permute(dttChannelActiveSkeleton_3(t,:,:), [2 3 1]), permute(dttChannelActiveSkeletonNodes(t,:,:), [2 3 1]), 'Transparency', 0))
hold on
set(gca, 'yDir', 'normal')

figure(5555)
clf reset
plot(dttChannelActiveSkeletonNodesCount, 'k')
ylabel('Channel skeleton nodes [no.]');
grid on

figure(5556)
clf reset
plot(dttChannelActiveNo, 'k')
grid on

figure(5557)
clf reset
plot(dttChannelActiveEulerNumber, 'k')
grid on

%% test anims
% figure(6551)
% for tt = 1:size(dttChannelActiveSkeleton, 1)
%     clf reset
%     imshow(permute(dttChannelActiveSkeletonNodes(tt,:,:), [2 3 1]));
% end

%%
% figure(6552)
% for tt = 1:size(dttChannelActiveSkeleton, 1)
%     clf reset
%     imshow(labeloverlay(permute(dttChannelActive(tt,:,:), [2 3 1]), permute(dttChannelActiveSkeleton_3(tt,:,:), [2 3 1]), 'Transparency', 0))
%     pause(0.05)
% end

%%
% figure(6553);
% for tt = 1:size(dttChannelActiveSkeleton, 1)
%     clf reset
%     imshow(labeloverlay(permute(dttChannelActiveSkeleton_3(tt,:,:), [2 3 1]), permute(dttChannelActiveSkeletonNodes(tt,:,:), [2 3 1]), 'Transparency', 0))
%     pause(0.1)
% end

%%
% mf = 175;
% 
% blah = figure(6554);
% blah.Position = [0 0 1920 1080];
% for tt = 1:size(dttLowTideFrontLogical, 1)
%     clf reset
%     imagesc(labeloverlay(permute(dttChannelActiveSkeleton_3(tt,:,:), [2 3 1]), permute(dttLowTideFrontLogical(tt,:,:), [2 3 1]), 'Transparency', 0.25, 'colorMap', 'autumn'))
%     set(gca, 'yDir', 'normal')
%     axis equal
% %     pause(0.1)
%     
%     text(10, 330, ['Time elapsed: ',num2str((tt-1)*mf*12.5/(24*365),'%.2f'), ' years'], 'color', 'white', 'FontSize', 18);
%     dttAnimationFrame(tt) = getframe(gcf);
% end

%% EXPORT ANIMATION
% writerObj = VideoWriter(['../MATLAB export/Final/channels/channelCounting/dtt' runID '_channelSkeletonAndShoreline_ROUGH'], 'MPEG-4');
% writerObj.FrameRate = 6;
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