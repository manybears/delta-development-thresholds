% Date:     04/01/2023
% Author:   ERS

% This script loads and displays simulation bathymetry and water level
% animations.

%% RUN IMPORT, EXTRACTION, AND PARAMETER SCRIPTS
% dttMapImport;
dttMapImportDD;
    dttExtractBedLevels;
        dttParameters;
%     dttExtractWaterLevels;
    dttExtractVelocities;
    dttExtractSigWaveHeights;
    dttExtractWaveDirection;
    dttExtractSuspendedFlux;
    dttExtractBedloadFlux;

%% DETERMINE runID FROM IMPORT FILEPATH
if isequal(filePath(end-3:end-1), 'ext')
    runID = filePath(end-11:end-1);
elseif isequal(filePath(end-6:end-1), 'varwav')
    runID = filePath(end-14:end-1);
else
    runID = filePath(end-8:end-1);
end

%% ANIM PREAMBLE
% close all;
% ES2010_colormap;
dttColorMap = cmocean('-tempo');
dttColorMap2 = cmocean('thermal');
xAxis = [0.0125:0.025:19.7375];
yAxis = [0.0125:0.025:8.9875];

% uncomment the below for non-morpho wave tests
% dttStart = 1;
% dttEnd = size(dttSigWaveHeight, 1);
% mf = 1;

%% ANIMATED PLOTS (VARIOUS)
dttAnim = figure(201);
dttAnim.Position = [100 100 1920 820];
for tt = dttStart:dttEnd
    clf('reset')
%     imagesc(xAxis, yAxis, -permute(dttBedLevel(tt, :, :), [2 3 1]), 2.0*[-570/71 10]); % Bathy ES2010
    imagesc(xAxis, yAxis, -permute(dttBedLevel(tt, :, :), [2 3 1]), [-20 5]); % Bathy other
%     imagesc(xAxis, yAxis, permute(dttWaterLevel(tt, :, :), [2 3 1]), [0 0.5]); % WL
%     imagesc(xAxis, yAxis, permute(sqrt(dttVelU(tt, :, :).^2 + dttVelV(tt, :, :).^2), [2 3 1]), [0 1.2]); % DA Vel
%     imagesc(xAxis, yAxis, permute(dttSigWaveHeight(tt, :, :), [2 3 1]), [0 2.2]); % Sig wave height
    set(gca,'YDir','normal');
    set(gcf,'color','w');
    c = colorbar;
    c.Label.String = 'Bed elevation [m]';
%     c.Label.String = 'Water level [m]';
%     c.Label.String = 'Depth-averaged velocity [m s^{-1}]';
%     c.Label.String = 'Significant wave height [m]';
%     colormap(ES2010);
    colormap(dttColorMap);
%     colormap(flipud(bone));
%     colormap(turbo);
    xlabel('{\it x} [km]');
    ylabel('{\it y} [km]');
    xlim([0 19.75])
    ylim([0 9])
%     title(['SoulsbyVR W2T6 mf', num2str(mf)]);%, 'cos^{16} wave spreading and coarse basin sediment - non-stationary test');
%     title(['SoulsbyVR W2T0 stationary'], 'cos^{500} wave spreading, no hotstart');
%     title('W0.4T6.0');

    if isequal(filePath(end-3:end-1), 'ext')
        text(0.2, 8.7, ['Time elapsed: ',num2str((tt+576)*mf*3.125/(24*365),'%.2f'), ' years'], 'Color', 'white', 'FontSize', 22);
    else
        text(0.2, 8.7, ['Time elapsed: ',num2str((tt-1)*mf*3.125/(24*365),'%.2f'), ' years'], 'Color', 'white', 'FontSize', 22);
    end

%     text(0.2, 8.7, ['Time elapsed: ',num2str((tt-1)*0.15,'%.2f'), ' minutes'], 'Color', 'white', 'FontSize', 22); % hydro timescale

    dttAnimationFrame(tt) = getframe(gcf); % all frames
