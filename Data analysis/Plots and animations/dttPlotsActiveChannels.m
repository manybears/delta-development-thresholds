% Date:     16/05/2023
% Author:   ERS

% This script plots active channel networks over bathymetry and tidelines.

%% RUN THESE SCRIPTS FIRST
% dttChannelsAlt;

%% PLOTS PREAMBLE
% close all;
% ES2010_colormap;
dttColorMap = cmocean('-tempo');
xAxis = [0.0125 19.7375];
yAxis = [0.0125 8.9875];

%% (ROUGH) FIX FOR TIDE LINES SHOWING AT EDGES
dttLowTideFrontLogical(:, 21:end, 1) = 0;
dttLowTideFrontLogical(:, 21:end, end) = 0;
dttLowTideFrontLogical(:, end, :) = 0;

if exist('dttHighTideFrontLogical', 'var') ==1
    dttHighTideFrontLogical(:, 21:end, 1) = 0;
    dttHighTideFrontLogical(:, 21:end, end) = 0;
    dttHighTideFrontLogical(:, end, :) = 0;
end

dttDeltaFrontLogical(:, 21:end, 1) = 0;
dttDeltaFrontLogical(:, 21:end, end) = 0;
dttDeltaFrontLogical(:, end, :) = 0;

%% (ROUGH) DETERMINE INFILLED LOW TIDE BOUNDARY LOGIC MATRIX FOR PLOTS
% Note: run above fix first
dttLowTideFrontLogicalCloseLine = zeros(size(dttLowTideFrontLogical));
dttLowTideFrontLogicalCloseLine(:, 21, :) = 1;
dttLowTideFrontLogicalClosed = dttLowTideFrontLogical ==1 | dttLowTideFrontLogicalCloseLine ==1;
dttLowTideFrontLogicalInfilled = zeros(size(dttLowTideFrontLogical));
for tt = 1:size(dttLowTideFrontLogical, 1)
    dttLowTideFrontLogicalInfilled(tt, :, :) = imfill(permute(dttLowTideFrontLogicalClosed(tt, :, :), [2 3 1]), 'holes');
end

%% PLOT BATHY, LOW TIDE LINE, AND ACTIVE CHANNELS
% dttChannelPlot = figure(451);
% dttChannelPlot.Position = [100 100 1920 720];
% clf;
% a1 = axes;
% % imagesc(xAxis, yAxis, permute(-W0T05.dttBedLevel(end, :, :), [2 3 1]), [-20 5]);
% imagesc(xAxis, yAxis, permute(-dttBedLevel(end-4, :, :), [2 3 1]), [-20 5]);
% set(a1, 'ydir', 'normal', 'FontSize', 12)
% colormap(a1, dttColorMap)
% % colormap(a1, ES2010)
% axis equal;
% ylim([0 9])
% xlim([0 19.750])
% % title(['W0.4T6.0']);% mf', num2str(mf)], 'cos^{500} and "bin" spectral shape');
% % cb1 = colorbar;
% % cb1.Label.String = 'Bed elevation [m]';
% xlabel('{\it x}-distance [km]');
% ylabel('{\it y}-distance [km]');
% hold on;
% 
%     a2 = axes;
% %     imagesc(xAxis, yAxis, permute(W0T05.dttChannelActive(end-1, :, :), [2 3 1]), 'AlphaData', permute(W0T05.dttChannelActive(end-1, :, :), [2 3 1]));
%     imagesc(xAxis, yAxis, permute(dttChannelActive(end-1, :, :), [2 3 1]) .* [ones(20, 790); permute(dttLowTideFrontLogicalInfilled(end, 21:end, :), [2 3 1])], 'AlphaData', 0.8*permute(dttChannelActive(end-1, :, :), [2 3 1]) .* [ones(20, 790); permute(dttLowTideFrontLogicalInfilled(end, 21:end, :), [2 3 1])]);
% %     imagesc(xAxis, yAxis, permute(dttChannelActive(end-1, :, :), [2 3 1]));
%     colormap(a2, prism)
% %     colormap(a2, flipud(gray))
%     set(a2, 'ydir', 'normal', 'color', 'none', 'visible', 'on', 'FontSize', 12);
%     axis equal
%     ylim([0 9])
%     xlim([0 19.750])
%     xlabel('{\it x}-distance [km]');
%     ylabel('{\it y}-distance [km]');
%     
%         a25 = axes;
%     imagesc(xAxis, yAxis, permute(dttChannelInactive(end-1, :, :), [2 3 1]) .* [ones(20, 790); permute(dttLowTideFrontLogicalInfilled(end, 21:end, :), [2 3 1])], 'AlphaData', 0.8*permute(dttChannelInactive(end-1, :, :), [2 3 1]) .* [ones(20, 790); permute(dttLowTideFrontLogicalInfilled(end, 21:end, :), [2 3 1])]);
% %     imagesc(xAxis, yAxis, permute(dttChannelActive(end-1, :, :), [2 3 1]));
%     colormap(a25, autumn)
% %     colormap(a2, flipud(gray))
%     set(a25, 'ydir', 'normal', 'color', 'none', 'visible', 'on', 'FontSize', 12);
%     axis equal
%     ylim([0 9])
%     xlim([0 19.750])
%     
%         a3 = axes;
%         imagesc(xAxis, yAxis, [zeros(20, 790); permute(dttLowTideFrontLogical(end, 21:end, :), [2 3 1])], 'AlphaData', [zeros(20, 790); permute(dttLowTideFrontLogical(end, 21:end, :), [2 3 1])]);
%         colormap(a3, flipud(hsv))
%         set(a3, 'ydir', 'normal', 'color', 'none', 'visible', 'off', 'FontSize', 12);
%         axis equal
%         ylim([0 9])
%         xlim([0 19.750])
%         
% %             a4 = axes;
% %             imagesc(xAxis, yAxis, [zeros(20, 790); permute(dttDeltaFrontLogical(end-1, 21:end, :), [2 3 1])], 'AlphaData', [zeros(20, 790); permute(dttDeltaFrontLogical(end-1, 21:end, :), [2 3 1])]);
% %             colormap(a4, flipud(gray))
% %             set(a4, 'ydir', 'normal','color','none','visible','off', 'FontSize', 12);
% %             axis equal
% %             ylim([0 9])
% %             xlim([0 19.750])
        
