% Date:     11/05/2023
% Author:   ERS

% This script extracts bed sediment fraction data from imported FLOW
% mapfile data. It also concatenates this data for manual Domain
% Decomposition sims.

%% EXTRACT BED SEDIMENT FRACTION DATA
if exist('dttMapData', 'var') == 1
    if exist('dttBedSedimentFraction', 'var') == 0
        dttBedSedimentFraction = vs_let(dttMapData, 'map-sed-series', 'LYRFRAC', []);
        dttBedSedimentFraction = dttBedSedimentFraction(:, 4002:end-1, 2:end-1, :, :); % trim boundary cell data
    else
    end
elseif exist('dttMapDataDD', 'var') == 1
    if exist('dttBedSedimentFraction', 'var') == 0
        dttBedSedimentFractionDD = cell(size(dttMapDataDD));
        for ii = 1:size(dttMapDataDD, 1)
%             dttBedSedimentFractionDD{ii} = vs_let(dttMapDataDD{ii}, 'map-sed-series', 'LYRFRAC', []); % all times
            dttBedSedimentFractionDD{ii} = vs_let(dttMapDataDD{ii}, 'map-sed-series', {577}, 'LYRFRAC', []); % end only
            dttBedSedimentFractionDD{ii} = dttBedSedimentFractionDD{ii}(:, 2:end-1, 2:end-1, :, :); % trim boundary cell data
        end
        dttBedSedimentFractionChannel = dttBedSedimentFractionDD{end};
                
        % concatenate basin subdomains (omitting channel):
        dttBedSedimentFraction = cat(3, dttBedSedimentFractionDD{1:19}); % amend endpoint manually
    else
    end
else
end

clear dttBedSedimentFractionDD;