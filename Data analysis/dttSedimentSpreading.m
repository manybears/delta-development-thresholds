% Date:     05/08/2023
% Author:   ERS

% This script analyses distribution of (potentially) deltaic sediment mass
% over time, by taking moments of volume (per meter width) and deriving a
% standard distribution on the x, y, and z axes.

% v2 (04/09/2023) - added z-axis calculations. Also amended to exclude
% region from y = 0 m to y = 500 m (beach/cliff).

%% RUN IMPORT AND EXTRACTION SCRIPTS
dttMapImportDD;
    dttExtractBedLevels;
        dttParameters;

%% DETERMINE runID FROM IMPORT FILEPATH
if isequal(filePath(end-3:end-1), 'ext')
    runID = filePath(end-11:end-1);
elseif isequal(filePath(end-6:end-1), 'varwav')
    runID = filePath(end-14:end-1);
else
    runID = filePath(end-8:end-1);
end

%% DETERMINE TIDAL RANGE FROM IMPORT FILEPATH
if isequal(filePath(end-3:end-1), 'ext')
    dttTidalRange = str2double(filePath(end-7:end-5));
elseif isequal(filePath(end-6:end-1), 'varwav')
    dttTidalRange = str2double(filePath(end-10:end-8));
else
    dttTidalRange = str2double(filePath(end-3:end-1));
end

%% DETERMINE BED LEVEL CHANGES
dttBedLevelChange = zeros(size(dttBedLevel));
for tt = dttStart:dttEnd
    dttBedLevelChange(tt,:,:) = -dttBedLevel(tt,:,:) + dttBedLevel(1,:,:);
end

%% DETERMINE ZEROTH MOMENTS (I.E. SED VOLUME)
% x- and y-axes
xVol = zeros(dttEnd, size(dttBedLevel, 3));
yVol = zeros(dttEnd, size(dttBedLevel, 2)-20);
totalVolume = zeros(dttEnd, 1);
for tt = dttStart:dttEnd
    xVol(tt, :) = sum(permute(dttBedLevelChange(tt, 21:end, :), [2 3 1])) *dx *dy; % [m3]
    yVol(tt, :) = sum(permute(dttBedLevelChange(tt, 21:end, :), [3 2 1])) *dx *dy; % [m3]

    totalVolume(tt) = sum(permute(dttBedLevelChange(tt, 21:end, :), [2 3 1]) *dx *dy, 'all');
end

% z-axis
dz = 0.1; % [m]
zVol = zeros(dttEnd, 43/dz);
iniBedLevelSum = zeros(1, 43/dz);

zz = -20; % first bed elevation (note downward positive convention)
for ii = 1:43/dz
    iniBedLevelSum(ii) = sum(dttBedLevel(1,21:end,:) < zz, 'all');
    zz = zz + dz;
end

for tt = dttStart:dttEnd
    zz = -20; % first bed elevation (note downward positive convention)
    for ii = 1:43/dz
        zVol(tt,ii) = (sum(dttBedLevel(tt,21:end,:) < zz, 'all') - iniBedLevelSum(ii)) *dz *dx *dy; % [m3 (per dz increment)]
        zz = zz + dz;
    end
end

%% DETERMINE FIRST MOMENTS AND CENTROID LOCATIONS
xFirstMoment = zeros(size(xVol));
xCentroid = zeros(dttEnd, 1);
for tt = dttStart:dttEnd
    for nn = 1:size(xVol, 2)
        xFirstMoment(tt, nn) = (nn-0.5) *dx *xVol(tt, nn); % [m3]
    end
    xCentroid(tt) = sum(xFirstMoment(tt,:)) / totalVolume(tt); % [m]
end

yFirstMoment = zeros(size(yVol));
yCentroid = zeros(dttEnd, 1);
for tt = dttStart:dttEnd
    for mm = 1:size(yVol, 2)
        yFirstMoment(tt, mm) = (mm-0.5) *dy *yVol(tt, mm); % [m3]
    end
    yCentroid(tt) = sum(yFirstMoment(tt,:)) / totalVolume(tt); % [m]