%% EXPORT PLOTS
% exportgraphics(dttChannelPlot, ['../MATLAB export/Final/channels ROUGH/dttW0.0T6.0_activeChannels_36yr.png'], 'Resolution', 150);

%% ANIMATE BATHY, LOW TIDE LINE, AND ACTIVE CHANNELS
dttChannelAnim = figure(452);
dttChannelAnim.Position = [100 100 1920 720];
if dttTidalRange ==0
    for tt = 1:145
        clf reset;
        a1 = axes;
        imagesc(xAxis, yAxis, permute(-dttBedLevel((tt*4)-3, :, :), [2 3 1]), [-20 5]);
        set(a1, 'ydir', 'normal', 'FontSize', 12)
        colormap(a1, dttColorMap)
        % colormap(a1, ES2010)
        axis equal;
        ylim([0 9])
        xlim([0 19.750])
        % title(['W0.4T6.0']);% mf', num2str(mf)], 'cos^{500} and "bin" spectral shape');
        % cb1 = colorbar;
        % cb1.Label.String = 'Bed elevation [m]';
        xlabel('{\it x}-distance [km]');
        ylabel('{\it y}-distance [km]');
        hold on;
        
        a2 = axes;
        imagesc(xAxis, yAxis, permute(dttChannelActive(tt, :, :), [2 3 1]) .* [ones(20, 790); permute(dttLowTideFrontLogicalInfilled(tt, 21:end, :), [2 3 1])], 'AlphaData', 0.8*permute(dttChannelActive(tt, :, :), [2 3 1]) .* [ones(20, 790); permute(dttLowTideFrontLogicalInfilled(tt, 21:end, :), [2 3 1])]);
        %     imagesc(xAxis, yAxis, permute(dttChannelActive(end-1, :, :), [2 3 1]));
        colormap(a2, prism)
        set(a2, 'ydir', 'normal', 'color', 'none', 'visible', 'on', 'FontSize', 12);
        axis equal
        ylim([0 9])
        xlim([0 19.750])
        xlabel('{\it x}-distance [km]');
        ylabel('{\it y}-distance [km]');
        
        a25 = axes;
        imagesc(xAxis, yAxis, permute(dttChannelInactive(tt, :, :), [2 3 1]) .* [ones(20, 790); permute(dttLowTideFrontLogicalInfilled(tt, 21:end, :), [2 3 1])], 'AlphaData', 0.8*permute(dttChannelInactive(tt, :, :), [2 3 1]) .* [ones(20, 790); permute(dttLowTideFrontLogicalInfilled(tt, 21:end, :), [2 3 1])]);
        %     imagesc(xAxis, yAxis, permute(dttChannelActive(end-1, :, :), [2 3 1]));
        colormap(a25, autumn)
        set(a25, 'ydir', 'normal', 'color', 'none', 'visible', 'on', 'FontSize', 12);
        axis equal
        ylim([0 9])
        xlim([0 19.750])
        
        a3 = axes;
        imagesc(xAxis, yAxis, [zeros(20, 790); permute(dttLowTideFrontLogical(tt, 21:end, :), [2 3 1])], 'AlphaData', [zeros(20, 790); permute(dttLowTideFrontLogical(tt, 21:end, :), [2 3 1])]);
        colormap(a3, flipud(hsv))
        set(a3, 'ydir', 'normal', 'color', 'none', 'visible', 'off', 'FontSize', 12);
        axis equal
        ylim([0 9])
        xlim([0 19.750])
        
        %             a4 = axes;
        %             imagesc(xAxis, yAxis, [zeros(20, 790); permute(dttDeltaFrontLogical(end-1, 21:end, :), [2 3 1])], 'AlphaData', [zeros(20, 790); permute(dttDeltaFrontLogical(end-1, 21:end, :), [2 3 1])]);
        %             colormap(a4, flipud(gray))
        %             set(a4, 'ydir', 'normal','color','none','visible','off', 'FontSize', 12);
        %             axis equal
        %             ylim([0 9])
        %             xlim([0 19.750])
        
        if isequal(filePath(end-3:end-1), 'ext') % checks if sim is "original" or "extended".
            %extended
            text(0.2, 8.7, ['Time elapsed: ',num2str((tt+143)*mf*12.5/(24*365),'%.2f'), ' years'], 'Color', 'white', 'FontSize', 22);
        else
            %original
            text(0.2, 8.7, ['Time elapsed: ',num2str((tt-1)*mf*12.5/(24*365),'%.2f'), ' years'], 'Color', 'white', 'FontSize', 22);
        end

        dttAnimationFrame(tt) = getframe(gcf);
    end
