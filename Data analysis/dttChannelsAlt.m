% Date:     26/01/2023
% Author:   ERS

% This script determines the location of active and inactive channel cells
% within the delta.

%% RUN THESE SCRIPTS FIRST
% dttDeltaFrontToeLineOAM;
% dttTideLinesOAM;
dttMapImportDD;
    dttExtractBedLevels;
        dttParameters;
    dttExtractWaterLevels;
    dttExtractVelocities;

%% DETERMINE runID FROM IMPORT FILEPATH
if isequal(filePath(end-3:end-1), 'ext')
    runID = filePath(end-11:end-1);
elseif isequal(filePath(end-6:end-1), 'varwav')
    runID = filePath(end-14:end-1);
else
    runID = filePath(end-8:end-1);
end

%% LOAD METRICS
load(['..\MATLAB datastore\' runID '_metrics_HPC.mat']);

%% DEFINE WATER DEPTH
dttWaterDepth = dttBedLevel + dttWaterLevel;
        
%% RESIDUAL CURRENTS (TIDAL SIMS)
dttVelResidualAbs = zeros((size(dttVelUCell, 1)+3)/4, size(dttVelUCell, 2), size(dttVelUCell, 3));
for tt = dttStart+4:4:dttEnd-4
% for tt = dttEnd-8:4:dttEnd-4
    dttVelResidualAbs((tt+3)/4,:,:) = sqrt(mean(dttVelUCell(tt-2:tt+1, :, :)).^2 + mean(dttVelVCell(tt-2:tt+1, :, :)).^2);
end

%% DEFINE ACTIVE AND INACTIVE CHANNEL CELLS
% read tidal range from runID
dttTidalRange = str2double(runID(6:8));

% dttDepThresh = max(0.5, dttTidalRange/2); % old method; not used [m]
dttDepThresh = dttTidalRange/2 +0.5; % [m]
dttVelThresh = 0.2; % [m s-1]

% dttDeltaAreaLogicalAlt = zeros(size(dttDeltaFrontLogical));
% for tt=1:size(dttDeltaSeaAnglesMatrix, 1)
%     dttDeltaAreaLogicalAlt(tt,:,:) = dttDeltaSeaAnglesMatrix{tt} < 70;
% end

if dttTidalRange == 0
    dttChannelActive = zeros(size(dttVelResidualAbs));
    dttChannelInactive = zeros(size(dttVelResidualAbs));
    for tt = dttStart:size(dttVelResidualAbs, 1)
        dttChannelActive(tt,:,:) = permute((sqrt(dttVelUCell((tt*4)-3,:,:).^2 + dttVelVCell((tt*4)-3,:,:).^2) >= dttVelThresh), [2 3 1]) .* permute((dttWaterDepth((tt*4)-3,:,:) >= dttDepThresh), [2 3 1]);% .* permute(dttDeltaAreaLogicalAlt(tt+1,:,:), [2 3 1]);
        dttChannelInactive(tt,:,:) = permute((sqrt(dttVelUCell((tt*4)-3,:,:).^2 + dttVelVCell((tt*4)-3,:,:).^2) < dttVelThresh), [2 3 1]) .* permute((dttWaterDepth((tt*4)-3,:,:) >= dttDepThresh), [2 3 1]);% .* permute(dttDeltaAreaLogicalAlt(tt+1,:,:), [2 3 1]);
    end
else
    dttChannelActive = zeros(size(dttVelResidualAbs));
    dttChannelInactive = zeros(size(dttVelResidualAbs));
    for tt = dttStart:size(dttVelResidualAbs, 1)-1
        dttChannelActive(tt,:,:) = permute((abs(dttVelResidualAbs(tt,:,:)) >= dttVelThresh), [2 3 1]) .* permute((dttWaterDepth((tt*4)+1,:,:) >= dttDepThresh), [2 3 1]);% .* permute(dttDeltaAreaLogicalAlt(tt+1,:,:), [2 3 1]);
        dttChannelInactive(tt,:,:) = permute((abs(dttVelResidualAbs(tt,:,:)) < dttVelThresh), [2 3 1]) .* permute((dttWaterDepth((tt*4)+1,:,:) >= dttDepThresh), [2 3 1]);% .* permute(dttDeltaAreaLogicalAlt(tt+1,:,:), [2 3 1]);
    end
end

%% SAVE VARS TO METRIC FILE
% save(['..\MATLAB datastore\' runID '_metrics_HPC.mat'], 'dttChannelActive', 'dttChannelInactive', '-append');

%% test plots
figure(701)
clf reset
if dttTidalRange ==0
    imagesc(permute(sqrt(dttVelUCell(end,:,:).^2 + dttVelVCell(end,:,:).^2), [2 3 1]))
else
    imagesc(permute(abs(dttVelResidualAbs(end-1,:,:)), [2 3 1]))
end
set(gca, 'ydir', 'normal')
axis equal
ylim([0 360])
colorbar

figure(702)
clf reset
imagesc(permute(dttWaterDepth(end,:,:), [2 3 1]))
set(gca, 'ydir', 'normal')
axis equal
ylim([0 360])
colorbar

figure(703)
clf reset
imagesc(permute(dttChannelActive(end-1,:,:), [2 3 1]))
set(gca, 'ydir', 'normal')
axis equal
ylim([0 360])

figure(704)
clf reset
imagesc(permute(dttChannelInactive(end-1,:,:), [2 3 1]))
set(gca, 'ydir', 'normal')
axis equal
ylim([0 360])