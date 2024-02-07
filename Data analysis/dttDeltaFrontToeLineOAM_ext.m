% Date:     19/12/2022
% Author:   ERS

% This script defines the location of the delta-front toe using a threshold
% net bed level increase value and the morphological closing method of
% Geleynse (2012).

% v2 (23/03/2023) - Amended to use OAM method.

% v2b (02/06/2023) - Alterative version for extended sims. Modified to
% import original sim for initial bed levels.

%% RUN IMPORT, EXTRACTION, AND PARAMETER SCRIPTS
% dttMapImport;
dttMapImportDD;
    dttExtractBedLevels;
    dttExtractWaterLevels;
        dttParameters;

%% IMPORT ORIGINAL SIM DATA AND EXTRACT INITIAL BEDLEVELS
filePathIni = [filePath(1:end-4) '/'];
dttMapDataIniDD = cell(20,1);
for ii = 1:20 % adjust end of loop to match required number of files
    fileName = append(append(fileName(1:end-6), num2str(ii, '%02d')), '.dat');
    dttMapDataIniDD{ii} = vs_use(fullfile(filePathIni,fileName));
end

if exist('dttBedLevelIni', 'var') == 0
    dttBedLevelIniDD = cell(size(dttMapDataIniDD));
    for ii = 1:size(dttMapDataDD, 1)
        dttBedLevelIniDD{ii} = vs_let(dttMapDataIniDD{ii}, 'map-sed-series', {1}, 'DPS');
        dttBedLevelIniDD{ii} = dttBedLevelIniDD{ii}(:, 2:end-1, 2:end-1); % trim boundary cell data
    end
    dttBedLevelIniChannel = dttBedLevelIniDD{end};

    % concatenate basin subdomains (omitting channel):
    dttBedLevelIni = cat(3, dttBedLevelIniDD{1:19}); % amend endpoint manually
else
end

clear dttMapDataIniDD dttBedLevelIniDD;

%% DEFINE LOGICAL MATRIX OF DELTA/NON-DELTA CELLS
deltaThreshold = 0.25; % Net bed level increase above which cell is considered part of the delta [m].
dttDeltaLogical = (dttBedLevel(dttStart:4:dttEnd,:,:) - dttBedLevelIni(1, :, :)) < -deltaThreshold; % note downward positive bed level convention

%% DELTA FRONT TOE
% PRE-ALLOCATE LOW TIDE CELL ARRAYS
dttDeltaFrontContour = cell(size(dttDeltaLogical, 1), 1);
dttDeltaFrontContour_45 = cell(size(dttDeltaLogical, 1), 1);
dttDeltaFrontContour_120 = cell(size(dttDeltaLogical, 1), 1);
dttDeltaSeaAnglesMatrix = cell(size(dttDeltaLogical, 1), 1);
dttDeltaFrontLogical = zeros(size(dttDeltaLogical));

for tt = (dttStart+3)/4:size(dttDeltaLogical, 1)
% for tt = 15:15
    M = permute(dttDeltaLogical(tt,:,:), [2 3 1]); %Input black and white matrix
    M(1:20, 1:390) = 1;     % Manually adds initial coastline
    M(1:20, 401:790) = 1;   % Manually adds initial coastline
    M(1, 391:400) = 1;      % Manually blocks river channel
    
    % FIND COORDINATES OF LAND BOUNDARY CELLS (INCLUDING MANUALLY CLOSED OFF RIVER MOUTH)
    dttLandEdgeCells = bwboundaries(M, 'noholes');