%     dttAnimationFrame(((tt+3)/4)-1) = getframe(gcf); % every 4th frame
end

%% EXPORT ANIMATION
writerObj = VideoWriter(['..\MATLAB export\Final\dtt' runID '_bathymetryFullFrames'], 'MPEG-4');
% writerObj = VideoWriter(['..\MATLAB export\Final\bathyWithWaves\dtt' runID '_bathymetryWithWaveContoursAndVectors'], 'MPEG-4');
% writerObj = VideoWriter(['..\MATLAB export\Final\bathyWithSedimentFlux\dtt' runID '_bathymetryWithSedimentTransportVectors_full'], 'MPEG-4');
writerObj.FrameRate = 24; % 6 or 24

% open the video writer
open(writerObj);

% write the frames to the video
for ii=1:size(dttAnimationFrame, 2)
    
%     convert the image to a frame
    frame = dttAnimationFrame(ii);
    writeVideo(writerObj, frame);
    
end

% close the writer object
close(writerObj);

% clear dttAnimationFrame object for next animation
clear dttAnimationFrame;
close all;

%% ANIMATED BATHY PLOT W/ TIDELINES
load(['../MATLAB datastore/' runID '_metrics_HPC.mat']);

% (ROUGH) FIX FOR TIDE LINES SHOWING AT EDGES
dttDeltaFrontLogical(:, 21:end, 1) = 0;
dttDeltaFrontLogical(:, 21:end, end) = 0;
dttDeltaFrontLogical(:, end, :) = 0;

dttLowTideFrontLogical(:, 21:end, 1) = 0;
dttLowTideFrontLogical(:, 21:end, end) = 0;
dttLowTideFrontLogical(:, end, :) = 0;

if exist('dttHighTideFrontLogical', 'var') ==1
    dttHighTideFrontLogical(:, 21:end, 1) = 0;
    dttHighTideFrontLogical(:, 21:end, end) = 0;
    dttHighTideFrontLogical(:, end, :) = 0;
end

dttAnim3 = figure(203);
dttAnim3.Position = [100 100 1920 820];
for tt = dttStart+4:4:dttEnd-4
% for tt = dttStart+4:4:dttEnd %use for extended sims
    clf('reset')
%     imagesc(xAxis, yAxis, -permute(dttBedLevel(tt, :, :), [2 3 1]), 2.0*[-570/71 10]); % Bathy ES2010
    imagesc(xAxis, yAxis, -permute(dttBedLevel(tt, :, :), [2 3 1]), [-20 5]); % Bathy other
    set(gca, 'YDir', 'normal', 'FontSize', 12);
    set(gcf,'color','w');
%     c = colorbar;
%     c.Label.String = 'Bed elevation [m]';
%     colormap(ES2010);
    colormap(dttColorMap);
    axis equal
    xlabel('{\it x} [km]');
    ylabel('{\it y} [km]');
    xlim([0 19.75])
    ylim([0 9])