end

zFirstMoment = zeros(size(zVol));
zCentroid = zeros(dttEnd, 1);
for tt = dttStart:dttEnd
    for pp = 1:size(zVol, 2)
        zFirstMoment(tt, pp) = ((pp*dz)-20 - dz/2)  *zVol(tt, pp); % [m3]
    end
    zCentroid(tt) = sum(zFirstMoment(tt,:)) / sum(zVol(tt,:)); % [m]
end

%% DETERMINE SECOND MOMENTS AND STANDARD DEVIATIONS
xSecondMoment = zeros(size(xFirstMoment));
xSigma = zeros(dttEnd, 1);
for tt = dttStart:dttEnd
    for nn = 1:size(xFirstMoment, 2)
        xSecondMoment(tt, nn) = sum(dttBedLevelChange(tt, 21:end, nn) *dx *dy) * ((xCentroid(tt) - (nn-0.5)*dx))^2; % [m^5]
    end
    xSigma(tt) = sqrt(sum(xSecondMoment(tt, :)) / totalVolume(tt)); % [m]
end

ySecondMoment = zeros(size(yFirstMoment));
ySigma = zeros(dttEnd, 1);
for tt = dttStart:dttEnd
    for mm = 1:size(yFirstMoment, 2)
        ySecondMoment(tt, mm) = sum(dttBedLevelChange(tt, mm, :) *dx *dy) * ((yCentroid(tt) - (mm-0.5)*dy))^2; % [m^5]
    end
    ySigma(tt) = sqrt(sum(ySecondMoment(tt, :)) / totalVolume(tt)); % [m]
end

zSecondMoment = zeros(size(zFirstMoment));
zSigma = zeros(dttEnd,1);
for tt = dttStart:dttEnd
    for pp = 1:size(zFirstMoment, 2)
%         distTest(tt, pp) = (pp*dz)-20-dz/2;
        zSecondMoment(tt, pp) = sum(zVol(tt, pp), 'all') * ((zCentroid(tt) - ((pp*dz)-20)-dz/2)^2);
    end
    zSigma(tt) = sqrt(sum(zSecondMoment(tt,:)) / sum(zVol(tt,:)));
end

%% FIND MIN AND MAX SPREADING EXTENTS
% % temp import and setup
% runID = 'W2.0T6.0';
% load(['..\MATLAB datastore\dtt' runID 'sedimentSpreading.mat'], 'xVol', 'yVol', 'zVol');
% dx = 25;
% dy = 25;
% dz = 0.1;

% x
xMin = zeros(577,1);
xMax = zeros(577,1);
for tt = 1:577
    firstX = (find(xVol(tt,:)>1.2e4, 1, 'first') -0.5) *dx;
    lastX = (find(xVol(tt,:)>1.2e4, 1, 'last') +0.5) *dx;
    if isequal(size(firstX, 2), 1)
        xMin(tt) = firstX;
        xMax(tt) = lastX;
    else
        xMin(tt) = NaN;
        xMax(tt) = NaN;
    end
end

% y
yMin = zeros(577,1);
yMax = zeros(577,1);
for tt = 1:577
    firstY = (find(yVol(tt,:)>1.2e4, 1, 'first') -0.5) *dy;
    lastY = (find(yVol(tt,:)>1.2e4, 1, 'last') +0.5) *dy;
    if isequal(size(firstY, 2), 1)
        yMin(tt) = firstY;
        yMax(tt) = lastY;
    else
        yMin(tt) = NaN;
        yMax(tt) = NaN;
    end
end