%     dttLandEdgeCells{size(dttLandEdgeCells, 1) +1} = [21:-1:2 ones(1,790) 2:21; ones(1,20) 1:790, 790 790 790 790 790 790 790 790 790 790 790 790 790 790 790 790 790 790 790 790]';

    % DEFINE CONVEX HULL REGION
    dttConvexHull = bwconvhull(M);
    
    % DEFINE LOGICAL MATRIX ALL WET CELLS WITHIN CONVEX HULL (EXCLUDING MANUALLY CLOSED OFF RIVER MOUTH)
    dttWetInshore = dttConvexHull - M;
    dttWetInshore(1,:) = 0;
    
    % FIND COORDINATES OF WET CELLS WITHIN CONVEX HULL
    [dttWetInshoreIdx(:,1), dttWetInshoreIdx(:,2)] = find(dttWetInshore==1);
    
    dttOpenAngleFull = zeros(1,sum(dttWetInshore, 'all'));
    dttDeltaSeaAnglesMatrix{tt} = zeros(size(M));
    
    % DETERMINES ANGLES FROM EVERY WET CELL WITHIN CONVEX HULL TO
    % WATER-ADJACENT DRY CELLS FOR EACH DISCRETE LAND MASS. FROM THIS,
    % CREATES LOGICAL MATRIX OF OPEN AND CLOSED ANGLES AT 0.1° INTERVALS.
    % OPENING ANGLE THEN DEFINED AS SUM OF ALL FULLY OPEN DIRECTIONS FOR
    % EVERY LAND MASS.
    for nn = 1:size(dttWetInshoreIdx, 1)
        angles = cell(size(dttLandEdgeCells, 1), 1);
        dttOpenAngle = cell(size(dttLandEdgeCells, 1), 1);
        % Below loop determines opening angle for /each distinct land
        % mass/.
        for ii = 1:size(dttLandEdgeCells, 1)
            angles{ii} = atan2d(dttLandEdgeCells{ii}(:,2) - dttWetInshoreIdx(nn,2), dttLandEdgeCells{ii}(:,1) - dttWetInshoreIdx(nn,1));
            sortedAngles = sort(angles{ii});
            differences = [sortedAngles(2:end)-sortedAngles(1:end-1);360+sortedAngles(1)-sortedAngles(end)];
            dttOpenAngleMax = max(differences); % potentially could misidentify largest gap as the 45 degree angle between adjacent and diagonal dry cell. This only matters if looking for OAs less than 45 degrees however, which I'm not.
            dttOpenAngleStartIdx = find(differences==dttOpenAngleMax);
            dttOpenAngleStart = sortedAngles(dttOpenAngleStartIdx);
            
            dttOpenAngle{ii} = ones(1,3600);
            for pp = 1:size(dttOpenAngleStart, 1) % dttOpenAngle{ii} currently being overwritten on each iteration. will introduce underestimates in small number of instances, but generally only for very small angles anyway.
                if dttOpenAngleStartIdx(pp) == size(sortedAngles, 1)
                    dttOpenAngleEnd = sortedAngles(1);
                    dttOpenAngle{ii}(round((dttOpenAngleStart(pp)+180)*10):3600) = 0;
                    dttOpenAngle{ii}(1:round((dttOpenAngleEnd)+180)*10) = 0;
                else
                    dttOpenAngleEnd = sortedAngles(dttOpenAngleStartIdx(pp)+1);
                    dttOpenAngle{ii}(round((dttOpenAngleStart(pp)+180)*10):round((dttOpenAngleEnd)+180)*10) = 0;
                end
            end
        end