%     title('W0.4T6.0 - bathymetry with low and high tide lines');
    hold on;

    a11 = axes;
    imagesc(xAxis, yAxis, [zeros(3, 790); permute(dttHighTideFrontLogical((tt-1)/4, 4:end, :), [2 3 1])], 'AlphaData', [zeros(3, 790); permute(dttHighTideFrontLogical((tt-1)/4, 4:end, :), [2 3 1])]);
    colormap(a11, flipud(winter))
    set(a11, 'ydir', 'normal','color','none','visible','off', 'FontSize', 12);
    axis equal
    ylim([0 9])
    xlim([0 19.75])

    a12 = axes;
    imagesc(xAxis, yAxis, [zeros(3, 790); permute(dttLowTideFrontLogical((tt+3)/4, 4:end, :), [2 3 1])], 'AlphaData', [zeros(3, 790); permute(dttLowTideFrontLogical((tt+3)/4, 4:end, :), [2 3 1])]);
    colormap(a12, flipud(hsv))
    set(a12, 'ydir', 'normal','color','none','visible','off', 'FontSize', 12);
    axis equal
    ylim([0 9])
    xlim([0 19.75])

    a13 = axes;
    imagesc(xAxis, yAxis, [zeros(3, 790); permute(dttDeltaFrontLogical((tt+3)/4, 4:end, :), [2 3 1])], 'AlphaData', [zeros(3, 790); permute(dttDeltaFrontLogical((tt+3)/4, 4:end, :), [2 3 1])]);
    colormap(a13, flipud(gray))
    set(a13, 'ydir', 'normal','color','none','visible','on', 'FontSize', 12);
    axis equal
    ylim([0 9])
    xlim([0 19.75])

    if isequal(filePath(end-3:end-1), 'ext')
        text(0.2, 8.7, ['Time elapsed: ',num2str((tt+576)*mf*3.125/(24*365),'%.2f'), ' years'], 'Color', 'white', 'FontSize', 22);
    else
        text(0.2, 8.7, ['Time elapsed: ',num2str((tt-1)*mf*3.125/(24*365),'%.2f'), ' years'], 'Color', 'white', 'FontSize', 22);
    end

%     text(0.2, -0.5, ['Time elapsed: ',num2str((tt-1)*0.15,'%.2f'), ' minutes']);

    dttAnimationFrame(((tt+3)/4)-1) = getframe(gcf); % every 4th frame
    hold off;
end

%% EXPORT ANIMATION
writerObj = VideoWriter(['..\MATLAB export\Final\dtt' runID '_bathymetryWithTideLines'], 'MPEG-4');
writerObj.FrameRate = 6; % 6 or 24

% open the video writer
open(writerObj);

% write the frames to the video
for ii=1:size(dttAnimationFrame, 2)
    
%     convert the image to a frame
    frame = dttAnimationFrame(ii);
    writeVideo(writerObj, frame);
    
end

% close the writer object
close(writerObj);

% clear dttAnimationFrame object for next animation
clear dttAnimationFrame;
close all;

%% ANIMATED BATHY PLOT W/ SIG. WAVE HEIGHT CONTOURS
sigWaveHeightPlot = str2double(runID(2:4));
% sigWaveHeightPlot = 2.0; % for use if setting manually. Set to sig wave height at boundary.
quiverFactor = 0.2/sigWaveHeightPlot;

dttAnim4 = figure(204);
dttAnim4.Position = [100 100 1920 820];
for tt = dttStart:dttEnd
% for tt = dttStart+4:4:dttEnd %use for extended sims
    clf('reset')
    a40 = axes;
    imagesc(xAxis, yAxis, -permute(dttBedLevel(tt, :, :), [2 3 1]), [-20 5]); % Bathy other
    set(a40, 'YDir', 'normal', 'FontSize', 12);
    set(gcf,'color','w');
%     c = colorbar;
%     c.Label.String = 'Bed elevation [m]';
    colormap(a40, dttColorMap);
    axis equal
    xlabel('{\it x} [km]');
    ylabel('{\it y} [km]');
    xlim([0 19.75])
    ylim([0 9])
