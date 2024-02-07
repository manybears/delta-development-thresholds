% Date:     22/03/2023
% Author:   ERS

% This script defines the location of the low and high tide shorelines
% using the Opening Angle Method (OAM) of Shaw et al (2008).

% v2 (02/05/2023) - Modified to improve output related to discrete cell
% "permeability" issue.

%% RUN IMPORT, EXTRACTION, AND PARAMETER SCRIPTS
% dttMapImport;
dttMapImportDD;
    dttExtractBedLevels;
    dttExtractWaterLevels;
        dttParameters;
        
%% DETERMINE WATER DEPTHS
dttWaterDepth = dttWaterLevel + dttBedLevel;

%% PREAMBLE/CONFIG
dttDepthThreshold = 0.11; % threshold depth for wet/dry cells [m]

% DETERMINE LOGICAL WET/DRY CELLS FOR LOW/HIGH TIDE
% dttLowTideLogical = dttWaterDepth(2:4:end-3, :, :) < dttDepthThreshold;
% dttHighTideLogical = dttWaterDepth(4:4:end-1, :, :) < dttDepthThreshold;

% DETERMINE WET/DRY CELLS FOR NON-TIDAL SIMS
dttLowTideLogical = dttWaterDepth(1:4:end, :, :) < dttDepthThreshold;

%% LOW TIDELINE
% PRE-ALLOCATE LOW TIDE CELL ARRAYS
dttLowTideFrontContour = cell(size(dttLowTideLogical, 1), 1);
dttLowTideFrontContour_45 = cell(size(dttLowTideLogical, 1), 1);
dttLowTideFrontContour_120 = cell(size(dttLowTideLogical, 1), 1);
dttLowTideSeaAnglesMatrix = cell(size(dttLowTideLogical, 1), 1);
dttLowTideFrontLogical = zeros(size(dttLowTideLogical));

for tt = (dttStart+3)/4:size(dttLowTideLogical, 1)
% for tt = 125:125
    M = permute(dttLowTideLogical(tt,:,:), [2 3 1]); %Input black and white matrix
    
    % FIND COORDINATES OF LAND BOUNDARY CELLS (INCLUDING MANUALLY CLOSED OFF RIVER MOUTH)