else
    for tt = 2:144
        clf reset;
        a1 = axes;
        imagesc(xAxis, yAxis, permute(-dttBedLevel((tt*4)-3, :, :), [2 3 1]), [-20 5]);
        set(a1, 'ydir', 'normal', 'FontSize', 12)
        colormap(a1, dttColorMap)
        % colormap(a1, ES2010)
        axis equal;
        ylim([0 9])
        xlim([0 19.750])
        % title(['W0.4T6.0']);% mf', num2str(mf)], 'cos^{500} and "bin" spectral shape');
        % cb1 = colorbar;
        % cb1.Label.String = 'Bed elevation [m]';
        xlabel('{\it x}-distance [km]');
        ylabel('{\it y}-distance [km]');
        hold on;
        
        a2 = axes;
        imagesc(xAxis, yAxis, permute(dttChannelActive(tt, :, :), [2 3 1]) .* [ones(20, 790); permute(dttLowTideFrontLogicalInfilled(tt-1, 21:end, :), [2 3 1])], 'AlphaData', 0.8*permute(dttChannelActive(tt, :, :), [2 3 1]) .* [ones(20, 790); permute(dttLowTideFrontLogicalInfilled(tt-1, 21:end, :), [2 3 1])]);
        %     imagesc(xAxis, yAxis, permute(dttChannelActive(end-1, :, :), [2 3 1]));
        colormap(a2, prism)
        set(a2, 'ydir', 'normal', 'color', 'none', 'visible', 'on', 'FontSize', 12);
        axis equal
        ylim([0 9])
        xlim([0 19.750])
        xlabel('{\it x}-distance [km]');
        ylabel('{\it y}-distance [km]');
        
        a25 = axes;
        imagesc(xAxis, yAxis, permute(dttChannelInactive(tt, :, :), [2 3 1]) .* [ones(20, 790); permute(dttLowTideFrontLogicalInfilled(tt-1, 21:end, :), [2 3 1])], 'AlphaData', 0.8*permute(dttChannelInactive(tt, :, :), [2 3 1]) .* [ones(20, 790); permute(dttLowTideFrontLogicalInfilled(tt-1, 21:end, :), [2 3 1])]);
        %     imagesc(xAxis, yAxis, permute(dttChannelActive(end-1, :, :), [2 3 1]));
        colormap(a25, autumn)
        set(a25, 'ydir', 'normal', 'color', 'none', 'visible', 'on', 'FontSize', 12);
        axis equal
        ylim([0 9])
        xlim([0 19.750])
        
        a3 = axes;
        imagesc(xAxis, yAxis, [zeros(20, 790); permute(dttLowTideFrontLogical(tt-1, 21:end, :), [2 3 1])], 'AlphaData', [zeros(20, 790); permute(dttLowTideFrontLogical(tt-1, 21:end, :), [2 3 1])]);
        colormap(a3, flipud(hsv))
        set(a3, 'ydir', 'normal', 'color', 'none', 'visible', 'off', 'FontSize', 12);
        axis equal
        ylim([0 9])
        xlim([0 19.750])
        
        %             a4 = axes;
        %             imagesc(xAxis, yAxis, [zeros(20, 790); permute(dttDeltaFrontLogical(end-1, 21:end, :), [2 3 1])], 'AlphaData', [zeros(20, 790); permute(dttDeltaFrontLogical(end-1, 21:end, :), [2 3 1])]);
        %             colormap(a4, flipud(gray))
        %             set(a4, 'ydir', 'normal','color','none','visible','off', 'FontSize', 12);
        %             axis equal
        %             ylim([0 9])
        %             xlim([0 19.750])
        
        
        if isequal(filePath(end-3:end-1), 'ext') % checks if sim is "original" or "extended".
            %extended
            text(0.2, 8.7, ['Time elapsed: ',num2str((tt+143)*mf*12.5/(24*365),'%.2f'), ' years'], 'Color', 'white', 'FontSize', 22);
        else
            %original
            text(0.2, 8.7, ['Time elapsed: ',num2str((tt-1)*mf*12.5/(24*365),'%.2f'), ' years'], 'Color', 'white', 'FontSize', 22);
        end
        
        dttAnimationFrame(tt-1) = getframe(gcf);
    end
end

%% EXPORT ANIMATION
writerObj = VideoWriter(['..\MATLAB export\Final\channels\dtt' runID '_channels'], 'MPEG-4');
writerObj.FrameRate = 6;

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