% z
zMin = zeros(577,1);
zMax = zeros(577,1);
for tt = 1:577
    firstZ= (find(zVol(tt,1:310)>2e4, 1, 'first') *dz) -20.05;
    lastZ = (find(zVol(tt,1:310)>2e4, 1, 'last') *dz) -19.95;
    if isequal(size(firstZ, 2), 1)
        zMax(tt) = firstZ; % volumes arranged top to bottom, hence "first" value is actually the highest, hence max.
        zMin(tt) = lastZ;
    else
        zMax(tt) = NaN;
        zMin(tt) = NaN;
    end
end

% to save variables
% save(['..\MATLAB datastore\dtt' runID 'sedimentSpreading.mat'], 'xMin', 'xMax', 'yMin', 'yMax', 'zMin', 'zMax', '-append');

%% test plots
figure(4000)
clf reset
plot(xMin, 'r')
hold on
plot(xMax, 'b')

figure(4001)
clf reset
plot(yMin, 'r')
hold on
plot(yMax, 'b')

figure(4002)
clf reset
plot(-zMin, 'r')
hold on
plot(-zMax, 'b')

%% SAVE DATA
save(['../MATLAB datastore/dtt' runID 'sedimentSpreading.mat'], ...
    'xCentroid', 'xFirstMoment', 'xSecondMoment', 'xSigma', 'xVol', 'xMin', 'xMax', ...
    'yCentroid', 'yFirstMoment', 'ySecondMoment', 'ySigma', 'yVol', 'yMin', 'yMax', ...
    'zCentroid', 'zFirstMoment', 'zSecondMoment', 'zSigma', 'zVol', 'zMin', 'zMax')

%% PLOTS PREAMBLE
dttColorMap = cmocean('-tempo');
dttColorMap2 = cmocean('topo');
dttColorMap3 = cmocean('balance');
xAxis = [0.0125:0.025:19.7375];
yAxis = [0.0125:0.025:8.9875];
zAxis = [-20 + dz/2 : dz : 23 - dz/2];
tAxis = [0:3.125*175/(24*365):576*3.125*175/(24*365)];

%% test plots
figure(236)
clf reset
imagesc(xAxis, yAxis, permute(dttBedLevelChange(end, :, :), [2 3 1]), [-10 10])
colormap(dttColorMap2)
axis equal
set(gca, 'yDir', 'Normal')
xlim([0 19.75])
ylim([0 9])
colorbar

dttColorMapMax1 = max(abs(xVol), [], 'all');
figure(237)
clf reset
imagesc(xAxis, tAxis, xVol, [-dttColorMapMax1 dttColorMapMax1])
colormap(dttColorMap3)
hold on
plot(xCentroid/1000, tAxis, 'k--')
% grid on
set(gca, 'yDir', 'Normal')
colorbar

dttColorMapMax2 = max(abs(yVol), [], 'all');
figure(238)
clf reset
imagesc(yAxis+0.5, tAxis, yVol, [-dttColorMapMax2 dttColorMapMax2])
colormap(dttColorMap3)
hold on
plot(yCentroid/1000 + 0.5, tAxis, 'k--')
% grid on
set(gca, 'yDir', 'Normal')
colorbar

dttColorMapMax3 = max(abs(xFirstMoment), [], 'all');
figure(239)
clf reset
imagesc(xAxis, tAxis, xFirstMoment, [-dttColorMapMax3 dttColorMapMax3])
colormap(dttColorMap3)
hold on
plot(xCentroid/1000, tAxis, 'k--')
set(gca, 'yDir', 'Normal')
colorbar

dttColorMapMax4 = max(abs(yFirstMoment), [], 'all');
figure(240)
clf reset
imagesc(yAxis+0.5, tAxis, yFirstMoment, [-dttColorMapMax4 dttColorMapMax4])
colormap(dttColorMap3)
hold on
plot(yCentroid/1000 + 0.5, tAxis, 'k--')
set(gca, 'yDir', 'Normal')
colorbar

