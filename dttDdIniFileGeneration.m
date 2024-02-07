% Date:     09/01/2023
% Author:   ERS

% This script generates .ini files (based on end of spinup for simulation
% T0.0DD) for use in all integrated spinup simulations.

%% IMPORT MAP FILE
if exist('dttMapData', 'var') == 0
    [fileName, filePath] = uigetfile('trim*.dat');
    dttMapData = vs_use(fullfile(filePath,fileName));
else
end

%% EXTRACT WATER LEVELS
if exist('dttWaterLevel', 'var') == 0
    dttWaterLevel = vs_let(dttMapData, 'map-series', {17}, 'S1', []);
    dttWaterLevel = permute(dttWaterLevel, [2 3 1]);
else
end

%% EXTRACT VELOCITIES
if exist('dttU', 'var') == 0
    dttU = vs_let(dttMapData, 'map-series', {17}, 'U1', []);
    dttU = permute(dttU, [2 3 1]);
else
end

if exist('dttV', 'var') == 0
    dttV = vs_let(dttMapData, 'map-series', {17}, 'V1', []);
    dttV = permute(dttV, [2 3 1]);
else
end

%% DEFINE INITIAL SUSPENDED SEDIMENT CONCENTRATION (EMPTY)
dttConc = zeros(size(dttWaterLevel));

%% COMBINE ABOVE INTO SINGLE MATRIX FOR EXPORT
dttIni = cat(1, dttWaterLevel, dttU, dttV, dttConc, dttConc); % one dttConc at end for each sediment fraction

%% EXPORT MATRIX
% writematrix(dttIni, 'MATLAB export\dttIni_20_v2a.txt', 'Delimiter', ' ') % rename file manually to *.ini
% clear all;