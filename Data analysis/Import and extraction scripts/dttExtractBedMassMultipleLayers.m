% Date:     11/02/2023
% Author:   ERS

% This script extracts bed sediment mass data from imported FLOW mapfile
% data. It also concatenates this data for manual Domain Decomposition
% sims. This version of the script for simulations with multiple sediment
% fractions and basement book-keeping layers.

%% EXTRACT BED SEDIMENT MASS DATA
if exist('dttMapData', 'var') == 1
    if exist('dttBedSedimentMass', 'var') == 0
        dttBedSedimentMass = vs_let(dttMapData, 'map-sed-series', 'MSED', []);
        dttBedSedimentMass = dttBedSedimentMass(:, 4002:end-1, 2:end-1, :, :); % trim boundary cell data
    else
    end
elseif exist('dttMapDataDD', 'var') == 1
    if exist('dttBedSedimentMass', 'var') == 0
        dttBedSedimentMassDD = cell(size(dttMapDataDD));
        for ii = 1:size(dttMapDataDD, 1)
            dttBedSedimentMassDD{ii} = vs_let(dttMapDataDD{ii}, 'map-sed-series', 'MSED', []); % all times
%             dttBedSedimentMassDD{ii} = vs_let(dttMapDataDD{ii}, 'map-sed-series', {577}, 'MSED', []); % end only
            dttBedSedimentMassDD{ii} = dttBedSedimentMassDD{ii}(:, 2:end-1, 2:end-1, :, :); % trim boundary cell data
        end
        dttBedSedimentMassChannel = dttBedSedimentMassDD{end};
                
        % concatenate basin subdomains (omitting channel):
        dttBedSedimentMass = cat(3, dttBedSedimentMassDD{1:19}); % amend endpoint manually
    else
    end
else
end

clear dttBedSedimentMassDD;