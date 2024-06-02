%% RUN THESE SCRIPTS FIRST
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

%% IMPORT STANDARD DEVIATION AND CENTROID LOCATION ??
% load(['../MATLAB datastore/' runID '_metrics_HPC.mat']);
load(['../MATLAB datastore/dtt' runID 'sedimentSpreading.mat'],'xVol','xCentroid','xSigma');

%% PLOTS PREAMBLE
dttColorMap = cmocean('-tempo');
xAxis = [0.0125 19.7375];
yAxis = [0.0125 8.9875];
xAxisPlot = 0.0125:0.025:19.7375;

%% PLOTS
tim = 577;

dttSigmaXPlot = figure(101);
dttSigmaXPlot.Position = [10 10 800 550];
til = tiledlayout(2,1);
til.TileSpacing = 'tight';

nexttile
plot(xAxisPlot,xVol(tim,:)/25*(1600/2650),'k-')
xline(xCentroid(tim)/1000,'k-.','lineWidth',1.5)
text(xCentroid(tim)/1000,500,{'Alongshore centroid', 'of sediment mass'},'rotation',90,'fontSize',12)
xline(xCentroid(tim)/1000 + xSigma(tim)/1000,'k:','lineWidth',1.5)
text(xCentroid(tim)/1000 + xSigma(tim)/1000 - 0.3,2000,'+ \sigma_x','rotation',90,'fontSize',12)
xline(xCentroid(tim)/1000 + (2*xSigma(tim)/1000),'k:','lineWidth',1.0)
text(xCentroid(tim)/1000 + (2*xSigma(tim)/1000) - 0.3,2000,'+ 2\sigma_x','rotation',90,'fontSize',12)
xline(xCentroid(tim)/1000 - xSigma(tim)/1000,'k:','lineWidth',1.5)
text(xCentroid(tim)/1000 - xSigma(tim)/1000 - 0.3,2000,'- \sigma_x','rotation',90,'fontSize',12)
xline(xCentroid(tim)/1000 - (2*xSigma(tim)/1000),'k:','lineWidth',1.0)
text(xCentroid(tim)/1000 - (2*xSigma(tim)/1000) - 0.3,2000,'- 2\sigma_x','rotation',90,'fontSize',12)
grid on
xlim([0 19.75])
xticklabels({})
ylim([0 12000])
ylabel({'Sediment volume per', 'metre alongshore [m^3 m^{-1}]'},'fontSize',14)

nexttile
imagesc(xAxis, yAxis, permute(-dttBedLevel(tim, :, :), [2 3 1]), [-20 5]);
set(gca, 'ydir', 'normal', 'FontSize', 12)
colormap(gca, dttColorMap)
axis equal;
xline(xCentroid(tim)/1000,'k-.','lineWidth',1.5)
xline(xCentroid(tim)/1000 + xSigma(tim)/1000,'k:','lineWidth',1.5)
xline(xCentroid(tim)/1000 + (2*xSigma(tim)/1000),'k:','lineWidth',1.0)
xline(xCentroid(tim)/1000 - xSigma(tim)/1000,'k:','lineWidth',1.5)
xline(xCentroid(tim)/1000 - (2*xSigma(tim)/1000),'k:','lineWidth',1.0)
xlim([0 19.750])
ylim([0 6])
xlabel('{\it x} [km]');
ylabel('{\it y} [km]');

%% EXPORT PLOT
% exportgraphics(dttSigmaXPlot, ['../MATLAB export/Final/dtt' runID '_sigmaXSchematic_v2.png'], 'Resolution', 300);