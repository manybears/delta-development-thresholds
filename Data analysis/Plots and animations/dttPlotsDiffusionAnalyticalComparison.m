% Date:     24/11/2023
% Author:   ERS

% This script calculates diffusion curves in V using
% dttDiffusionModelAnalyticalFunc function and plots them against smoothed
% Delft3D data. This plot is for inclusion in the delta development
% thresholds manuscript.

%% CALCULATE SED DISTNS USING FUNCTION
N = 100;
L = 29750;
T = 3.125 *60 *60 *175 *576;
Q = 1280;
c = 0.1;

V.W16T4 = dttDiffusionModelAnalyticalFunc(N,L,5000,0.004,T,Q,c);
V.W16T6 = dttDiffusionModelAnalyticalFunc(N,L,5000,0.004,T,Q,c);
V.W2T4 = dttDiffusionModelAnalyticalFunc(N,L,5750,0.007,T,Q,c);
V.W2T6 = dttDiffusionModelAnalyticalFunc(N,L,5500,0.006,T,Q,c);

%% PLOTS PREAMBLE
dx = 25;
xAxisD3D = 0.0125:0.025:19.7375;
xAxis = 0:0.001:19.75;

%% PLOTS
diffFig = figure(100);
diffFig.Position = [100 100 640 480];
til = tiledlayout(2,2,'padding','compact','tileSpacing','tight');

xlabel(til,'{\itx} [km]')
% ylabel(til,'Net sediment volume change per meter width, {\itV} [m^2]')
ylabel(til,[{'Alongshore distribution of'},{'accumulated river sediment, {\itV} [m^3 m^{-1}]'}])

nexttile
load('..\MATLAB datastore\dttW1.6T4.0sedimentSpreading.mat', 'xVol')
xVolSm = movmean(xVol, 161, 2); % smooths first in x
xVolSm = movmean(xVolSm, 4, 1); % smooths second in t (over single tide)
plot(xAxis, V.W16T4(end,5000:24750), 'k-');
hold on
plot(xAxisD3D, xVol(end,:)/25*(1600/2650), 'r-');
% plot(xAxisD3D, movmean(xVol(end,:)/25, 160), 'r-.')
plot(xAxisD3D, xVolSm(end,:)/25*(1600/2650), 'r-.')
grid on
% xlabel('{\itx} [km]')
xlim([0 19.75])
xticklabels({})
ylim([0 10000])
yticks(0:2500:10000)
% ylabel('Net volume change per meter width [m^3 m^{-1}]')
hold off
text(0.25,9200,'a)','fontSize',16)

nexttile
load('..\MATLAB datastore\dttW1.6T6.0sedimentSpreading.mat', 'xVol')
xVolSm = movmean(xVol, 161, 2); % smooths first in x
xVolSm = movmean(xVolSm, 4, 1); % smooths second in t (over single tide)
plot(xAxis, V.W16T6(end,5000:24750), 'k-');
hold on
plot(xAxisD3D, xVol(end,:)/25*(1600/2650), 'r-');
% plot(xAxisD3D, movmean(xVol(end,:)/25, 160), 'r-.')
plot(xAxisD3D, xVolSm(end,:)/25*(1600/2650), 'r-.')
grid on
% xlabel('{\itx} [km]')
xlim([0 19.75])
xticklabels({})
ylim([0 10000])
yticks(0:2500:10000)
yticklabels({})
% ylabel('Net volume change per meter width [m^3 m^{-1}]')
hold off
text(0.25,9200,'b)','fontSize',16)

nexttile
load('..\MATLAB datastore\dttW2.0T4.0sedimentSpreading.mat', 'xVol')
xVolSm = movmean(xVol, 161, 2); % smooths first in x
xVolSm = movmean(xVolSm, 4, 1); % smooths second in t (over single tide)
plot(xAxis, V.W2T4(end,5000:24750), 'k-');
hold on
plot(xAxisD3D, xVol(end,:)/25*(1600/2650), 'r-');
% plot(xAxisD3D, movmean(xVol(end,:)/25, 160), 'r-.')
plot(xAxisD3D, xVolSm(end,:)/25*(1600/2650), 'r-.')
grid on
% xlabel('{\itx} [km]')
xlim([0 19.75])
ylim([0 10000])
yticks(0:2500:10000)
% ylabel('Net volume change per meter width [m^3 m^{-1}]')
hold off
text(0.25,9200,'c)','fontSize',16)

nexttile
load('..\MATLAB datastore\dttW2.0T6.0sedimentSpreading.mat', 'xVol')
xVolSm = movmean(xVol, 161, 2); % smooths first in x
xVolSm = movmean(xVolSm, 4, 1); % smooths second in t (over single tide)
plot(xAxis, V.W2T6(end,5000:24750), 'k-');
hold on
plot(xAxisD3D, xVol(end,:)/25*(1600/2650), 'r-');
% plot(xAxisD3D, movmean(xVol(end,:)/25, 160), 'r-.')
plot(xAxisD3D, xVolSm(end,:)/25*(1600/2650), 'r-.')
grid on
% xlabel('{\itx} [km]')
xlim([0 19.75])
ylim([0 10000])
yticks(0:2500:10000)
yticklabels({})
% ylabel('Net volume change per meter width [m^3 m^{-1}]')
hold off
text(0.25,9200,'d)','fontSize',16)

%% EXPORT PLOT
% exportgraphics(gcf,'../MATLAB export/final/sedimentSpreading/diffusionModel/dttDiffusionComparisonPlot_v4.png','resolution',150)