dttColorMapMax5 = max(abs(xSecondMoment), [], 'all');
figure(241)
clf reset
imagesc(xAxis, tAxis, xSecondMoment, [-dttColorMapMax5 dttColorMapMax5])
colormap(dttColorMap3)
colorbar
hold on
plot(xCentroid/1000, tAxis, 'k--')
set(gca, 'yDir', 'Normal')

dttColorMapMax6 = max(abs(ySecondMoment), [], 'all');
figure(242)
clf reset
imagesc(yAxis+0.5, tAxis, ySecondMoment, [-dttColorMapMax6 dttColorMapMax6])
colormap(dttColorMap3)
colorbar
hold on
plot(yCentroid/1000 + 0.5, tAxis, 'k--')
set(gca, 'yDir', 'Normal')

% figure(243)
% clf reset
% plot(tAxis, xSigma), view(90, -90)
% xlim([0 36])
% xticks([0:6:36])
% grid on

% figure(244)
% clf reset
% plot(tAxis, ySigma), view(90, -90)
% xlim([0 36])
% xticks([0:6:36])
% grid on

figure(245)
clf reset
plot(xAxis, xVol(end,:))
hold on
xline(xCentroid(end)/1000, 'k-.')
xline((xCentroid(end)+xSigma(end))/1000, 'k-.')
xline((xCentroid(end)+2*xSigma(end))/1000, 'k-.')
xline((xCentroid(end)-xSigma(end))/1000, 'k-.')
xline((xCentroid(end)-2*xSigma(end))/1000, 'k-.')

%% PLOTS
% x-spreading
sedimentSpreadingPlotX = figure(250);
sedimentSpreadingPlotX.Position = [100 100 1280 640];
clf reset
% tiledlayout(1,4);

% nexttile([1 3])
dttColorMapMax = max(abs(xVol), [], 'all');
imagesc(xAxis, tAxis, xVol, [-dttColorMapMax dttColorMapMax])
colormap(dttColorMap3)
cbx = colorbar;
cbx.Label.String = 'Total volume change per 25 m [m^3]';
hold on
plot(xCentroid/1000, tAxis, 'k--')
plot(xCentroid/1000 + xSigma/1000, tAxis, 'k:')
plot(xCentroid/1000 + 2*xSigma/1000, tAxis, 'k:')
plot(xCentroid/1000 - xSigma/1000, tAxis, 'k:')
plot(xCentroid/1000 - 2*xSigma/1000, tAxis, 'k:')
set(gca, 'yDir', 'Normal')
xlabel('{\itx} [km]')
ylim([0 36])
yticks([0:6:36])
ylabel('Time, {\itt} [yr]')
grid on

% nexttile
% xSigmaPlot = plot(tAxis, xSigma/1000);
% view(90, -90)
% xlim([0 36])
% xticks([0:6:36])
% set(gca,'XTickLabel',[]);
% ylabel('{\it\sigma_x} [km]')
% grid on

% y spreading
sedimentSpreadingPlotY = figure(251);
sedimentSpreadingPlotY.Position = [100 100 1280 640];
clf reset
% tiledlayout(1,4);

% nexttile([1 3])
dttColorMapMax = max(abs(yVol), [], 'all');
imagesc(yAxis + 0.5, tAxis, yVol, [-dttColorMapMax dttColorMapMax])
colormap(dttColorMap3)
cby = colorbar;
cby.Label.String = 'Total volume change per 25 m [m^3]';
hold on
plot(yCentroid/1000 + 0.5, tAxis, 'k--')
plot(yCentroid/1000 + 0.5 + ySigma/1000, tAxis, 'k:')
plot(yCentroid/1000 + 0.5 + 2*ySigma/1000, tAxis, 'k:')
plot(yCentroid/1000 + 0.5 - ySigma/1000, tAxis, 'k:')
plot(yCentroid/1000 + 0.5 - 2*ySigma/1000, tAxis, 'k:')
set(gca, 'yDir', 'Normal')
xlim([0 9])
xlabel('{\ity} [km]')
ylim([0 36])
yticks([0:6:36])
ylabel('Time, {\itt} [yr]')
grid on

