% Date: 11/08/2022
% Author: ERS

% This script opens UI selection box for map data import.

%% IMPORT DATA
if exist('dttMapData', 'var') == 0
    [fileName, filePath] = uigetfile('trim*.dat');
    dttMapData = vs_use(fullfile(filePath,fileName));
else
end