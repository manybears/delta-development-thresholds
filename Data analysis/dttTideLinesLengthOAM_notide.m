% Date:     10/01/2023
% Author:   ERS

% This script determines the length of the low and high tideline contours
% defined by script dttTideLines.

% v2 (22/03/2023) - amended for use with updated OAM TideLines method

%% RUN THESE SCRIPTS FIRST
% dttTideLinesOAM;

%% DETERMINE TIDE LINE LENGTHS
% % DEFINE TIDELINE CONTOUR OBJECTS
% dttLowTideContour = cell(size(dttLowTideLogicalEroded, 1), 1);
% dttHighTideContour = cell(size(dttHighTideLogicalEroded, 1), 1);
% 
% for tt = dttStart:size(dttHighTideLogicalEroded, 1)
%     dttLowTideContour{tt} = contour(permute(dttLowTideLogicalEroded(tt, :, :), [2 3 1]), [1 1]);
%     dttHighTideContour{tt} = contour(permute(dttHighTideLogicalEroded(tt, :, :), [2 3 1]), [1 1]);
% end

% IDENTIFY SIZE AND INDEX POSITION OF LONGEST CONTOUR
dttLowTideContourMax = zeros(size(dttLowTideLogical, 1), 1);
dttLowTideContourIdx = zeros(size(dttLowTideLogical, 1), 1);
% dttHighTideContourMax = zeros(size(dttHighTideLogical, 1), 1);
% dttHighTideContourIdx = zeros(size(dttHighTideLogical, 1), 1);

for tt = dttStart:size(dttLowTideLogical, 1)
    if isempty(dttLowTideFrontContour{tt}) == 0
        [dttLowTideContourMax(tt), dttLowTideContourIdx(tt)] = max(dttLowTideFrontContour{tt}(2,:));
    else
    end
    
%     if isempty(dttHighTideFrontContour{tt}) == 0
%         [dttHighTideContourMax(tt), dttHighTideContourIdx(tt)] = max(dttHighTideFrontContour{tt}(2,:));
%     else
%     end
end

% DETERMINE LENGTHS OF INDIVIDUAL COASTLINE CONTOUR ELEMENTS
dttLowTideContourElementLength = cell(size(dttLowTideLogical, 1), 1);
% dttHighTideContourElementLength = cell(size(dttHighTideLogical, 1), 1);
for tt = dttStart:size(dttLowTideLogical, 1)
    dttLowTideContourElementLength{tt} = zeros(size(dttLowTideContourMax(tt)));
    for nn = dttLowTideContourIdx(tt)+2:dttLowTideContourIdx(tt)+dttLowTideContourMax(tt)
        dttLowTideContourElementLength{tt}(nn - dttLowTideContourIdx(tt)) = ...
            dx/1000 * sqrt((dttLowTideFrontContour{tt}(1, nn) - dttLowTideFrontContour{tt}(1, nn-1))^2 + ...
            (dttLowTideFrontContour{tt}(2, nn) - dttLowTideFrontContour{tt}(2, nn-1))^2);
    end
    
%     dttHighTideContourElementLength{tt} = zeros(size(dttHighTideContourMax(tt)));
%     for nn = dttHighTideContourIdx(tt)+2:dttHighTideContourIdx(tt)+dttHighTideContourMax(tt)
%         dttHighTideContourElementLength{tt}(nn - dttHighTideContourIdx(tt)) = ...
%             dx/1000 * sqrt((dttHighTideFrontContour{tt}(1, nn) - dttHighTideFrontContour{tt}(1, nn-1))^2 + ...
%             (dttHighTideFrontContour{tt}(2, nn) - dttHighTideFrontContour{tt}(2, nn-1))^2);
%     end
end

% DETERMINE COASTLINE LENGTH
dttCoastNo = 22; % number of first row of cells past the regional coastline

dttLowTideIndex = cell(size(dttLowTideLogical, 1), 1);
dttLowTideLength = zeros(size(dttLowTideLogical, 1), 1);
% dttHighTideIndex = cell(size(dttHighTideLogical, 1), 1);
% dttHighTideLength = zeros(size(dttHighTideLogical, 1), 1);

for tt = dttStart:size(dttLowTideLogical, 1)
    dttLowTideIndex{tt} = find(dttLowTideFrontContour{tt}(2,dttLowTideContourIdx(tt)+1 : ...
        dttLowTideContourIdx(tt)+dttLowTideContourMax(tt)) >= dttCoastNo);
    dttLowTideLength(tt) = sum(dttLowTideContourElementLength{tt}...
        (min(dttLowTideIndex{tt}) : max(dttLowTideIndex{tt})));
    
%     dttHighTideIndex{tt} = find(dttHighTideFrontContour{tt}(2,dttHighTideContourIdx(tt)+1 : ...
%         dttHighTideContourIdx(tt)+dttHighTideContourMax(tt)) >= dttCoastNo);
%     dttHighTideLength(tt) = sum(dttHighTideContourElementLength{tt}...
%         (min(dttHighTideIndex{tt}) : max(dttHighTideIndex{tt})));
end

% ADD COASTAL "OFFSET" LENGTH TO CALCULATED LENGTHS
% (experiment with this; may be safer to just switch off)
for ii = 1:size(dttLowTideLength, 1)
    if dttLowTideLength(ii) ~= 0
        dttLowTideLength(ii) = dttLowTideLength(ii) + 0.050;
    else
    end
end

% for ii = 1:size(dttHighTideLength, 1)
%     if dttHighTideLength(ii) ~= 0
%         dttHighTideLength(ii) = dttHighTideLength(ii) + 0.050;
%     else
%     end
% end