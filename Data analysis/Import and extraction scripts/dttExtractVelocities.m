% Date:     26/01/2022
% Author:   ERS

% This script extracts velocity data from imported FLOW mapfile data. It
% also concatenates velocity data for manual Domain Decomposition sims.

%% EXTRACT VELOCITY DATA
if exist('dttMapData', 'var') == 1
    if exist('dttVelU', 'var') == 0
        dttVelU = vs_let(dttMapData, 'map-series', 'U1', []);
        dttVelU = dttVelU(:, 4001:end, :); % trim boundary cell data
    else
    end
    if exist('dttVelV', 'var') == 0
        dttVelV = vs_let(dttMapData, 'map-series', 'V1', []);
        dttVelV = dttVelV(:, 4001:end, :); % trim boundary cell data
    else
    end
elseif exist('dttMapDataDD', 'var') == 1
    if exist('dttVelU', 'var') == 0
        dttVelUDD = cell(size(dttMapDataDD));
        for ii = 1:size(dttMapDataDD, 1)
            dttVelUDD{ii} = vs_let(dttMapDataDD{ii}, 'map-series', 'U1', []);
            if ii == 1
                dttVelUDD{ii} = dttVelUDD{ii}(:, :, 1:end-1); % trim boundary cell data
            elseif (ii > 1) && (ii < 19)
                dttVelUDD{ii} = dttVelUDD{ii}(:, :, 2:end-1); % trim boundary cell data
            elseif ii == 19
                dttVelUDD{ii} = dttVelUDD{ii}(:, :, 2:end); % trim boundary cell data
            else
            end
        end
        
        % concatenate basin subdomains:
        dttVelU = cat(3, dttVelUDD{1:19});
        
    else
    end
    if exist('dttVelV', 'var') == 0
        dttVelVDD = cell(size(dttMapDataDD));
        for ii = 1:size(dttMapDataDD, 1)
            dttVelVDD{ii} = vs_let(dttMapDataDD{ii}, 'map-series', 'V1', []);
            if ii == 1
                dttVelVDD{ii} = dttVelVDD{ii}(:, :, 1:end-1); % trim boundary cell data
            elseif (ii > 1) && (ii < 19)
                dttVelVDD{ii} = dttVelVDD{ii}(:, :, 2:end-1); % trim boundary cell data
            elseif ii == 19
                dttVelVDD{ii} = dttVelVDD{ii}(:, :, 2:end); % trim boundary cell data
            else
            end
        end
        
        % concatenate basin subdomains:
        dttVelV = cat(3, dttVelVDD{1:19});
        
    else
    end
else
end

clear dttVelUDD dttVelVDD;

%% LAST 8 TIMEPOINTS ONLY
% if exist('dttMapData', 'var') == 1
%     if exist('dttVelU', 'var') == 0
%         dttVelU = vs_let(dttMapData, 'map-series', 'U1', []);
%         dttVelU = dttVelU(:, 4001:end, :); % trim boundary cell data
%     else
%     end
%     if exist('dttVelV', 'var') == 0
%         dttVelV = vs_let(dttMapData, 'map-series', 'V1', []);
%         dttVelV = dttVelV(:, 4001:end, :); % trim boundary cell data
%     else
%     end
% elseif exist('dttMapDataDD', 'var') == 1
%     if exist('dttVelU', 'var') == 0
%         dttVelUDD = cell(size(dttMapDataDD));
%         for ii = 1:size(dttMapDataDD, 1)
%             dttVelUDD{ii} = vs_let(dttMapDataDD{ii}, 'map-series', {570:577}, 'U1', []);
%             if ii == 1
%                 dttVelUDD{ii} = dttVelUDD{ii}(:, :, 1:end-1); % trim boundary cell data
%             elseif (ii > 1) && (ii < 19)
%                 dttVelUDD{ii} = dttVelUDD{ii}(:, :, 2:end-1); % trim boundary cell data
%             elseif ii == 19
%                 dttVelUDD{ii} = dttVelUDD{ii}(:, :, 2:end); % trim boundary cell data
%             else
%             end
%         end
%         
%         % to omit channel:
%         dttVelU = cat(3, dttVelUDD{1:19}); % amend endpoint manually
%         
%     else
%     end
%     if exist('dttVelV', 'var') == 0
%         dttVelVDD = cell(size(dttMapDataDD));
%         for ii = 1:size(dttMapDataDD, 1)
%             dttVelVDD{ii} = vs_let(dttMapDataDD{ii}, 'map-series', {570:577}, 'V1', []);
%             if ii == 1
%                 dttVelVDD{ii} = dttVelVDD{ii}(:, :, 1:end-1); % trim boundary cell data
%             elseif (ii > 1) && (ii < 19)
%                 dttVelVDD{ii} = dttVelVDD{ii}(:, :, 2:end-1); % trim boundary cell data
%             elseif ii == 19
%                 dttVelVDD{ii} = dttVelVDD{ii}(:, :, 2:end); % trim boundary cell data
%             else
%             end
%         end
%         
%         % to omit channel:
%         dttVelV = cat(3, dttVelVDD{1:19}); % amend endpoint manually
%         
%     else
%     end
% else
% end
% 
% clear dttVelUDD dttVelVDD;

%% DETERMINE CELL CENTRE VELOCITIES
if exist('dttVelUCell', 'var') == 0
%     dttVelU = [zeros(569, 362, 792); dttVelU];
%     dttVelV = [zeros(569, 362, 792); dttVelV];

    dttVelUCell = zeros(size(dttVelU, 1), size(dttVelU, 2)-2, size(dttVelU, 3)-2);
    dttVelVCell = zeros(size(dttVelV, 1), size(dttVelV, 2)-2, size(dttVelV, 3)-2);
    for tt = dttStart:dttEnd
        dttVelUCell(tt, :, :) = (dttVelU(tt,2:end-1,1:end-2) + dttVelU(tt,2:end-1,2:end-1))/2;
        dttVelVCell(tt, :, :) = (dttVelV(tt,1:end-2,2:end-1) + dttVelV(tt,2:end-1,2:end-1))/2;
    end
else
end