%     title('W0.4T6.0 - bathymetry with low and high tide lines');
    hold on;

    a41 = axes;
    contour(xAxis, yAxis, permute(dttSigWaveHeight(tt, :, :), [2 3 1]), [0 : sigWaveHeightPlot*0.2 : sigWaveHeightPlot*1.2]);
    colormap(a41, dttColorMap2)
    set(a41, 'ydir', 'normal','color','none','visible','off', 'FontSize', 12, 'Clim', [0 sigWaveHeightPlot*1.2]);
    axis equal
    ylim([0 9])
    xlim([0 19.75])
    
    a42 = axes;
    quiver([0.0125:0.25:19.75], [0.0125:0.25:9], ...
        permute(dttSigWaveHeight(tt, 1:10:end, 1:10:end), [2 3 1]) .* cosd(permute(dttMeanWaveDirection(tt, 1:10:end, 1:10:end), [2 3 1]))*quiverFactor, ...
        permute(dttSigWaveHeight(tt, 1:10:end, 1:10:end), [2 3 1]) .* sind(permute(dttMeanWaveDirection(tt, 1:10:end, 1:10:end), [2 3 1]))*quiverFactor, 0, 'k')
    set(a42, 'ydir', 'normal','color','none','visible','off', 'FontSize', 12);
    axis equal
    ylim([0 9])
    xlim([0 19.75])
    
    if isequal(filePath(end-3:end-1), 'ext')
        text(0.2, 8.7, ['Time elapsed: ',num2str((tt+576)*mf*3.125/(24*365),'%.2f'), ' years'], 'Color', 'white', 'FontSize', 22);
    else
        text(0.2, 8.7, ['Time elapsed: ',num2str((tt-1)*mf*3.125/(24*365),'%.2f'), ' years'], 'Color', 'white', 'FontSize', 22);
    end

    dttAnimationFrame(tt) = getframe(gcf);
    hold off;
end

%% EXPORT ANIMATION
writerObj = VideoWriter(['..\MATLAB export\Final\bathyWithWaves\dtt' runID '_bathymetryWithWaveContoursAndVectors'], 'MPEG-4');
writerObj.FrameRate = 6; % 6 or 24

% open the video writer
open(writerObj);

% write the frames to the video
for ii=1:size(dttAnimationFrame, 2)
    
%     convert the image to a frame
    frame = dttAnimationFrame(ii);
    writeVideo(writerObj, frame);
    
end

% close the writer object
close(writerObj);

% clear dttAnimationFrame object for next animation
clear dttAnimationFrame;
close all;

%% ANIMATED BATHY PLOT W/ SEDIMENT TRANSPORT VECTORS
% residual sediment fluxes for tidal/sed flux plots plots:
dttBedloadFluxU_Residual_f = zeros((size(dttBedloadFluxU, 1)+3)/4, size(dttBedloadFluxU, 2), size(dttBedloadFluxU, 3));
dttBedloadFluxV_Residual_f = zeros((size(dttBedloadFluxV, 1)+3)/4, size(dttBedloadFluxV, 2), size(dttBedloadFluxV, 3));
dttBedloadFluxU_Residual_c = zeros((size(dttBedloadFluxU, 1)+3)/4, size(dttBedloadFluxU, 2), size(dttBedloadFluxU, 3));
dttBedloadFluxV_Residual_c = zeros((size(dttBedloadFluxV, 1)+3)/4, size(dttBedloadFluxV, 2), size(dttBedloadFluxV, 3));

dttSuspendedFluxU_Residual_f = zeros((size(dttSuspendedFluxU, 1)+3)/4, size(dttSuspendedFluxU, 2), size(dttSuspendedFluxU, 3));
dttSuspendedFluxV_Residual_f = zeros((size(dttSuspendedFluxV, 1)+3)/4, size(dttSuspendedFluxV, 2), size(dttSuspendedFluxV, 3));
dttSuspendedFluxU_Residual_c = zeros((size(dttSuspendedFluxU, 1)+3)/4, size(dttSuspendedFluxU, 2), size(dttSuspendedFluxU, 3));
dttSuspendedFluxV_Residual_c = zeros((size(dttSuspendedFluxV, 1)+3)/4, size(dttSuspendedFluxV, 2), size(dttSuspendedFluxV, 3));

