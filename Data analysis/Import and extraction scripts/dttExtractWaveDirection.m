% Date:     18/07/2023
% Author:   ERS

% This script extracts mean wave direction data from imported FLOW
% mapfile data. It also concatenates this data for manual Domain
% Decomposition sims.

%% EXTRACT (MEAN) WAVE DIRECTION DATA
if exist('dttMapData', 'var') == 1
    if exist('dttMeanWaveDirection', 'var') == 0
        dttMeanWaveDirection = vs_let(dttMapData, 'map-rol-series', 'TETA', []);
        dttMeanWaveDirection = dttMeanWaveDirection(:, 4002:end-1, 2:end-1); % trim boundary cell data
    else
    end
elseif exist('dttMapDataDD', 'var') == 1
    if exist('dttMeanWaveDirection', 'var') == 0
        dttMeanWaveDirectionDD = cell(size(dttMapDataDD));
        for ii = 1:size(dttMapDataDD, 1)
            dttMeanWaveDirectionDD{ii} = vs_let(dttMapDataDD{ii}, 'map-rol-series', 'TETA', []);
            dttMeanWaveDirectionDD{ii} = dttMeanWaveDirectionDD{ii}(:, 2:end-1, 2:end-1); % trim boundary cell data
        end
        
        % to omit channel:
        dttMeanWaveDirection = cat(3, dttMeanWaveDirectionDD{1:19}); % amend endpoint manually
    else
    end
else
end

clear dttMeanWaveDirectionDD;