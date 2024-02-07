% Date:     11/05/2023
% Author:   ERS

% This script generates .dep files for extended sims. Dep files created
% with this script give cell centre values, not cell corner values.

%% RUN IMPORT AND EXTRACTION SCRIPTS
dttMapImportDD;
    dttExtractBedLevels;

%% DETERMINE runID FROM IMPORT FILEPATH
if isequal(filePath(end-3:end-1), 'ext')
    runID = filePath(end-11:end-1);
elseif isequal(filePath(end-6:end-1), 'varwav')
    runID = filePath(end-14:end-1);
else
    runID = filePath(end-8:end-1);
end

%% DEFINE INDIVIDUAL BED LEVEL MATRICES FOR EACH SUBDOMAIN
% CREATE EMPTY MATRICES
dttDepths = cell(20,1);

dttDepths{1} = zeros(362, 40);

dttDepths{2} = zeros(362, 44);
dttDepths{3} = zeros(362, 44);
dttDepths{4} = zeros(362, 44);
dttDepths{5} = zeros(362, 44);
dttDepths{6} = zeros(362, 44);
dttDepths{7} = zeros(362, 44);
dttDepths{8} = zeros(362, 44);
dttDepths{9} = zeros(362, 44);
dttDepths{10} = zeros(362, 44);
dttDepths{11} = zeros(362, 44);
dttDepths{12} = zeros(362, 44);
dttDepths{13} = zeros(362, 44);
dttDepths{14} = zeros(362, 44);
dttDepths{15} = zeros(362, 44);
dttDepths{16} = zeros(362, 44);
dttDepths{17} = zeros(362, 44);
dttDepths{18} = zeros(362, 44);

dttDepths{19} = zeros(362, 40);

dttDepths{20} = zeros(202, 3);

dttDepths{1}(2:end-1, 2:end-1) = permute(dttBedLevel(end, :, 1:38), [2 3 1]);
dttDepths{1}(:, end) = -999;
dttDepths{1}(end, :) = -999;

dttDepths{2}(2:end-1, 2:end-1) = permute(dttBedLevel(end, :, 39:80), [2 3 1]);
dttDepths{2}(:, end) = -999;
dttDepths{2}(end, :) = -999;

dttDepths{3}(2:end-1, 2:end-1) = permute(dttBedLevel(end, :, 81:122), [2 3 1]);
dttDepths{3}(:, end) = -999;
dttDepths{3}(end, :) = -999;

dttDepths{4}(2:end-1, 2:end-1) = permute(dttBedLevel(end, :, 123:164), [2 3 1]);
dttDepths{4}(:, end) = -999;
dttDepths{4}(end, :) = -999;

dttDepths{5}(2:end-1, 2:end-1) = permute(dttBedLevel(end, :, 165:206), [2 3 1]);
dttDepths{5}(:, end) = -999;
dttDepths{5}(end, :) = -999;

dttDepths{6}(2:end-1, 2:end-1) = permute(dttBedLevel(end, :, 207:248), [2 3 1]);
dttDepths{6}(:, end) = -999;
dttDepths{6}(end, :) = -999;

dttDepths{7}(2:end-1, 2:end-1) = permute(dttBedLevel(end, :, 249:290), [2 3 1]);
dttDepths{7}(:, end) = -999;
dttDepths{7}(end, :) = -999;

dttDepths{8}(2:end-1, 2:end-1) = permute(dttBedLevel(end, :, 291:332), [2 3 1]);
dttDepths{8}(:, end) = -999;
dttDepths{8}(end, :) = -999;

dttDepths{9}(2:end-1, 2:end-1) = permute(dttBedLevel(end, :, 333:374), [2 3 1]);
dttDepths{9}(:, end) = -999;
dttDepths{9}(end, :) = -999;

dttDepths{10}(2:end-1, 2:end-1) = permute(dttBedLevel(end, :, 375:416), [2 3 1]);
dttDepths{10}(:, end) = -999;
dttDepths{10}(end, :) = -999;

dttDepths{11}(2:end-1, 2:end-1) = permute(dttBedLevel(end, :, 417:458), [2 3 1]);
dttDepths{11}(:, end) = -999;
dttDepths{11}(end, :) = -999;

dttDepths{12}(2:end-1, 2:end-1) = permute(dttBedLevel(end, :, 459:500), [2 3 1]);
dttDepths{12}(:, end) = -999;
dttDepths{12}(end, :) = -999;

dttDepths{13}(2:end-1, 2:end-1) = permute(dttBedLevel(end, :, 501:542), [2 3 1]);
dttDepths{13}(:, end) = -999;
dttDepths{13}(end, :) = -999;

dttDepths{14}(2:end-1, 2:end-1) = permute(dttBedLevel(end, :, 543:584), [2 3 1]);
dttDepths{14}(:, end) = -999;
dttDepths{14}(end, :) = -999;

dttDepths{15}(2:end-1, 2:end-1) = permute(dttBedLevel(end, :, 585:626), [2 3 1]);
dttDepths{15}(:, end) = -999;
dttDepths{15}(end, :) = -999;

dttDepths{16}(2:end-1, 2:end-1) = permute(dttBedLevel(end, :, 627:668), [2 3 1]);
dttDepths{16}(:, end) = -999;
dttDepths{16}(end, :) = -999;

dttDepths{17}(2:end-1, 2:end-1) = permute(dttBedLevel(end, :, 669:710), [2 3 1]);
dttDepths{17}(:, end) = -999;
dttDepths{17}(end, :) = -999;

dttDepths{18}(2:end-1, 2:end-1) = permute(dttBedLevel(end, :, 711:752), [2 3 1]);
dttDepths{18}(:, end) = -999;
dttDepths{18}(end, :) = -999;

dttDepths{19}(2:end-1, 2:end-1) = permute(dttBedLevel(end, :, 753:790), [2 3 1]);
dttDepths{19}(:, end) = -999;
dttDepths{19}(end, :) = -999;

dttDepths{20}(2:end-1, 2) = dttBedLevelChannel(end, :);
dttDepths{20}(:, end) = -999;
dttDepths{20}(end, :) = -999;

%% EXPORT BEDLEVELS
for ii = 1:20
    writematrix(dttDepths{ii}, ['..\MATLAB export\Extended sims ini files\' runID '\dttBedLevelExt_', num2str(ii,'%02.0f'), '.dep'], 'FileType', 'text', 'Delimiter', ' ');
end