for tt = dttStart+4:4:dttEnd-4
    dttSuspendedFluxU_Residual_f((tt+3)/4,:,:) = mean(dttSuspendedFluxU(tt-2:tt+1, :, :, 1));
    dttSuspendedFluxV_Residual_f((tt+3)/4,:,:) = mean(dttSuspendedFluxV(tt-2:tt+1, :, :, 1));
    dttSuspendedFluxU_Residual_c((tt+3)/4,:,:) = mean(dttSuspendedFluxU(tt-2:tt+1, :, :, 2));
    dttSuspendedFluxV_Residual_c((tt+3)/4,:,:) = mean(dttSuspendedFluxV(tt-2:tt+1, :, :, 2));
    
    dttBedloadFluxU_Residual_f((tt+3)/4,:,:) = mean(dttBedloadFluxU(tt-2:tt+1, :, :, 1));
    dttBedloadFluxV_Residual_f((tt+3)/4,:,:) = mean(dttBedloadFluxV(tt-2:tt+1, :, :, 1));
    dttBedloadFluxU_Residual_c((tt+3)/4,:,:) = mean(dttBedloadFluxU(tt-2:tt+1, :, :, 2));
    dttBedloadFluxV_Residual_c((tt+3)/4,:,:) = mean(dttBedloadFluxV(tt-2:tt+1, :, :, 2));
end

dttSuspendedFluxU_Residual_all = dttSuspendedFluxU_Residual_f + dttSuspendedFluxU_Residual_c;
dttBedloadFluxU_Residual_all = dttBedloadFluxU_Residual_f + dttBedloadFluxU_Residual_c;
dttSuspendedFluxV_Residual_all = dttSuspendedFluxV_Residual_f + dttSuspendedFluxV_Residual_c;
dttBedloadFluxV_Residual_all = dttBedloadFluxV_Residual_f + dttBedloadFluxV_Residual_c;

dttAnim5 = figure(205);
dttAnim5.Position = [100 100 1920 820];
for tt = dttStart+4:4:dttEnd-4
% for tt = dttStart+4:4:dttEnd %use for extended sims
    clf('reset')
    a50 = axes;
    imagesc(xAxis, yAxis, -permute(dttBedLevel(tt, :, :), [2 3 1]), [-20 5]); % Bathy other
    set(a50, 'YDir', 'normal', 'FontSize', 12);
    set(gcf,'color','w');
%     c = colorbar;
%     c.Label.String = 'Bed elevation [m]';
    colormap(a50, dttColorMap);
    axis equal
    xlabel('{\it x} [km]');
    ylabel('{\it y} [km]');
    xlim([0 19.75])
    ylim([0 9])
    hold on;

    a51 = axes;
%     quiver([0.0375:0.1:19.75], [0.0375:0.1:9], ...
%         permute(dttSuspendedFluxU(tt, 2:4:end, 2:4:end, 1), [2 3 1])*1000, ...
%         permute(dttSuspendedFluxV(tt, 2:4:end, 2:4:end, 1), [2 3 1])*1000, 0, 'k')
    quiver([0.0375:0.1:19.75], [0.0375:0.1:9], ...
        permute(dttSuspendedFluxU_Residual_all(((tt+3)/4), 2:4:end, 2:4:end), [2 3 1])*1000, ...
        permute(dttSuspendedFluxV_Residual_all(((tt+3)/4), 2:4:end, 2:4:end), [2 3 1])*1000, 0, 'k')
    set(a51, 'ydir', 'normal','color','none','visible','off', 'FontSize', 12);
    axis equal
    xlim([0 19.75])
    ylim([0 9])
    
    a52 = axes;
%     quiver([0.0875:0.1:19.75], [0.0875:0.1:9], ...
%         permute(dttBedloadFluxU(tt, 4:4:end, 4:4:end, 1), [2 3 1])*10000, ...
%         permute(dttBedloadFluxV(tt, 4:4:end, 4:4:end, 1), [2 3 1])*10000, 0, 'r')
    quiver([0.0875:0.1:19.75], [0.0875:0.1:9], ...
        permute(dttBedloadFluxU_Residual_all(((tt+3)/4), 4:4:end, 4:4:end), [2 3 1])*10000, ...
        permute(dttBedloadFluxV_Residual_all(((tt+3)/4), 4:4:end, 4:4:end), [2 3 1])*10000, 0, 'r')
    set(a52, 'ydir', 'normal','color','none','visible','off', 'FontSize', 12);
    axis equal
    xlim([0 19.75])
    ylim([0 9])

    if isequal(filePath(end-3:end-1), 'ext')
        text(0.2, 8.7, ['Time elapsed: ',num2str((tt+576)*mf*3.125/(24*365),'%.2f'), ' years'], 'Color', 'white', 'FontSize', 22);
    else
        text(0.2, 8.7, ['Time elapsed: ',num2str((tt-1)*mf*3.125/(24*365),'%.2f'), ' years'], 'Color', 'white', 'FontSize', 22);
    end
    
