% Date: 12/12/2022
% Author: ERS

% This script opens UI selection box for map data import. This modified
% version of dttMapImport is set up to process data from manual domain
% decomposition (DD) simulations.

%% IMPORT DATA
if exist('dttMapDataDD', 'var') == 0
    dttMapDataDD = cell(20,1);
    [fileName, filePath] = uigetfile('trim*.dat'); % select first numbered data <*01.dat>
    for ii = 1:20 % adjust end of loop to match required number of files
        fileName = append(append(fileName(1:end-6), num2str(ii, '%02d')), '.dat');
        dttMapDataDD{ii} = vs_use(fullfile(filePath,fileName));
    end
else
end