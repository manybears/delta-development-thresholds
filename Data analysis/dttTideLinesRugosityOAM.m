% Date:     12/01/2023
% Author:   ERS

% This script determines the rugosity of the low and high tideline contours
% defined by scripts dttTideLines and dttTideLinesLength. OAM version
% includes Broaddus' (2022) OAM ratio method

%% RUN THESE SCRIPTS FIRST
% dttTideLinesOAM;
% dttTideLinesAreaOAM;
% dttTideLinesLengthOAM;

%% DEFINE COASTLINE (HIGH TIDE) RUGOSITY (BROADDUS METHOD)
% Rugosity here is defined as the ratio of the 120° to 45° OAM coastlines
% (following Broaddus et al. 2022).

% IDENTIFY SIZE AND INDEX POSITION OF LONGEST CONTOUR
dttLowTideContour_45Max = zeros(size(dttLowTideLogical, 1), 1);
dttLowTideContour_45Idx = zeros(size(dttLowTideLogical, 1), 1);
dttLowTideContour_120Max = zeros(size(dttLowTideLogical, 1), 1);
dttLowTideContour_120Idx = zeros(size(dttLowTideLogical, 1), 1);
dttHighTideContour_45Max = zeros(size(dttHighTideLogical, 1), 1);
dttHighTideContour_45Idx = zeros(size(dttHighTideLogical, 1), 1);
dttHighTideContour_120Max = zeros(size(dttHighTideLogical, 1), 1);
dttHighTideContour_120Idx = zeros(size(dttHighTideLogical, 1), 1);

for tt = dttStart:size(dttHighTideLogical, 1)
    if isempty(dttLowTideFrontContour_45{tt}) == 0
        [dttLowTideContour_45Max(tt), dttLowTideContour_45Idx(tt)] = max(dttLowTideFrontContour_45{tt}(2,:));
    end
    
    if isempty(dttLowTideFrontContour_120{tt}) == 0
        [dttLowTideContour_120Max(tt), dttLowTideContour_120Idx(tt)] = max(dttLowTideFrontContour_120{tt}(2,:));
    end
    
    if isempty(dttHighTideFrontContour_45{tt}) == 0
        [dttHighTideContour_45Max(tt), dttHighTideContour_45Idx(tt)] = max(dttHighTideFrontContour_45{tt}(2,:));
    end
    
    if isempty(dttHighTideFrontContour_45{tt}) == 0
        [dttHighTideContour_120Max(tt), dttHighTideContour_120Idx(tt)] = max(dttHighTideFrontContour_120{tt}(2,:));
    end
end

% DETERMINE LENGTHS OF INDIVIDUAL COASTLINE CONTOUR ELEMENTS
dttLowTideContour_45ElementLength = cell(size(dttLowTideLogical, 1), 1);
dttHighTideContour_45ElementLength = cell(size(dttHighTideLogical, 1), 1);
dttLowTideContour_120ElementLength = cell(size(dttLowTideLogical, 1), 1);
dttHighTideContour_120ElementLength = cell(size(dttHighTideLogical, 1), 1);
for tt = dttStart:size(dttLowTideLogical, 1)
    dttLowTideContour_45ElementLength{tt} = zeros(size(dttLowTideContour_45Max(tt)));
    for nn = dttLowTideContour_45Idx(tt)+2:dttLowTideContour_45Idx(tt)+dttLowTideContour_45Max(tt)
        dttLowTideContour_45ElementLength{tt}(nn - dttLowTideContour_45Idx(tt)) = ...
            dx/1000 * sqrt((dttLowTideFrontContour_45{tt}(1, nn) - dttLowTideFrontContour_45{tt}(1, nn-1))^2 + ...
            (dttLowTideFrontContour_45{tt}(2, nn) - dttLowTideFrontContour_45{tt}(2, nn-1))^2);
    end
    
    dttLowTideContour_120ElementLength{tt} = zeros(size(dttLowTideContour_120Max(tt)));
    for nn = dttLowTideContour_120Idx(tt)+2:dttLowTideContour_120Idx(tt)+dttLowTideContour_120Max(tt)
        dttLowTideContour_120ElementLength{tt}(nn - dttLowTideContour_120Idx(tt)) = ...
            dx/1000 * sqrt((dttLowTideFrontContour_120{tt}(1, nn) - dttLowTideFrontContour_120{tt}(1, nn-1))^2 + ...
            (dttLowTideFrontContour_120{tt}(2, nn) - dttLowTideFrontContour_120{tt}(2, nn-1))^2);
    end
    
    dttHighTideContour_45ElementLength{tt} = zeros(size(dttHighTideContour_45Max(tt)));
    for nn = dttHighTideContour_45Idx(tt)+2:dttHighTideContour_45Idx(tt)+dttHighTideContour_45Max(tt)
        dttHighTideContour_45ElementLength{tt}(nn - dttHighTideContour_45Idx(tt)) = ...
            dx/1000 * sqrt((dttHighTideFrontContour_45{tt}(1, nn) - dttHighTideFrontContour_45{tt}(1, nn-1))^2 + ...
            (dttHighTideFrontContour_45{tt}(2, nn) - dttHighTideFrontContour_45{tt}(2, nn-1))^2);
    end
    
    dttHighTideContour_120ElementLength{tt} = zeros(size(dttHighTideContour_120Max(tt)));
    for nn = dttHighTideContour_120Idx(tt)+2:dttHighTideContour_120Idx(tt)+dttHighTideContour_120Max(tt)
        dttHighTideContour_120ElementLength{tt}(nn - dttHighTideContour_120Idx(tt)) = ...
            dx/1000 * sqrt((dttHighTideFrontContour_120{tt}(1, nn) - dttHighTideFrontContour_120{tt}(1, nn-1))^2 + ...
            (dttHighTideFrontContour_120{tt}(2, nn) - dttHighTideFrontContour_120{tt}(2, nn-1))^2);
    end
