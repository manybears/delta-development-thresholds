% Date:     11/05/2023
% Author:   ERS

% This script generates .sdb files for each seidment layer in extended
% sims. These files are to be read from the .inb (initial bed) file,
% generated seperately.

%% RUN IMPORT AND EXTRACTIONS SCRIPTS
dttMapImportDD;
    dttExtractBedMassMultipleLayers; % !!!check and amend this script to run for final time only (for speed)!!!

%% DETERMINE runID FROM IMPORT FILEPATH
if isequal(filePath(end-3:end-1), 'ext')
    runID = filePath(end-11:end-1);
elseif isequal(filePath(end-6:end-1), 'varwav')
    runID = filePath(end-14:end-1);
else
    runID = filePath(end-8:end-1);
end

%% Rearrange bed sediment matrices to eliminate redundant first dim
dttBedSedimentMass = permute(dttBedSedimentMass, [2 3 4 5 1]);
dttBedSedimentMassChannel = permute(dttBedSedimentMassChannel, [2 3 4 5 1]);

%% CREATE SEDIMENT MASS MATRICES PER SUBDOMAIN (NESTING IS SUBDOMAIN -> LAYER)
% PREALLOCATE ARRAYS
dttFineSandMass = cell(20,1);
dttCoarseSandMass = cell(20,1);
for ii = 1:18:19
    dttFineSandMass{ii} = cell(7,1);
    dttCoarseSandMass{ii} = cell(7,1);
    for jj = 1:7
        dttFineSandMass{ii}{jj} = zeros(362, 40);
        dttCoarseSandMass{ii}{jj} = zeros(362, 40);
    end
end

for ii = 2:18
    dttFineSandMass{ii} = cell(7,1);
    dttCoarseSandMass{ii} = cell(7,1);
    for jj = 1:7
        dttFineSandMass{ii}{jj} = zeros(362, 44);
        dttCoarseSandMass{ii}{jj} = zeros(362, 44);
    end
end

dttFineSandMass{20} = cell(7,1);
dttCoarseSandMass{20} = cell(7,1);
for jj = 1:7
    dttFineSandMass{20}{jj} = zeros(202,3);
    dttCoarseSandMass{20}{jj} = zeros(202,3);
end

% ASSIGN SEDIMENT MASSES TO ARRAYS
for jj = 1:7
    dttFineSandMass{1}{jj}(2:end-1, 2:end-1) = dttBedSedimentMass(:, 1:38, jj, 1);
    dttCoarseSandMass{1}{jj}(2:end-1, 2:end-1) = dttBedSedimentMass(:, 1:38, jj, 2);
    
    dttFineSandMass{19}{jj}(2:end-1, 2:end-1) = dttBedSedimentMass(:, 753:790, jj, 1);
    dttCoarseSandMass{19}{jj}(2:end-1, 2:end-1) = dttBedSedimentMass(:, 753:790, jj, 2);
    
    dttFineSandMass{20}{jj}(2:end-1, 2:end-1) = dttBedSedimentMassChannel(:, 1, jj, 1);
    dttCoarseSandMass{20}{jj}(2:end-1, 2:end-1) = dttBedSedimentMassChannel(:, 1, jj, 2);
end

for ii = 2:18
    for jj = 1:7
        dttFineSandMass{ii}{jj}(2:end-1, 2:end-1) = dttBedSedimentMass(:, ii*42-45:ii*42-4, jj, 1);
        dttCoarseSandMass{ii}{jj}(2:end-1, 2:end-1) = dttBedSedimentMass(:, ii*42-45:ii*42-4, jj, 2);
    end
end

%% EXPORT SDB FILES
for ii = 1:20
    for jj = 1:7
        writematrix(dttFineSandMass{ii}{jj}, ['..\MATLAB export\Extended sims ini files\' runID '\dttFineSandSedMass_SD', num2str(ii,'%.0f'), '_Layer', num2str(jj,'%.0f'), '.sdb'], 'FileType', 'text', 'Delimiter', ' ');
        writematrix(dttCoarseSandMass{ii}{jj}, ['..\MATLAB export\Extended sims ini files\' runID '\dttCoarseSandSedMass_SD', num2str(ii,'%.0f'), '_Layer', num2str(jj,'%.0f'), '.sdb'],  'FileType', 'text', 'Delimiter', ' ');
    end
end