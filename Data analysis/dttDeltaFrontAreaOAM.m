% Date:     03/01/2023
% Author:   ERS

% This script determines the total area of the delta, based on the contour
% defined by script dttDeltaFrontToeLine.

%% RUN THESE SCRIPTS FIRST
% dttDeltaFrontToeLineOAM

%% DETERMINE TOTAL DELTA AREA (METHOD 1)
dttDeltaArea = zeros(size(dttDeltaSeaAnglesMatrix, 1), 1);
dttDeltaAreaLogical = cell(size(dttDeltaSeaAnglesMatrix, 1), 1);
for tt = dttStart:size(dttDeltaSeaAnglesMatrix, 1)
    dttDeltaAreaLogical{tt} = dttDeltaSeaAnglesMatrix{tt}(21:end,:) < 70;
    dttDeltaArea(tt) = sum(dttDeltaAreaLogical{tt}, 'all') .* dx/1000 .* dy/1000;
end

%% DETERMINE TOTAL DELTA AREA (METHOD 2)
% dttDeltaContourAlt = cell(size(dttDeltaLogical, 1), 1);
% 
% for tt = dttStart:size(dttDeltaLogical, 1)
%     dttDeltaContourAlt{tt} = contour(dttDeltaSeaAnglesMatrix{tt}(21:end, :), [70 70]);
% end
% 
% dttDeltaAreas = cell(size(dttDeltaContourAlt, 1), 1);
% dttDeltaAreaOnshore = zeros(size(dttDeltaContourAlt, 1), 1);
% dttDeltaAreaOffshore = zeros(size(dttDeltaContourAlt, 1), 1);
% 
% for tt = 1:size(dttDeltaContourAlt, 1)
%     clear nLow nHigh dLow dHigh;
%     
%     if size(dttDeltaContourAlt{tt}, 2) ~= 0
%         nLow(1) = 1;                                            %n: indices where given curve starts
%         dLow(1) = dttDeltaContourAlt{tt}(2,1);                   %d: distance to the next index
%         
%         ii = 1;
%         
%         while true
%             nLow(ii+1) = nLow(ii)+dLow(ii)+1;                   %calculate index of next startpoint
%             
%             if nLow(ii+1) > numel(dttDeltaContourAlt{tt}(2,:))   %breaking condition
%                 nLow(end) = [];                                 %delete breaking point
%                 break
%             end
%             
%             dLow(ii+1) = dttDeltaContourAlt{tt}(2, nLow(ii+1));  %get next distance
%             ii = ii+1;
%         end
%         
%         sel = find(ismember(dttDeltaContourAlt{tt}(1,nLow), 70)); % set manually to OA used
%         idxLow = nLow(sel);                                     %indices belonging to choice
%         LLow = dttDeltaContourAlt{tt}(2, nLow(sel) );            %length of curve array
%         
%         % calculate area and plot all contours
%         dttDeltaAreaOnshore(tt) = 0;
%         dttDeltaAreaOffshore(tt) = 0;
%         for ii = 1:numel(idxLow)
%             x{ii} = dttDeltaContourAlt{tt}(1, idxLow(ii)+1:idxLow(ii)+LLow(ii));
%             y{ii} = dttDeltaContourAlt{tt}(2, idxLow(ii)+1:idxLow(ii)+LLow(ii));
%             
%             dttDeltaAreas{tt}(ii) = polyarea(x{ii},y{ii}) *dx/1000 * dy/1000;
%             if any(dttDeltaContourAlt{tt}(2, idxLow(ii)+1:idxLow(ii)+LLow(ii)) <= 1)
%                 dttDeltaAreaOnshore(tt) = dttDeltaAreaOnshore(tt) + dttDeltaAreas{tt}(ii);
%             else
%                 dttDeltaAreaOffshore(tt) = dttDeltaAreaOffshore(tt) + dttDeltaAreas{tt}(ii);
%             end
%         end
%     else
%         dttDeltaAreas{tt} = 0;
%         dttDeltaAreaOnshore(tt) = 0;
%         dttDeltaAreaOffshore(tt) = 0;
%     end
% end