%     dttLandEdgeCells = [cell2mat(bwboundaries(M)); [1 389; 1 390; 1 391; 1 392; 1 393; 1 394; 1 395; 1 396; 1 397; 1 398; 1 399; 1 400; 1 401; 1 402]];
    dttLandEdgeCells = bwboundaries(M, 'noholes');
    dttLandEdgeCells{size(dttLandEdgeCells, 1) +1} = [1 389; 1 390; 1 391; 1 392; 1 393; 1 394; 1 395; 1 396; 1 397; 1 398; 1 399; 1 400; 1 401; 1 402];

    % DEFINE CONVEX HULL REGION
    dttConvexHull = bwconvhull(M);
    
    % DEFINE LOGICAL MATRIX ALL WET CELLS WITHIN CONVEX HULL (EXCLUDING MANUALLY CLOSED OFF RIVER MOUTH)
    dttWetInshore = dttConvexHull - M;
    dttWetInshore(1,:) = 0;
    
    % FIND COORDINATES OF WET CELLS WITHIN CONVEX HULL
    [dttWetInshoreIdx(:,1), dttWetInshoreIdx(:,2)] = find(dttWetInshore==1);
    
    dttOpenAngleFull = zeros(1,sum(dttWetInshore, 'all'));
    dttLowTideSeaAnglesMatrix{tt} = zeros(size(M));
    
    % DETERMINES ANGLES FROM EVERY WET CELL WITHIN CONVEX HULL TO
    % WATER-ADJACENT DRY CELLS FOR EACH DISCRETE LAND MASS. FROM THIS,
    % CREATES LOGICAL MATRIX OF OPEN AND CLOSED ANGLES AT 0.1° INTERVALS.
    % OPENING ANGLE THEN DEFINED AS SUM OF ALL FULLY OPEN DIRECTIONS FOR
    % EVERY LAND MASS.
    for nn = 1:size(dttWetInshoreIdx, 1)
        angles = cell(size(dttLandEdgeCells, 1), 1);
        dttOpenAngle = cell(size(dttLandEdgeCells, 1), 1);
        for ii = 1:size(dttLandEdgeCells, 1)
            angles{ii} = atan2d(dttLandEdgeCells{ii}(:,2) - dttWetInshoreIdx(nn,2), dttLandEdgeCells{ii}(:,1) - dttWetInshoreIdx(nn,1));
            sortedAngles = sort(angles{ii});
            differences = [sortedAngles(2:end)-sortedAngles(1:end-1);360+sortedAngles(1)-sortedAngles(end)];
            dttOpenAngleMax = max(differences); % potentially could misidentify largest gap as the 45 degree angle between adjacent and diagonal dry cell. This only matters if looking for OAs less than 45 degrees however, which I'm not.
            dttOpenAngleStartIdx = find(differences==dttOpenAngleMax);
            dttOpenAngleStart = sortedAngles(dttOpenAngleStartIdx);
            
            dttOpenAngle{ii} = ones(1,3600);
            for pp = 1:size(dttOpenAngleStart, 1) % dttOpenAngle{ii} currently being overwritten on each iteration. will introduce small underestimates in small number of instances, but generally only for very small angles anyway.
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
%             dttOpenAngleFull(nn) = sum(cell2mat(dttOpenAngle)==0)/10; % v slow; try something else
%         else
%             dttOpenAngleFull(nn) = sum(sum(cell2mat(dttOpenAngle))==0)/10; % v slow; try something else
%         end
        if size(dttOpenAngle, 1) == 1
            dttOpenAngleFull(nn) = sum(dttOpenAngle{1}==0)/10;
        else
            dttOpenAngleCombined = zeros(size(dttOpenAngle, 1), size(dttOpenAngle{1}, 2));
            for jj = 1:size(dttOpenAngle)
                dttOpenAngleCombined(jj,:) = dttOpenAngle{jj}(:);
            end
            dttOpenAngleFull(nn) = sum(sum(dttOpenAngleCombined)==0)/10;
        end
        dttLowTideSeaAnglesMatrix{tt}(dttWetInshoreIdx(nn,1), dttWetInshoreIdx(nn,2)) = dttOpenAngleFull(nn);
    end
    
    % DEFINE ALL WET CELLS OUTSIDE CONVEX HULL AS HAVING OA OF 180°
    dttLowTideSeaAnglesMatrix{tt} = dttLowTideSeaAnglesMatrix{tt} + (~dttConvexHull .* 180);
    
    % CREATE CONTOURS FOR VARIOUS OAM ANGLES
    dttLowTideFrontContour{tt} = contour(dttLowTideSeaAnglesMatrix{tt}, [70 70]);
    dttLowTideFrontContour_45{tt} = contour(dttLowTideSeaAnglesMatrix{tt}, [45 45]);
    dttLowTideFrontContour_120{tt} = contour(dttLowTideSeaAnglesMatrix{tt}, [120 120]);
    
    % CREATE LOGICAL "CONTOUR" of 70° OAM
    dttLowTideFrontLogical(tt,:,:) = bwmorph(dttLowTideSeaAnglesMatrix{tt} >= 70, 'remove');
        
    clear dttWetInshoreIdx;
end

%% TEST PLOTS 1
figure(111)
imagesc(dttLowTideSeaAnglesMatrix{28}, [0 180])
set(gca, 'ydir', 'normal')
hold on
contour(dttLowTideSeaAnglesMatrix{28}, [45 45], 'k--', 'linewidth', 2)
contour(dttLowTideSeaAnglesMatrix{28}, [70 70], 'k-', 'linewidth', 2)
for ii = 1:size(dttLandEdgeCells, 1)
    plot(dttLandEdgeCells{ii}(:,2),dttLandEdgeCells{ii}(:,1), 'g.')
