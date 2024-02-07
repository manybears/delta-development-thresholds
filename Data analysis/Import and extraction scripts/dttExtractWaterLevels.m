% Date:     19/12/2022
% Author:   ERS

% This script extracts water level data from imported FLOW mapfile data. It
% also concatenates water level data for manual Domain Decomposition sims.

%% EXTRACT WATER LEVEL DATA
if exist('dttMapData', 'var') == 1
    if exist('dttWaterLevel', 'var') == 0
        dttWaterLevel = vs_let(dttMapData, 'map-series', 'S1', []);
        dttWaterLevel = dttWaterLevel(:, 4002:end-1, 2:end-1); % trim boundary cell data
    else
    end
elseif exist('dttMapDataDD', 'var') == 1
    if exist('dttWaterLevel', 'var') == 0
        dttWaterLevelDD = cell(size(dttMapDataDD));
        for ii = 1:size(dttMapDataDD, 1)
            dttWaterLevelDD{ii} = vs_let(dttMapDataDD{ii}, 'map-series', 'S1', []);
            dttWaterLevelDD{ii} = dttWaterLevelDD{ii}(:, 2:end-1, 2:end-1); % trim boundary cell data
        end
        dttWaterLevelChannel = dttWaterLevelDD{end};
        
        % to omit channel:
        dttWaterLevel = cat(3, dttWaterLevelDD{1:19}); % amend endpoint manually
        
%         % to include channel:
%         dttWaterLevelBasin = cat(3, dttWaterLevelDD{1:19}); % amend endpoint manually
%         dttWaterLevelChannel = cat(2, dttWaterLevelDD{20:20}); % amend start and end point manually
%         dttWaterLevelChannel = cat(3, zeros([size(dttWaterLevelChannel, 1) ...
%             size(dttWaterLevelChannel, 2) ...
%             ((size(dttWaterLevelBasin, 3) - size(dttWaterLevelChannel, 3))/2)]), ...
%             dttWaterLevelChannel, ...
%             zeros([size(dttWaterLevelChannel, 1) ...
%             size(dttWaterLevelChannel, 2) ...
%             ((size(dttWaterLevelBasin, 3) - size(dttWaterLevelChannel, 3))/2)]));
%         dttWaterLevel = cat(2, dttWaterLevelChannel, dttWaterLevelBasin);
    else
    end
else
end

clear dttWaterLevelDD; % dttWaterLevelBasin dttWaterLevelChannel;

%% LAST 8 TIMEPOINTS ONLY
% if exist('dttMapData', 'var') == 1
%     if exist('dttWaterLevel', 'var') == 0
%         dttWaterLevel = vs_let(dttMapData, 'map-series', 'S1', []);
%         dttWaterLevel = dttWaterLevel(:, 4002:end-1, 2:end-1); % trim boundary cell data
%     else
%     end
% elseif exist('dttMapDataDD', 'var') == 1
%     if exist('dttWaterLevel', 'var') == 0
%         dttWaterLevelDD = cell(size(dttMapDataDD));
%         for ii = 1:size(dttMapDataDD, 1)
%             dttWaterLevelDD{ii} = vs_let(dttMapDataDD{ii}, 'map-series', {570:577}, 'S1', []);
%             dttWaterLevelDD{ii} = dttWaterLevelDD{ii}(:, 2:end-1, 2:end-1); % trim boundary cell data
%         end
%         dttWaterLevelChannel = dttWaterLevelDD{end};
%         
%         % to omit channel:
%         dttWaterLevel = cat(3, dttWaterLevelDD{1:19}); % amend endpoint manually
%         
% %         % to include channel:
% %         dttWaterLevelBasin = cat(3, dttWaterLevelDD{1:19}); % amend endpoint manually
% %         dttWaterLevelChannel = cat(2, dttWaterLevelDD{20:20}); % amend start and end point manually
% %         dttWaterLevelChannel = cat(3, zeros([size(dttWaterLevelChannel, 1) ...
% %             size(dttWaterLevelChannel, 2) ...
% %             ((size(dttWaterLevelBasin, 3) - size(dttWaterLevelChannel, 3))/2)]), ...
% %             dttWaterLevelChannel, ...
% %             zeros([size(dttWaterLevelChannel, 1) ...
% %             size(dttWaterLevelChannel, 2) ...
% %             ((size(dttWaterLevelBasin, 3) - size(dttWaterLevelChannel, 3))/2)]));
% %         dttWaterLevel = cat(2, dttWaterLevelChannel, dttWaterLevelBasin);
%     else
%     end
% else
% end
% 
% clear dttWaterLevelDD; % dttWaterLevelBasin dttWaterLevelChannel;
% 
% dttWaterLevel = [zeros(569, 360, 790); dttWaterLevel];