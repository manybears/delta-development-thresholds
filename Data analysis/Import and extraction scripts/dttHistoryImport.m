% Date: 29/09/2022
% Author: ERS

% This script opens UI selection box for history data import.

%% IMPORT DATA
if exist('dttHisData', 'var') == 0
    [fileName, filePath] = uigetfile('trih*.dat');
    dttHisData = vs_use(fullfile(filePath,fileName));
else
end