% Date:     31/12/2022
% Author:   ERS

% This script extracts significant wave height data from imported FLOW
% mapfile data. It also concatenates this data for manual Domain
% Decomposition sims.

%% EXTRACT SIG. WAVE HEIGHT DATA
if exist('dttMapData', 'var') == 1
    if exist('dttSigWaveHeight', 'var') == 0
        dttSigWaveHeight = vs_let(dttMapData, 'map-rol-series', 'HS', []);
        dttSigWaveHeight = dttSigWaveHeight(:, 4002:end-1, 2:end-1); % trim boundary cell data
    else
    end
elseif exist('dttMapDataDD', 'var') == 1
    if exist('dttSigWaveHeight', 'var') == 0
        dttSigWaveHeightDD = cell(size(dttMapDataDD));
        for ii = 1:size(dttMapDataDD, 1)
            dttSigWaveHeightDD{ii} = vs_let(dttMapDataDD{ii}, 'map-rol-series', 'HS', []);
            dttSigWaveHeightDD{ii} = dttSigWaveHeightDD{ii}(:, 2:end-1, 2:end-1); % trim boundary cell data
        end
        
        % to omit channel:
        dttSigWaveHeight = cat(3, dttSigWaveHeightDD{1:19}); % amend endpoint manually
    else
    end
else
end

clear dttSigWaveHeightDD;