% nexttile
% ySigmaPlot = plot(tAxis, ySigma/1000);
% view(90, -90)
% xlim([0 36])
% xticks([0:6:36])
% set(gca,'XTickLabel',[]);
% ylabel('{\it\sigma_y} [km]')
% grid on

% z spreading
sedimentSpreadingPlotZ = figure(252);
clf reset
sedimentSpreadingPlotZ.Position = [100 100 1280 640];
% tiledlayout(3,1);

% nexttile([2 1])
dttColorMapMax = max(abs(zVol), [], 'all');
imagesc(zAxis, tAxis, zVol, [-dttColorMapMax dttColorMapMax])
view(90, 90)
colormap(dttColorMap3)
cbz = colorbar;
% cbz.Layout.Tile = 'east';
cbz.Label.String = 'Total volume change per 0.1 m [m^3]';
hold on
plot(zCentroid, tAxis, 'k--')
plot(zCentroid + zSigma, tAxis, 'k:')
plot(zCentroid + 2*zSigma, tAxis, 'k:')
plot(zCentroid - zSigma, tAxis, 'k:')
plot(zCentroid - 2*zSigma, tAxis, 'k:')
if (isequal(dttTidalRange, 0))
    xline(0, '-.', 'Color', [0 0.3 0.6])
else
    xline(dttTidalRange/2, '-.', 'Color', [0 0.3 0.6])
    xline(-dttTidalRange/2, '-.', 'Color', [0 0.3 0.6])
end
set(gca, 'yDir', 'Normal')
xlim([-5 15])
xlabel('{\itz} [m]')
ylim([0 36])
yticks([0:6:36])
ylabel('Time, {\itt} [yr]')
set(gca,'XTickLabel',[5:-5:-20]); % patch fix for changing z-axis directional convention
grid on

% nexttile
% zSigmaPlot = plot(tAxis, zSigma);
% % view(90, -90)
% xlim([0 36])
% xticks([0:6:36])
% ylabel('{\it\sigma_z} [m]')
% xlabel('Time, {\itt} [yr]')
% grid on

% net bed level change ~36yr
bedLevelChangeFinal = figure(261);
bedLevelChangeFinal.Position = [100 100 1280 640];
clf reset
imagesc(xAxis, yAxis, permute(dttBedLevelChange(end, :, :), [2 3 1]), [-10 10])
colormap(dttColorMap2)
axis equal
set(gca, 'yDir', 'Normal')
xlim([0 19.75])
xlabel('{\itx}-distance [km]')
ylim([0 9])
ylabel('{\ity}-distance [km]')
c = colorbar;
c.Label.String = 'Net bed level change [m]';

%% box plot tests (not working as intended)
% zVolCm = cumsum(zVol(end,:));
% 
% testo = figure(2611);
% plot(zVolCm(end,:))
% 
% zBoxPlot = figure(262);
% zBoxPlot.Position = [100 100 1280 640];
% clf reset
% boxchart(zVolCm(end,:))

%% EXPORT PLOTS
% exportgraphics(sedimentSpreadingPlotX, ['../MATLAB export/Final/sedimentSpreading/dtt' runID '_zerothMomentAndXSigma.png'], 'Resolution', 150);
% exportgraphics(sedimentSpreadingPlotY, ['../MATLAB export/Final/sedimentSpreading/dtt' runID '_zerothMomentAndYSigma.png'], 'Resolution', 150);
% exportgraphics(sedimentSpreadingPlotZ, ['../MATLAB export/Final/sedimentSpreading/dtt' runID '_zerothMomentAndZSigma.png'], 'Resolution', 150);
% exportgraphics(bedLevelChangeFinal, ['../MATLAB export/Final/sedimentSpreading/bedLevelChange/dtt' runID '_netBedLevelChange_36yr.png'], 'Resolution', 150);

%% FINISH ALARM
% load gong
% sound(y, Fs)