% Date:     08/02/2023
% Author:   ERS

% This script extracts suspended sediment concentration data from imported
% FLOW mapfile data. It also concatenates this data for manual Domain
% Decomposition sims.

%% EXTRACT BED LEVEL DATA
if exist('dttMapData', 'var') == 1
    if exist('dttSuspConc', 'var') == 0
        dttSuspConc = vs_let(dttMapData, 'map-series', 'R1', []);
        dttSuspConc = dttSuspConc(:, 4002:end-1, 2:end-1, :); % trim boundary cell data
    else
    end
elseif exist('dttMapDataDD', 'var') == 1
    if exist('dttSuspConc', 'var') == 0
        dttSuspConcDD = cell(size(dttMapDataDD));
        for ii = 1:size(dttMapDataDD, 1)
            dttSuspConcDD{ii} = vs_let(dttMapDataDD{ii}, 'map-series', 'R1', []);
            dttSuspConcDD{ii} = dttSuspConcDD{ii}(:, 2:end-1, 2:end-1, :); % trim boundary cell data
        end
        dttSuspConcChannel = dttSuspConcDD{end};
        
        % concatenate basin subdomains (omitting channel):
        dttSuspConc = cat(3, dttSuspConcDD{1:19}); % amend endpoint manually
    else
    end
else
end

clear dttSuspConcDD;