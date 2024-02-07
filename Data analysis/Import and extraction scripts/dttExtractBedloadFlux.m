% Date:     18/07/2023
% Author:   ERS

% This script extracts bedload flux data from imported FLOW mapfile data.
% It also concatenates this data for manual Domain Decomposition sims. This
% version of the extraction script is based on dttExtractBedloadFractions,
% but allows for multiple sediment fractions, which was not possible in the
% original script.

%% EXTRACT BEDLOAD FLUX DATA
if exist('dttMapData', 'var') == 1
    if exist('dttBedloadFluxU', 'var') == 0
        dttBedloadFluxU = vs_let(dttMapData, 'map-sed-series', 'SBUU', []);
        dttBedloadFluxU = dttBedloadFluxU(:, 4002:end-1, 2:end-1, :); % trim boundary cell data
    else
    end
    
    if exist('dttBedloadFluxV', 'var') == 0
        dttBedloadFluxV = vs_let(dttMapData, 'map-sed-series', 'SBVV', []);
        dttBedloadFluxV = dttBedloadFluxV(:, 4002:end-1, 2:end-1, :); % trim boundary cell data
    else
    end
elseif exist('dttMapDataDD', 'var') == 1
    if exist('dttBedloadFluxU', 'var') == 0
        dttBedloadFluxUDD = cell(size(dttMapDataDD));
        for ii = 1:size(dttMapDataDD, 1)
            dttBedloadFluxUDD{ii} = vs_let(dttMapDataDD{ii}, 'map-sed-series', 'SBUU', []);
            dttBedloadFluxUDD{ii} = dttBedloadFluxUDD{ii}(:, 2:end-1, 2:end-1, :); % trim boundary cell data
        end
        dttBedloadFluxUChannel = dttBedloadFluxUDD{end};
                
        % concatenate basin subdomains (omitting channel):
        dttBedloadFluxU = cat(3, dttBedloadFluxUDD{1:19}); % amend endpoint manually
    else
    end
    
    if exist('dttBedloadFluxV', 'var') == 0
        dttBedloadFluxVDD = cell(size(dttMapDataDD));
        for ii = 1:size(dttMapDataDD, 1)
            dttBedloadFluxVDD{ii} = vs_let(dttMapDataDD{ii}, 'map-sed-series', 'SBVV', []);
            dttBedloadFluxVDD{ii} = dttBedloadFluxVDD{ii}(:, 2:end-1, 2:end-1, :); % trim boundary cell data
        end
        dttBedloadFluxVChannel = dttBedloadFluxVDD{end};
                
        % concatenate basin subdomains (omitting channel):
        dttBedloadFluxV = cat(3, dttBedloadFluxVDD{1:19}); % amend endpoint manually
    else
    end
else
end

clear dttBedloadFluxUDD dttBedloadFluxVDD;