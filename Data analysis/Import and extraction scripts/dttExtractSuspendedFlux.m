% Date:     18/07/2023
% Author:   ERS

% This script extracts suspended flux data from imported FLOW mapfile data.
% It also concatenates this data for manual Domain Decomposition sims. This
% version of the extraction script allows for multiple sediment fractions.

%% EXTRACT SUSPENDED FLUX DATA
if exist('dttMapData', 'var') == 1
    if exist('dttSuspendedFluxU', 'var') == 0
        dttSuspendedFluxU = vs_let(dttMapData, 'map-sed-series', 'SSUU', []);
        dttSuspendedFluxU = dttSuspendedFluxU(:, 4002:end-1, 2:end-1, :); % trim boundary cell data
    else
    end
    
    if exist('dttSuspendedFluxV', 'var') == 0
        dttSuspendedFluxV = vs_let(dttMapData, 'map-sed-series', 'SSVV', []);
        dttSuspendedFluxV = dttSuspendedFluxV(:, 4002:end-1, 2:end-1, :); % trim boundary cell data
    else
    end
elseif exist('dttMapDataDD', 'var') == 1
    if exist('dttSuspendedFluxU', 'var') == 0
        dttSuspendedFluxUDD = cell(size(dttMapDataDD));
        for ii = 1:size(dttMapDataDD, 1)
            dttSuspendedFluxUDD{ii} = vs_let(dttMapDataDD{ii}, 'map-sed-series', 'SSUU', []);
            dttSuspendedFluxUDD{ii} = dttSuspendedFluxUDD{ii}(:, 2:end-1, 2:end-1, :); % trim boundary cell data
        end
        dttSuspendedFluxUChannel = dttSuspendedFluxUDD{end};
                
        % concatenate basin subdomains (omitting channel):
        dttSuspendedFluxU = cat(3, dttSuspendedFluxUDD{1:19}); % amend endpoint manually
    else
    end
    
    if exist('dttSuspendedFluxV', 'var') == 0
        dttSuspendedFluxVDD = cell(size(dttMapDataDD));
        for ii = 1:size(dttMapDataDD, 1)
            dttSuspendedFluxVDD{ii} = vs_let(dttMapDataDD{ii}, 'map-sed-series', 'SSVV', []);
            dttSuspendedFluxVDD{ii} = dttSuspendedFluxVDD{ii}(:, 2:end-1, 2:end-1, :); % trim boundary cell data
        end
        dttSuspendedFluxVChannel = dttSuspendedFluxVDD{end};
                
        % concatenate basin subdomains (omitting channel):
        dttSuspendedFluxV = cat(3, dttSuspendedFluxVDD{1:19}); % amend endpoint manually
    else
    end
else
end

clear dttSuspendedFluxUDD dttSuspendedFluxVDD;