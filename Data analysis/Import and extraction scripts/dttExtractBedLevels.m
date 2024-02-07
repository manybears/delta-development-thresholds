% Date:     19/12/2022
% Author:   ERS

% This script extracts bed level data from imported FLOW mapfile data. It
% also concatenates bed level data for manual Domain Decomposition sims.

%% EXTRACT BED LEVEL DATA
if exist('dttMapData', 'var') == 1
    if exist('dttBedLevel', 'var') == 0
        dttBedLevel = vs_let(dttMapData, 'map-sed-series', 'DPS', []);
        dttBedLevel = dttBedLevel(:, 4002:end-1, 2:end-1); % trim boundary cell data
    else
    end
elseif exist('dttMapDataDD', 'var') == 1
    if exist('dttBedLevel', 'var') == 0
        dttBedLevelDD = cell(size(dttMapDataDD));
        for ii = 1:size(dttMapDataDD, 1)
            dttBedLevelDD{ii} = vs_let(dttMapDataDD{ii}, 'map-sed-series', 'DPS', []);
            dttBedLevelDD{ii} = dttBedLevelDD{ii}(:, 2:end-1, 2:end-1); % trim boundary cell data
        end
        dttBedLevelChannel = dttBedLevelDD{end};
                
        % concatenate basin subdomains (omitting channel):
        dttBedLevel = cat(3, dttBedLevelDD{1:19}); % amend endpoint manually
    else
    end
else
end

clear dttBedLevelDD;