%     dttAnimationFrame(tt) = getframe(gcf);
    dttAnimationFrame(((tt+3)/4)-1) = getframe(gcf);
    hold off;
end

%% EXPORT ANIMATION
writerObj = VideoWriter(['..\MATLAB export\Final\bathyWithSedimentFlux\dtt' runID '_bathymetryWithSedimentTransportVectors_full'], 'MPEG-4');
writerObj.FrameRate = 6; % 6 or 24

% open the video writer
open(writerObj);

% write the frames to the video
for ii=1:size(dttAnimationFrame, 2)
    
%     convert the image to a frame
    frame = dttAnimationFrame(ii);
    writeVideo(writerObj, frame);
    
end

% close the writer object
close(writerObj);

% clear dttAnimationFrame object for next animation
clear dttAnimationFrame;
close all;

%% ANIMATED BATHY PLOT W/ CURRENT VECTORS
dttAnim6 = figure(206);
dttAnim6.Position = [100 100 1920 820];
for tt = dttStart:dttEnd
% for tt = dttStart+4:4:dttEnd %use for extended sims
    clf('reset')
    a60 = axes;
    imagesc(xAxis, yAxis, -permute(dttBedLevel(tt, :, :), [2 3 1]), [-20 5]); % Bathy other
    set(a60, 'YDir', 'normal', 'FontSize', 12);
    set(gcf,'color','w');
%     c = colorbar;
%     c.Label.String = 'Bed elevation [m]';
    colormap(a60, dttColorMap);
    axis equal
    xlabel('{\it x} [km]');
    ylabel('{\it y} [km]');
    xlim([0 19.75])
    ylim([0 9])
    hold on;

    a61 = axes;
    quiver([0.0375:0.1:19.75], [0.0375:0.1:9], ...
        permute(dttVelUCell(tt, 2:4:end, 2:4:end, 1), [2 3 1])*0.5, ...
        permute(dttVelVCell(tt, 2:4:end, 2:4:end, 1), [2 3 1])*0.5, 0, 'k')
    set(a61, 'ydir', 'normal','color','none','visible','off', 'FontSize', 12);
    axis equal
    xlim([0 19.75])
    ylim([0 9])
    
    if isequal(filePath(end-3:end-1), 'ext')
        text(0.2, 8.7, ['Time elapsed: ',num2str((tt+576)*mf*3.125/(24*365),'%.2f'), ' years'], 'Color', 'white', 'FontSize', 22);
    else
        text(4.2, 4.7, ['Time elapsed: ',num2str((tt-1)*mf*3.125/(24*365),'%.2f'), ' years'], 'Color', 'white', 'FontSize', 22);
    end

    dttAnimationFrame(tt) = getframe(gcf);
    hold off;
end

%% EXPORT ANIMATION
writerObj = VideoWriter(['..\MATLAB export\Final\bathyWithCurrentVectors\dtt' runID '_bathymetryWithEulerianCurrentVectors'], 'MPEG-4');
writerObj.FrameRate = 6; % 6 or 24

% open the video writer
open(writerObj);

% write the frames to the video
for ii=1:size(dttAnimationFrame, 2)
    
%     convert the image to a frame
    frame = dttAnimationFrame(ii);
    writeVideo(writerObj, frame);
    
end

% close the writer object
close(writerObj);

% clear dttAnimationFrame object for next animation
clear dttAnimationFrame;

%% SCRIPT FINISHED ALARM
% load gong
% sound(y, Fs)