end
hold off
axis equal
colorbar

%% HIGH TIDELINE
% PRE-ALLOCATE HIGH TIDE CELL ARRAYS
% dttHighTideFrontContour = cell(size(dttHighTideLogical, 1), 1);
% dttHighTideFrontContour_45 = cell(size(dttHighTideLogical, 1), 1);
% dttHighTideFrontContour_120 = cell(size(dttHighTideLogical, 1), 1);
% dttHighTideSeaAnglesMatrix = cell(size(dttHighTideLogical, 1), 1);
% dttHighTideFrontLogical = zeros(size(dttHighTideLogical));
% 
% for tt = (dttStart+3)/4:size(dttHighTideLogical, 1)
% % for tt = size(dttHighTideLogical, 1):size(dttHighTideLogical, 1)
%     M = permute(dttHighTideLogical(tt,:,:), [2 3 1]); %Input black and white matrix
%     
%     % FIND COORDINATES OF LAND BOUNDARY CELLS (INCLUDING MANUALLY CLOSED OFF RIVER MOUTH)
% %     dttLandEdgeCells = [cell2mat(bwboundaries(M)); [1 389; 1 390; 1 391; 1 392; 1 393; 1 394; 1 395; 1 396; 1 397; 1 398; 1 399; 1 400; 1 401; 1 402]];
%     dttLandEdgeCells = bwboundaries(M, 'noholes');
%     dttLandEdgeCells{size(dttLandEdgeCells, 1) +1} = [1 389; 1 390; 1 391; 1 392; 1 393; 1 394; 1 395; 1 396; 1 397; 1 398; 1 399; 1 400; 1 401; 1 402];
% 
%     % DEFINE CONVEX HULL REGION
%     dttConvexHull = bwconvhull(M);
%     
%     % DEFINE LOGICAL MATRIX ALL WET CELLS WITHIN CONVEX HULL (EXCLUDING MANUALLY CLOSED OFF RIVER MOUTH)
%     dttWetInshore = dttConvexHull - M;
%     dttWetInshore(1,:) = 0;
%     
%     % FIND COORDINATES OF WET CELLS WITHIN CONVEX HULL
%     [dttWetInshoreIdx(:,1), dttWetInshoreIdx(:,2)] = find(dttWetInshore==1);
%     
%     dttOpenAngleFull = zeros(1,sum(dttWetInshore, 'all'));
%     dttHighTideSeaAnglesMatrix{tt} = zeros(size(M));
%     
%     % DETERMINES ANGLES FROM EVERY WET CELL WITHIN CONVEX HULL TO
%     % WATER-ADJACENT DRY CELLS FOR EACH DISCRETE LAND MASS. FROM THIS,
%     % CREATES LOGICAL MATRIX OF OPEN AND CLOSED ANGLES AT 0.1° INTERVALS.
%     % OPENING ANGLE THEN DEFINED AS SUM OF ALL FULLY OPEN DIRECTIONS FOR
%     % EVERY LAND MASS.
%     for nn = 1:size(dttWetInshoreIdx, 1)
%         angles = cell(size(dttLandEdgeCells, 1), 1);
%         dttOpenAngle = cell(size(dttLandEdgeCells, 1), 1);
%         for ii = 1:size(dttLandEdgeCells, 1)
%             angles{ii} = atan2d(dttLandEdgeCells{ii}(:,2) - dttWetInshoreIdx(nn,2), dttLandEdgeCells{ii}(:,1) - dttWetInshoreIdx(nn,1));
%             sortedAngles = sort(angles{ii});
%             differences = [sortedAngles(2:end)-sortedAngles(1:end-1);360+sortedAngles(1)-sortedAngles(end)];
%             dttOpenAngleMax = max(differences);
%             dttOpenAngleStartIdx = find(differences==dttOpenAngleMax);
%             dttOpenAngleStart = sortedAngles(dttOpenAngleStartIdx); % potentially could misidentify largest gap as the 45 degree angle between adjacent and diagonal dry cell. This only matters if looking for OAs less than 45 degrees however, which I'm not.
%             
%             dttOpenAngle{ii} = ones(1,3600);
%             for pp = 1:size(dttOpenAngleStart, 1) % dttOpenAngle{ii} currently being overwritten on each iteration. needs fixed.
%                 if dttOpenAngleStartIdx(pp) == size(sortedAngles, 1)
%                     dttOpenAngleEnd = sortedAngles(1);
%                     dttOpenAngle{ii}(round((dttOpenAngleStart(pp)+180)*10):3600) = 0;
%                     dttOpenAngle{ii}(1:round((dttOpenAngleEnd)+180)*10) = 0;
%                 else
%                     dttOpenAngleEnd = sortedAngles(dttOpenAngleStartIdx(pp)+1);
%                     dttOpenAngle{ii}(round((dttOpenAngleStart(pp)+180)*10):round((dttOpenAngleEnd)+180)*10) = 0;
%                 end
%             end
%         end
% %         if size(dttOpenAngle, 1) == 1
% %             dttOpenAngleFull(nn) = sum(cell2mat(dttOpenAngle)==0)/10; % v slow; try something else
% %         else
% %             dttOpenAngleFull(nn) = sum(sum(cell2mat(dttOpenAngle))==0)/10; % v slow; try something else
% %         end
%         if size(dttOpenAngle, 1) == 1
%             dttOpenAngleFull(nn) = sum(dttOpenAngle{1}==0)/10;
%         else
%             dttOpenAngleCombined = zeros(size(dttOpenAngle, 1), size(dttOpenAngle{1}, 2));
%             for jj = 1:size(dttOpenAngle)
%                 dttOpenAngleCombined(jj,:) = dttOpenAngle{jj}(:);
%             end
%             dttOpenAngleFull(nn) = sum(sum(dttOpenAngleCombined)==0)/10;
%         end
%         dttHighTideSeaAnglesMatrix{tt}(dttWetInshoreIdx(nn,1), dttWetInshoreIdx(nn,2)) = dttOpenAngleFull(nn);
%     end
%     
%     % DEFINE ALL WET CELLS OUTSIDE CONVEX HULL AS HAVING OA OF 180°
%     dttHighTideSeaAnglesMatrix{tt} = dttHighTideSeaAnglesMatrix{tt} + (~dttConvexHull .* 180);
%     
%     % CREATE CONTOURS FOR VARIOUS OAM ANGLES
%     dttHighTideFrontContour{tt} = contour(dttHighTideSeaAnglesMatrix{tt}, [70 70]); % for tidelines
%     dttHighTideFrontContour_45{tt} = contour(dttHighTideSeaAnglesMatrix{tt}, [45 45]); % for rugosity measure (Broaddus)
%     dttHighTideFrontContour_120{tt} = contour(dttHighTideSeaAnglesMatrix{tt}, [120 120]); % for rugosity measure (Broaddus)
%     
%     % CREATE LOGICAL "CONTOUR" of 70° OAM
%     dttHighTideFrontLogical(tt,:,:) = bwmorph(dttHighTideSeaAnglesMatrix{tt} >= 70, 'remove');
%         
%     clear dttWetInshoreIdx;
% end

%% TEST PLOTS 2
% figure(222)
% imagesc(dttHighTideSeaAnglesMatrix{end}, [0 180])
% set(gca, 'ydir', 'normal')
% hold on
% contour(dttHighTideSeaAnglesMatrix{end}, [45 45], 'r', 'linewidth', 2)
% contour(dttHighTideSeaAnglesMatrix{end}, [70 70], 'k', 'linewidth', 2)
% for ii = 1:size(dttLandEdgeCells, 1)
%     plot(dttLandEdgeCells{ii}(:,2),dttLandEdgeCells{ii}(:,1), 'g.')
% end
% hold off
% axis equal
% colorbar