%         if size(dttOpenAngle, 1) == 1
%             dttOpenAngleFull(nn) = sum(cell2mat(dttOpenAngle)==0)/10;
%         else
%             dttOpenAngleFull(nn) = sum(sum(cell2mat(dttOpenAngle))==0)/10;
%         end
%         dttDeltaSeaAnglesMatrix{tt}(dttWetInshoreIdx(nn,1), dttWetInshoreIdx(nn,2)) = dttOpenAngleFull(nn);
        if size(dttOpenAngle, 1) == 1
            dttOpenAngleFull(nn) = sum(dttOpenAngle{1}==0)/10;
        else
            dttOpenAngleCombined = zeros(size(dttOpenAngle, 1), size(dttOpenAngle{1}, 2));
            for jj = 1:size(dttOpenAngle)
                dttOpenAngleCombined(jj,:) = dttOpenAngle{jj}(:);
            end
            dttOpenAngleFull(nn) = sum(sum(dttOpenAngleCombined)==0)/10;
        end
        dttDeltaSeaAnglesMatrix{tt}(dttWetInshoreIdx(nn,1), dttWetInshoreIdx(nn,2)) = dttOpenAngleFull(nn);
    end
    
    % DEFINE ALL WET CELLS OUTSIDE CONVEX HULL AS HAVING OA OF 180°
    dttDeltaSeaAnglesMatrix{tt} = dttDeltaSeaAnglesMatrix{tt} + (~dttConvexHull .* 180);
    
    % CREATE CONTOURS FOR VARIOUS OAM ANGLES
    dttDeltaFrontContour{tt} = contour(dttDeltaSeaAnglesMatrix{tt}, [70 70]);
    dttDeltaFrontContour_45{tt} = contour(dttDeltaSeaAnglesMatrix{tt}, [45 45]);
    dttDeltaFrontContour_120{tt} = contour(dttDeltaSeaAnglesMatrix{tt}, [120 120]);
    
    % CREATE LOGICAL "CONTOUR" of 70° OAM
    dttDeltaFrontLogical(tt,:,:) = bwmorph(dttDeltaSeaAnglesMatrix{tt} >= 70, 'remove');
        
    clear dttWetInshoreIdx;
end

%% TEST PLOTS
% dttTimePoint = dttEnd;
% 
% xAxis = [0.025 19.725];
% yAxis = [0.025 8.975];
% 
% dttTestPlot = figure(102);
% dttTestPlot.Position = [100 100 1920 720];
% a21 = axes;
% % imagesc(xAxis, yAxis, permute(-dttBedLevel(dttTimePoint, :, :), [2 3 1]), 2.0*[-570/71 10]);
% imagesc(xAxis, yAxis, permute(-dttBedLevel(dttTimePoint, :, :), [2 3 1]), [-20 5]);
% set(a21, 'ydir', 'normal', 'FontSize', 12)
% colormap(a21, bone)
% ylim([0 9])
% xlim([0 19.750])
% % cb1 = colorbar;
% % cb1.Label.String = 'Elevation [m]';
% xlabel('{\it x}-distance [km]');
% ylabel('{\it y}-distance [km]');
% hold on;
% a22 = axes;
% % imagesc(xAxis, yAxis, permute(dttDeltaFrontLogical((dttTimePoint-1)/4+1, :, :), [2 3 1]), 'AlphaData', permute(dttDeltaFrontLogical((dttTimePoint-1)/4+1, :, :), [2 3 1]));
% imagesc(xAxis, yAxis, permute(dttDeltaFrontLogical((dttTimePoint+3)/4-1, :, :), [2 3 1]), 'AlphaData', permute(dttDeltaFrontLogical((dttTimePoint+3)/4-1, :, :), [2 3 1]));
% colormap(a22, flipud(hsv))
% set(a22, 'ydir', 'normal', 'color', 'none', 'visible', 'on', 'FontSize', 12);
% ylim([0 9])
% xlim([0 19.750])
% xlabel('{\it x}-distance [km]');
% ylabel('{\it y}-distance [km]');
% hold off;

%%
% figure(333)
% imagesc(dttDeltaSeaAnglesMatrix{15}, [0 180])
% set(gca, 'ydir', 'normal')
% hold on
% % contour(dttDeltaSeaAnglesMatrix{15}, [45 45], 'r', 'linewidth', 2)
% contour(dttDeltaSeaAnglesMatrix{15}, [70 70], 'k', 'linewidth', 2)
% for ii = 1:size(dttLandEdgeCells, 1)
%     plot(dttLandEdgeCells{ii}(:,2),dttLandEdgeCells{ii}(:,1), 'g.')
% end
% hold off
% axis equal
% colorbar