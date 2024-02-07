% Date:     10/02/2023
% Author:   ERS

% This script opens UI selection box for history data import for DD
% simulations.

%% IMPORT DATA
if exist('dttHistDataDD', 'var') == 0
    dttHistDataDD = cell(20,1);
    [fileName, filePath] = uigetfile('trih*.dat'); % select first numbered data <*01.dat>
    for ii = 1:20 % adjust end of loop to match required number of files
        fileName = append(append(fileName(1:end-6), num2str(ii, '%02d')), '.dat');
        dttHistDataDD{ii} = vs_use(fullfile(filePath,fileName));
    end
else
end