end

% DETERMINE COASTLINE LENGTH
dttLowTide_45Index = cell(size(dttLowTideLogical, 1), 1);
dttLowTide_45Length = zeros(size(dttLowTideLogical, 1), 1);
dttLowTide_120Index = cell(size(dttLowTideLogical, 1), 1);
dttLowTide_120Length = zeros(size(dttLowTideLogical, 1), 1);
dttHighTide_45Index = cell(size(dttHighTideLogical, 1), 1);
dttHighTide_45Length = zeros(size(dttHighTideLogical, 1), 1);
dttHighTide_120Index = cell(size(dttHighTideLogical, 1), 1);
dttHighTide_120Length = zeros(size(dttHighTideLogical, 1), 1);

for tt = dttStart:size(dttHighTideLogical, 1)
    dttLowTide_45Index{tt} = find(dttLowTideFrontContour_45{tt}(2,dttLowTideContour_45Idx(tt)+1 : ...
        dttLowTideContour_45Idx(tt)+dttLowTideContour_45Max(tt)) >= dttCoastNo);
    dttLowTide_45Length(tt) = sum(dttLowTideContour_45ElementLength{tt}...
        (min(dttLowTide_45Index{tt}) : max(dttLowTide_45Index{tt})));
    
    dttLowTide_120Index{tt} = find(dttLowTideFrontContour_120{tt}(2,dttLowTideContour_120Idx(tt)+1 : ...
        dttLowTideContour_120Idx(tt)+dttLowTideContour_120Max(tt)) >= dttCoastNo);
    dttLowTide_120Length(tt) = sum(dttLowTideContour_120ElementLength{tt}...
        (min(dttLowTide_120Index{tt}) : max(dttLowTide_120Index{tt})));
    
    dttHighTide_45Index{tt} = find(dttHighTideFrontContour_45{tt}(2,dttHighTideContour_45Idx(tt)+1 : ...
        dttHighTideContour_45Idx(tt)+dttHighTideContour_45Max(tt)) >= dttCoastNo);
    dttHighTide_45Length(tt) = sum(dttHighTideContour_45ElementLength{tt}...
        (min(dttHighTide_45Index{tt}) : max(dttHighTide_45Index{tt})));
    
    dttHighTide_120Index{tt} = find(dttHighTideFrontContour_120{tt}(2,dttHighTideContour_120Idx(tt)+1 : ...
        dttHighTideContour_120Idx(tt)+dttHighTideContour_120Max(tt)) >= dttCoastNo);
    dttHighTide_120Length(tt) = sum(dttHighTideContour_120ElementLength{tt}...
        (min(dttHighTide_120Index{tt}) : max(dttHighTide_120Index{tt})));
end

%% BROADDUS RUGOSITY
dttLowTideRugosityBroaddus = dttLowTide_45Length(:) / dttLowTide_120Length(:);
dttHighTideRugosityBroaddus = dttHighTide_45Length(:) / dttHighTide_120Length(:);

%% DEFINE COASTLINE (HIGH TIDE) RUGOSITY (MY METHOD)
% Rugosity here is defined as the ratio of the actual coastline length to
% the coastline length of a hypothetical semi-circular delta of identical
% area.

dttLowTideRugosity = zeros(size(dttLowTideLogical, 1), 1);
dttHighTideRugosity = zeros(size(dttHighTideLogical, 1), 1);
for tt = dttStart:size(dttHighTideLogical, 1)
    dttLowTideRugosity(tt) = 1/sqrt(2*pi()) * dttLowTideLength(tt)/sqrt(dttLowTideAreaOnshore(tt));
    dttHighTideRugosity(tt) = 1/sqrt(2*pi()) * dttHighTideLength(tt)/sqrt(dttHighTideAreaOnshore(tt));
end

%% COMPARISON TEST PLOTS
figure(123)
plot(dttLowTideRugosity, 'k-')
hold on
plot(dttLowTideRugosityBroaddus, 'k--')