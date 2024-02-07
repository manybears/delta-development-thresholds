% Date:     17/03/2023
% Author:   ERS

% This script plots simulation bathymetry as a 3D surface.

%% RUN THESE SCRIPTS FIRST
% dttMapImportDD;
% dttExtractBedLevels;

%% PLOTS PREAMBLE
% close all;
ES2010_colormap;
dttColorMap = cmocean('-tempo');
xAxis = [0.0125 19.7375];
yAxis = [0.0125 8.9875];

%% BATHY SURFACE PLOT
figure(701)
surf(permute(-dttBedLevel(dttEnd, :, :), [2 3 1]), 'EdgeColor', 'none');
axis equal
zlim([-25 5])