% Date:     10/01/2023
% Author:   ERS

% This script determines the areas of regions bounded by the "regional"
% coastline and both the low and high tide lines as determined in script
% dttTideLines.

% v2 (22/03/2023) - adapted to new OAM method.

%% RUN THESE SCRIPTS FIRST
% dttTideLinesOAM;

%% DETERMINE TIDAL AREAS METHOD 1
% % NOTE: THIS METHOD INCLUDES ANY "OFFSHORE" ISLANDS LYING OUTSIDE THE DELTA CONTOUR
% dttDeltaAreaLowTide = zeros(size(dttLowTideLogical, 1), 1);
% dttDeltaAreaHighTide = zeros(size(dttLowTideLogical, 1), 1);
% for tt = dttStart:size(dttLowTideLogical, 1) % coastline position may need calibration
%     dttDeltaAreaLowTide(tt) = sum(dttLowTideLogical(tt, 22:end, :), 'all') * (dx/1000) * (dy/1000);
%     dttDeltaAreaHighTide(tt) = sum(dttHighTideLogical(tt, 22:end, :), 'all') * (dx/1000) * (dy/1000);
% end

%% DETERMINE TIDAL AREAS METHOD 2
% Below adapted from example at:
% https://stackoverflow.com/questions/20040661/finding-2d-area-defined-by-contour-lines-in-matlab.
% This method additionally distinguishes between on and off-shore areas.

dttLowTideContourAlt = cell(size(dttLowTideLogical, 1), 1);
dttHighTideContourAlt = cell(size(dttHighTideLogical, 1), 1);

for tt = dttStart:size(dttHighTideLogical, 1) % must set desired opening angle manually
    dttLowTideContourAlt{tt} = contour(dttLowTideSeaAnglesMatrix{tt}(21:end, :), [70 70]);
    dttHighTideContourAlt{tt} = contour(dttHighTideSeaAnglesMatrix{tt}(21:end, :), [70 70]);
end

dttLowTideAreas = cell(size(dttLowTideContourAlt, 1), 1);
dttHighTideAreas = cell(size(dttHighTideContourAlt, 1), 1);
dttLowTideAreaOnshore = zeros(size(dttLowTideContourAlt, 1), 1);
dttHighTideAreaOnshore = zeros(size(dttHighTideContourAlt, 1), 1);
dttLowTideAreaOffshore = zeros(size(dttLowTideContourAlt, 1), 1);
dttHighTideAreaOffshore = zeros(size(dttHighTideContourAlt, 1), 1);

for tt = 1:size(dttLowTideContourAlt, 1)
    clear nLow nHigh dLow dHigh;
        
    if size(dttLowTideContourAlt{tt}, 2) ~= 0
        nLow(1) = 1;                                               %n: indices where given curve starts
        dLow(1) = dttLowTideContourAlt{tt}(2,1);                   %d: distance to the next index
        
        ii = 1;
        
        while true
            nLow(ii+1) = nLow(ii)+dLow(ii)+1;                      %calculate index of next startpoint
            
            if nLow(ii+1) > numel(dttLowTideContourAlt{tt}(2,:))   %breaking condition
                nLow(end) = [];                                    %delete breaking point
                break
            end
            
            dLow(ii+1) = dttLowTideContourAlt{tt}(2, nLow(ii+1));  %get next distance
            ii = ii+1;
        end
        
        sel = find(ismember(dttLowTideContourAlt{tt}(1,nLow), 70)); % set manually to OA used
        idxLow = nLow(sel);                                        %indices belonging to choice
        LLow = dttLowTideContourAlt{tt}(2, nLow(sel) );            %length of curve array
        
        % calculate area and plot all contours of the same level
        dttLowTideAreaOnshore(tt) = 0;
        dttLowTideAreaOffshore(tt) = 0;
        for ii = 1:numel(idxLow)
            x{ii} = dttLowTideContourAlt{tt}(1, idxLow(ii)+1:idxLow(ii)+LLow(ii));
            y{ii} = dttLowTideContourAlt{tt}(2, idxLow(ii)+1:idxLow(ii)+LLow(ii));

            dttLowTideAreas{tt}(ii) = polyarea(x{ii},y{ii}) *dx/1000 * dy/1000;
            if any(dttLowTideContourAlt{tt}(2, idxLow(ii)+1:idxLow(ii)+LLow(ii)) <= 1)
                dttLowTideAreaOnshore(tt) = dttLowTideAreaOnshore(tt) + dttLowTideAreas{tt}(ii);
            else
                dttLowTideAreaOffshore(tt) = dttLowTideAreaOffshore(tt) + dttLowTideAreas{tt}(ii);
            end
        end
    else
        dttLowTideAreas{tt} = 0;
        dttLowTideAreaOnshore(tt) = 0;
        dttLowTideAreaOffshore(tt) = 0;
    end
    
    if size(dttHighTideContourAlt{tt}, 2) ~= 0
        nHigh(1) = 1;                                           %n: indices where given curve starts
        dHigh(1) = dttHighTideContourAlt{tt}(2,1);                 %d: distance to the next index
        
        ii = 1;
        
        while true
            nHigh(ii+1) = nHigh(ii)+dHigh(ii)+1;                %calculate index of next startpoint
            
            if nHigh(ii+1) > numel(dttHighTideContourAlt{tt}(2,:)) %breaking condition
                nHigh(end) = [];                                %delete breaking point
                break
            end
            
            dHigh(ii+1) = dttHighTideContourAlt{tt}(2, nHigh(ii+1));%get next distance
            ii = ii+1;
        end
        
        sel = find(ismember(dttHighTideContourAlt{tt}(1,nHigh), 70)); % set manually to OA used
        idxHigh = nHigh(sel);                                   %indices belonging to choice
        LHigh = dttHighTideContourAlt{tt}(2, nHigh(sel) );         %length of contour array
        
        % calculate area and plot all contours of the same level
        dttHighTideAreaOnshore(tt) = 0;
        dttHighTideAreaOffshore(tt) = 0;
        for ii = 1:numel(idxHigh)
            x{ii} = dttHighTideContourAlt{tt}(1, idxHigh(ii)+1:idxHigh(ii)+LHigh(ii));
            y{ii} = dttHighTideContourAlt{tt}(2, idxHigh(ii)+1:idxHigh(ii)+LHigh(ii));
            
            %         figure(ii)
            %         patch(x{ii},y{ii},'red');            %just for displaying purposes
            %partial areas of all contours of the contour object
            dttHighTideAreas{tt}(ii) = polyarea(x{ii},y{ii}) *dx/1000 * dy/1000;
            if any(dttHighTideContourAlt{tt}(2, idxHigh(ii)+1:idxHigh(ii)+LHigh(ii)) <= 1)
                dttHighTideAreaOnshore(tt) = dttHighTideAreaOnshore(tt) + dttHighTideAreas{tt}(ii);
            else
                dttHighTideAreaOffshore(tt) = dttHighTideAreaOffshore(tt) + dttHighTideAreas{tt}(ii);
            end
        end
    else
        dttHighTideAreas{tt} = 0;
        dttHighTideAreaOnshore(tt) = 0;
        dttHighTideAreaOffshore(tt) = 0;
    end
end