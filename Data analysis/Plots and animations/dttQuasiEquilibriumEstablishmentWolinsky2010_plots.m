% Date:     13/07/2023
% Author:   ERS

% This script produces wet-fraction quasi-equilibrium plots based on
% Wolinsky2010.

%% IMPORT WET FRACTION DATA
load('../MATLAB datastore/W0.0T0.0_metrics_HPC.mat', 'dttWetCellDeltaPlainFraction', 'dttIsDelta')
    W0T0.dttWetCellDeltaPlainFraction = dttWetCellDeltaPlainFraction;
    W0T0.dttIsDelta = dttIsDelta;
load('../MATLAB datastore/W0.0T0.5_metrics_HPC.mat', 'dttWetCellDeltaPlainFraction', 'dttIsDelta')
    W0T05.dttWetCellDeltaPlainFraction = dttWetCellDeltaPlainFraction;
    W0T05.dttIsDelta = dttIsDelta;
load('../MATLAB datastore/W0.0T1.0_metrics_HPC.mat', 'dttWetCellDeltaPlainFraction', 'dttIsDelta')
    W0T1.dttWetCellDeltaPlainFraction = dttWetCellDeltaPlainFraction;
    W0T1.dttIsDelta = dttIsDelta;
load('../MATLAB datastore/W0.0T2.0_metrics_HPC.mat', 'dttWetCellDeltaPlainFraction', 'dttIsDelta')
    W0T2.dttWetCellDeltaPlainFraction = dttWetCellDeltaPlainFraction;
    W0T2.dttIsDelta = dttIsDelta;
load('../MATLAB datastore/W0.0T3.0_metrics_HPC.mat', 'dttWetCellDeltaPlainFraction', 'dttIsDelta')
    W0T3.dttWetCellDeltaPlainFraction = dttWetCellDeltaPlainFraction;
    W0T3.dttIsDelta = dttIsDelta;
load('../MATLAB datastore/W0.0T4.0_metrics_HPC.mat', 'dttWetCellDeltaPlainFraction', 'dttIsDelta')
    W0T4.dttWetCellDeltaPlainFraction = dttWetCellDeltaPlainFraction;
    W0T4.dttIsDelta = dttIsDelta;
load('../MATLAB datastore/W0.0T5.0_metrics_HPC.mat', 'dttWetCellDeltaPlainFraction', 'dttIsDelta')
    W0T5.dttWetCellDeltaPlainFraction = dttWetCellDeltaPlainFraction;
    W0T5.dttIsDelta = dttIsDelta;
load('../MATLAB datastore/W0.0T6.0_metrics_HPC.mat', 'dttWetCellDeltaPlainFraction', 'dttIsDelta')
    W0T6.dttWetCellDeltaPlainFraction = dttWetCellDeltaPlainFraction;
    W0T6.dttIsDelta = dttIsDelta;

load('../MATLAB datastore/W0.4T0.0_metrics_HPC.mat', 'dttWetCellDeltaPlainFraction', 'dttIsDelta')
    W04T0.dttWetCellDeltaPlainFraction = dttWetCellDeltaPlainFraction;
    W04T0.dttIsDelta = dttIsDelta;
load('../MATLAB datastore/W0.4T1.0_metrics_HPC.mat', 'dttWetCellDeltaPlainFraction', 'dttIsDelta')
    W04T1.dttWetCellDeltaPlainFraction = dttWetCellDeltaPlainFraction;
    W04T1.dttIsDelta = dttIsDelta;
load('../MATLAB datastore/W0.4T2.0_metrics_HPC.mat', 'dttWetCellDeltaPlainFraction', 'dttIsDelta')
    W04T2.dttWetCellDeltaPlainFraction = dttWetCellDeltaPlainFraction;
    W04T2.dttIsDelta = dttIsDelta;
load('../MATLAB datastore/W0.4T3.0_metrics_HPC.mat', 'dttWetCellDeltaPlainFraction', 'dttIsDelta')
    W04T3.dttWetCellDeltaPlainFraction = dttWetCellDeltaPlainFraction;
    W04T3.dttIsDelta = dttIsDelta;
load('../MATLAB datastore/W0.4T4.0_metrics_HPC.mat', 'dttWetCellDeltaPlainFraction', 'dttIsDelta')
    W04T4.dttWetCellDeltaPlainFraction = dttWetCellDeltaPlainFraction;
    W04T4.dttIsDelta = dttIsDelta;
load('../MATLAB datastore/W0.4T5.0_metrics_HPC.mat', 'dttWetCellDeltaPlainFraction', 'dttIsDelta')
    W04T5.dttWetCellDeltaPlainFraction = dttWetCellDeltaPlainFraction;
    W04T5.dttIsDelta = dttIsDelta;
load('../MATLAB datastore/W0.4T6.0_metrics_HPC.mat', 'dttWetCellDeltaPlainFraction', 'dttIsDelta')
    W04T6.dttWetCellDeltaPlainFraction = dttWetCellDeltaPlainFraction;
    W04T6.dttIsDelta = dttIsDelta;

load('../MATLAB datastore/W0.8T0.0_metrics_HPC.mat', 'dttWetCellDeltaPlainFraction', 'dttIsDelta')
    W08T0.dttWetCellDeltaPlainFraction = dttWetCellDeltaPlainFraction;
    W08T0.dttIsDelta = dttIsDelta;
load('../MATLAB datastore/W0.8T1.0_metrics_HPC.mat', 'dttWetCellDeltaPlainFraction', 'dttIsDelta')
    W08T1.dttWetCellDeltaPlainFraction = dttWetCellDeltaPlainFraction;
    W08T1.dttIsDelta = dttIsDelta;
load('../MATLAB datastore/W0.8T2.0_metrics_HPC.mat', 'dttWetCellDeltaPlainFraction', 'dttIsDelta')
    W08T2.dttWetCellDeltaPlainFraction = dttWetCellDeltaPlainFraction;
    W08T2.dttIsDelta = dttIsDelta;
load('../MATLAB datastore/W0.8T3.0_metrics_HPC.mat', 'dttWetCellDeltaPlainFraction', 'dttIsDelta')
    W08T3.dttWetCellDeltaPlainFraction = dttWetCellDeltaPlainFraction;
    W08T3.dttIsDelta = dttIsDelta;
load('../MATLAB datastore/W0.8T4.0_metrics_HPC.mat', 'dttWetCellDeltaPlainFraction', 'dttIsDelta')
    W08T4.dttWetCellDeltaPlainFraction = dttWetCellDeltaPlainFraction;
    W08T4.dttIsDelta = dttIsDelta;
load('../MATLAB datastore/W0.8T5.0_metrics_HPC.mat', 'dttWetCellDeltaPlainFraction', 'dttIsDelta')
    W08T5.dttWetCellDeltaPlainFraction = dttWetCellDeltaPlainFraction;
    W08T5.dttIsDelta = dttIsDelta;
load('../MATLAB datastore/W0.8T6.0_metrics_HPC.mat', 'dttWetCellDeltaPlainFraction', 'dttIsDelta')
    W08T6.dttWetCellDeltaPlainFraction = dttWetCellDeltaPlainFraction;
    W08T6.dttIsDelta = dttIsDelta;

load('../MATLAB datastore/W1.2T0.0_metrics_HPC.mat', 'dttWetCellDeltaPlainFraction', 'dttIsDelta')
    W12T0.dttWetCellDeltaPlainFraction = dttWetCellDeltaPlainFraction;
    W12T0.dttIsDelta = dttIsDelta;
load('../MATLAB datastore/W1.2T1.0_metrics_HPC.mat', 'dttWetCellDeltaPlainFraction', 'dttIsDelta')
    W12T1.dttWetCellDeltaPlainFraction = dttWetCellDeltaPlainFraction;
    W12T1.dttIsDelta = dttIsDelta;
load('../MATLAB datastore/W1.2T2.0_metrics_HPC.mat', 'dttWetCellDeltaPlainFraction', 'dttIsDelta')
    W12T2.dttWetCellDeltaPlainFraction = dttWetCellDeltaPlainFraction;
    W12T2.dttIsDelta = dttIsDelta;
load('../MATLAB datastore/W1.2T3.0_metrics_HPC.mat', 'dttWetCellDeltaPlainFraction', 'dttIsDelta')
    W12T3.dttWetCellDeltaPlainFraction = dttWetCellDeltaPlainFraction;
    W12T3.dttIsDelta = dttIsDelta;
load('../MATLAB datastore/W1.2T4.0_metrics_HPC.mat', 'dttWetCellDeltaPlainFraction', 'dttIsDelta')
    W12T4.dttWetCellDeltaPlainFraction = dttWetCellDeltaPlainFraction;
    W12T4.dttIsDelta = dttIsDelta;
load('../MATLAB datastore/W1.2T5.0_metrics_HPC.mat', 'dttWetCellDeltaPlainFraction', 'dttIsDelta')
    W12T5.dttWetCellDeltaPlainFraction = dttWetCellDeltaPlainFraction;
    W12T5.dttIsDelta = dttIsDelta;
load('../MATLAB datastore/W1.2T6.0_metrics_HPC.mat', 'dttWetCellDeltaPlainFraction', 'dttIsDelta')
    W12T6.dttWetCellDeltaPlainFraction = dttWetCellDeltaPlainFraction;
    W12T6.dttIsDelta = dttIsDelta;

load('../MATLAB datastore/W1.6T0.0_metrics_HPC.mat', 'dttWetCellDeltaPlainFraction', 'dttIsDelta')
    W16T0.dttWetCellDeltaPlainFraction = dttWetCellDeltaPlainFraction;
    W16T0.dttIsDelta = dttIsDelta;
load('../MATLAB datastore/W1.6T1.0_metrics_HPC.mat', 'dttWetCellDeltaPlainFraction', 'dttIsDelta')
    W16T1.dttWetCellDeltaPlainFraction = dttWetCellDeltaPlainFraction;
    W16T1.dttIsDelta = dttIsDelta;
load('../MATLAB datastore/W1.6T2.0_metrics_HPC.mat', 'dttWetCellDeltaPlainFraction', 'dttIsDelta')
    W16T2.dttWetCellDeltaPlainFraction = dttWetCellDeltaPlainFraction;
    W16T2.dttIsDelta = dttIsDelta;
load('../MATLAB datastore/W1.6T3.0_metrics_HPC.mat', 'dttWetCellDeltaPlainFraction', 'dttIsDelta')
    W16T3.dttWetCellDeltaPlainFraction = dttWetCellDeltaPlainFraction;
    W16T3.dttIsDelta = dttIsDelta;
load('../MATLAB datastore/W1.6T4.0_metrics_HPC.mat', 'dttWetCellDeltaPlainFraction', 'dttIsDelta')
    W16T4.dttWetCellDeltaPlainFraction = dttWetCellDeltaPlainFraction;
    W16T4.dttIsDelta = dttIsDelta;
load('../MATLAB datastore/W1.6T5.0_metrics_HPC.mat', 'dttWetCellDeltaPlainFraction', 'dttIsDelta')
    W16T5.dttWetCellDeltaPlainFraction = dttWetCellDeltaPlainFraction;
    W16T5.dttIsDelta = dttIsDelta;
load('../MATLAB datastore/W1.6T6.0_metrics_HPC.mat', 'dttWetCellDeltaPlainFraction', 'dttIsDelta')
    W16T6.dttWetCellDeltaPlainFraction = dttWetCellDeltaPlainFraction;
    W16T6.dttIsDelta = dttIsDelta;

load('../MATLAB datastore/W2.0T0.0_metrics_HPC.mat', 'dttWetCellDeltaPlainFraction', 'dttIsDelta')
    W2T0.dttWetCellDeltaPlainFraction = dttWetCellDeltaPlainFraction;
    W2T0.dttIsDelta = dttIsDelta;
load('../MATLAB datastore/W2.0T1.0_metrics_HPC.mat', 'dttWetCellDeltaPlainFraction', 'dttIsDelta')
    W2T1.dttWetCellDeltaPlainFraction = dttWetCellDeltaPlainFraction;
    W2T1.dttIsDelta = dttIsDelta;
load('../MATLAB datastore/W2.0T2.0_metrics_HPC.mat', 'dttWetCellDeltaPlainFraction', 'dttIsDelta')
    W2T2.dttWetCellDeltaPlainFraction = dttWetCellDeltaPlainFraction;
    W2T2.dttIsDelta = dttIsDelta;
load('../MATLAB datastore/W2.0T3.0_metrics_HPC.mat', 'dttWetCellDeltaPlainFraction', 'dttIsDelta')
    W2T3.dttWetCellDeltaPlainFraction = dttWetCellDeltaPlainFraction;
    W2T3.dttIsDelta = dttIsDelta;
load('../MATLAB datastore/W2.0T4.0_metrics_HPC.mat', 'dttWetCellDeltaPlainFraction', 'dttIsDelta')
    W2T4.dttWetCellDeltaPlainFraction = dttWetCellDeltaPlainFraction;
    W2T4.dttIsDelta = dttIsDelta;
load('../MATLAB datastore/W2.0T5.0_metrics_HPC.mat', 'dttWetCellDeltaPlainFraction', 'dttIsDelta')
    W2T5.dttWetCellDeltaPlainFraction = dttWetCellDeltaPlainFraction;
    W2T5.dttIsDelta = dttIsDelta;
load('../MATLAB datastore/W2.0T6.0_metrics_HPC.mat', 'dttWetCellDeltaPlainFraction', 'dttIsDelta')
    W2T6.dttWetCellDeltaPlainFraction = dttWetCellDeltaPlainFraction;
    W2T6.dttIsDelta = dttIsDelta;
    
% extended sims
load('../MATLAB datastore/W1.6T4.0ext_metrics_HPC.mat', 'dttWetCellDeltaPlainFraction', 'dttIsDelta')
    W16T4ext.dttWetCellDeltaPlainFraction = dttWetCellDeltaPlainFraction;
    W16T4ext.dttIsDelta = dttIsDelta;
load('../MATLAB datastore/W1.6T6.0ext_metrics_HPC.mat', 'dttWetCellDeltaPlainFraction', 'dttIsDelta')
    W16T6ext.dttWetCellDeltaPlainFraction = dttWetCellDeltaPlainFraction;
    W16T6ext.dttIsDelta = dttIsDelta;
    
load('../MATLAB datastore/W2.0T0.0ext_metrics_HPC.mat', 'dttWetCellDeltaPlainFraction', 'dttIsDelta')
    W2T0ext.dttWetCellDeltaPlainFraction = dttWetCellDeltaPlainFraction;
    W2T0ext.dttIsDelta = dttIsDelta;
load('../MATLAB datastore/W2.0T1.0ext_metrics_HPC.mat', 'dttWetCellDeltaPlainFraction', 'dttIsDelta')
    W2T1ext.dttWetCellDeltaPlainFraction = dttWetCellDeltaPlainFraction;
    W2T1ext.dttIsDelta = dttIsDelta;
load('../MATLAB datastore/W2.0T2.0ext_metrics_HPC.mat', 'dttWetCellDeltaPlainFraction', 'dttIsDelta')
    W2T2ext.dttWetCellDeltaPlainFraction = dttWetCellDeltaPlainFraction;
    W2T2ext.dttIsDelta = dttIsDelta;
load('../MATLAB datastore/W2.0T4.0ext_metrics_HPC.mat', 'dttWetCellDeltaPlainFraction', 'dttIsDelta')
    W2T4ext.dttWetCellDeltaPlainFraction = dttWetCellDeltaPlainFraction;
    W2T4ext.dttIsDelta = dttIsDelta;
load('../MATLAB datastore/W2.0T6.0ext_metrics_HPC.mat', 'dttWetCellDeltaPlainFraction', 'dttIsDelta')
    W2T6ext.dttWetCellDeltaPlainFraction = dttWetCellDeltaPlainFraction;
    W2T6ext.dttIsDelta = dttIsDelta;

%% PLOTS PREAMBLE
tYearsNoTide = [0:12.5*175/(24*365):144*12.5*175/(24*365)];
tYearsTide = [12.5*175/(24*365*4):12.5*175/(24*365):144*12.5*175/(24*365)-3*12.5*175/(24*365*4)];

tYearsNoTideExt = [0:12.5*175/(24*365):288*12.5*175/(24*365)];
tYearsTideExt = [12.5*175/(24*365*4):12.5*175/(24*365):288*12.5*175/(24*365)-3*12.5*175/(24*365*4)];

%% PLOTS
dttQuasiEqPlot = figure(1100);
dttQuasiEqPlot.Position = [100 0 1280 1280];
clf
tPlot = tiledlayout(3, 2, 'TileSpacing', 'Tight', 'Padding', 'Tight');
xlabel(tPlot, '{\itt} [yr]', 'FontSize', 20)
ylabel(tPlot, {'{\itA_{wet} / A_{low}} [-]'}, 'FontSize', 20)

nexttile
plot(tYearsNoTide(W0T0.dttIsDelta), W0T0.dttWetCellDeltaPlainFraction(W0T0.dttIsDelta), '^')
hold on
% plot(tYearsTide(W0T05.dttIsDelta), W0T05.dttWetCellDeltaPlainFraction(W0T05.dttIsDelta), 'x', 'color', [0.3010 0.7450 0.9330])
plot(tYearsTide(W0T1.dttIsDelta), W0T1.dttWetCellDeltaPlainFraction(W0T1.dttIsDelta), 'd', 'color', [0.8500 0.3250 0.0980])
plot(tYearsTide(W0T2.dttIsDelta), W0T2.dttWetCellDeltaPlainFraction(W0T2.dttIsDelta), 'o', 'color', [0.9290 0.6940 0.1250])
plot(tYearsTide(W0T3.dttIsDelta), W0T3.dttWetCellDeltaPlainFraction(W0T3.dttIsDelta), '*', 'color', [0.6350 0.0780 0.1840])
plot(tYearsTide(W0T4.dttIsDelta), W0T4.dttWetCellDeltaPlainFraction(W0T4.dttIsDelta), '.', 'color', [0.4940 0.1840 0.5560])
plot(tYearsTide(W0T5.dttIsDelta), W0T5.dttWetCellDeltaPlainFraction(W0T5.dttIsDelta), 's', 'color', [0.7 0.4 0.9])
plot(tYearsTide(W0T6.dttIsDelta), W0T6.dttWetCellDeltaPlainFraction(W0T6.dttIsDelta), 'x', 'color', [0.4660 0.6740 0.1880])
plot(tYearsNoTide(~W0T0.dttIsDelta), W0T0.dttWetCellDeltaPlainFraction(~W0T0.dttIsDelta), '^', 'color', [0.75 0.75 0.75])
% plot(tYearsTide(~W0T05.dttIsDelta(1:end-1)), W0T05.dttWetCellDeltaPlainFraction(~W0T05.dttIsDelta(1:end-1)), 'x', 'color', [0.75 0.75 0.75])
plot(tYearsTide(~W0T1.dttIsDelta(1:end-1)), W0T1.dttWetCellDeltaPlainFraction(~W0T1.dttIsDelta(1:end-1)), 'd', 'color', [0.75 0.75 0.75])
plot(tYearsTide(~W0T2.dttIsDelta(1:end-1)), W0T2.dttWetCellDeltaPlainFraction(~W0T2.dttIsDelta(1:end-1)), 'o', 'color', [0.75 0.75 0.75])
plot(tYearsTide(~W0T3.dttIsDelta(1:end-1)), W0T3.dttWetCellDeltaPlainFraction(~W0T3.dttIsDelta(1:end-1)), '*', 'color', [0.75 0.75 0.75])
plot(tYearsTide(~W0T4.dttIsDelta(1:end-1)), W0T4.dttWetCellDeltaPlainFraction(~W0T4.dttIsDelta(1:end-1)), '.', 'color', [0.75 0.75 0.75])
plot(tYearsTide(~W0T5.dttIsDelta(1:end-1)), W0T5.dttWetCellDeltaPlainFraction(~W0T5.dttIsDelta(1:end-1)), 's', 'color', [0.75 0.75 0.75])
plot(tYearsTide(~W0T6.dttIsDelta(1:end-1)), W0T6.dttWetCellDeltaPlainFraction(~W0T6.dttIsDelta(1:end-1)), 'x', 'color', [0.75 0.75 0.75])
% plot(tYearsNoTide, movmean(dttWetCellDeltaPlainFraction, kRange, 'omitnan'), 'k--')
xlim([0 36])
xticks(0:6:36)
% xlabel('Time, \itt \rm[yr]')
ylim([0 1])
yticks(0:0.2:1)
% ylabel({'Wet fraction of delta plain, \it\gamma \rm[-]'})
set(gca, 'FontSize', 16)
legend('W0.0T0.0', 'W0.0T1.0', 'W0.0T2.0', 'W0.0T3.0', 'W0.0T4.0', 'W0.0T5.0', 'W0.0T6.0', 'location', 'northeast', 'numcolumns', 3)
text(1, 0.925, 'a)', 'FontSize', 36)
grid on

nexttile
plot(tYearsNoTide(W04T0.dttIsDelta), W04T0.dttWetCellDeltaPlainFraction(W04T0.dttIsDelta), '^')
hold on
plot(tYearsTide(W04T1.dttIsDelta(1:end-1)), W04T1.dttWetCellDeltaPlainFraction(W04T1.dttIsDelta(1:end-1)), 'd', 'color', [0.8500 0.3250 0.0980])
plot(tYearsTide(W04T2.dttIsDelta(1:end-1)), W04T2.dttWetCellDeltaPlainFraction(W04T2.dttIsDelta(1:end-1)), 'o', 'color', [0.9290 0.6940 0.1250])
plot(tYearsTide(W04T3.dttIsDelta(1:end-1)), W04T3.dttWetCellDeltaPlainFraction(W04T3.dttIsDelta(1:end-1)), '*', 'color', [0.6350 0.0780 0.1840])
plot(tYearsTide(W04T4.dttIsDelta(1:end-1)), W04T4.dttWetCellDeltaPlainFraction(W04T4.dttIsDelta(1:end-1)), '.', 'color', [0.4940 0.1840 0.5560])
plot(tYearsTide(W04T5.dttIsDelta(1:end-1)), W04T5.dttWetCellDeltaPlainFraction(W04T5.dttIsDelta(1:end-1)), 's', 'color', [0.7 0.4 0.9])
plot(tYearsTide(W04T6.dttIsDelta(1:end-1)), W04T6.dttWetCellDeltaPlainFraction(W04T6.dttIsDelta(1:end-1)), 'x', 'color', [0.4660 0.6740 0.1880])
plot(tYearsNoTide(~W04T0.dttIsDelta), W04T0.dttWetCellDeltaPlainFraction(~W04T0.dttIsDelta), '^', 'color', [0.75 0.75 0.75])
plot(tYearsTide(~W04T1.dttIsDelta(1:end-1)), W04T1.dttWetCellDeltaPlainFraction(~W04T1.dttIsDelta(1:end-1)), 'd', 'color', [0.75 0.75 0.75])
plot(tYearsTide(~W04T2.dttIsDelta(1:end-1)), W04T2.dttWetCellDeltaPlainFraction(~W04T2.dttIsDelta(1:end-1)), 'o', 'color', [0.75 0.75 0.75])
plot(tYearsTide(~W04T3.dttIsDelta(1:end-1)), W04T3.dttWetCellDeltaPlainFraction(~W04T3.dttIsDelta(1:end-1)), '*', 'color', [0.75 0.75 0.75])
plot(tYearsTide(~W04T4.dttIsDelta(1:end-1)), W04T4.dttWetCellDeltaPlainFraction(~W04T4.dttIsDelta(1:end-1)), '.', 'color', [0.75 0.75 0.75])
plot(tYearsTide(~W04T5.dttIsDelta(1:end-1)), W04T5.dttWetCellDeltaPlainFraction(~W04T5.dttIsDelta(1:end-1)), 's', 'color', [0.75 0.75 0.75])
plot(tYearsTide(~W04T6.dttIsDelta(1:end-1)), W04T6.dttWetCellDeltaPlainFraction(~W04T6.dttIsDelta(1:end-1)), 'x', 'color', [0.75 0.75 0.75])
% plot(tYearsNoTide, movmean(dttWetCellDeltaPlainFraction, kRange, 'omitnan'), 'k--')
xlim([0 36])
xticks(0:6:36)
% xlabel('Time, \itt \rm[yr]')
ylim([0 1])
yticks(0:0.2:1)
% ylabel({'Wet fraction of delta plain, \it\gamma \rm[-]'})
set(gca, 'FontSize', 16)
legend('W0.4T0.0', 'W0.4T1.0', 'W0.4T2.0', 'W0.4T3.0', 'W0.4T4.0', 'W0.4T5.0', 'W0.4T6.0', 'location', 'northeast', 'numcolumns', 3)
text(1, 0.925, 'b)', 'FontSize', 36)
grid on

nexttile
plot(tYearsNoTide(W08T0.dttIsDelta), W08T0.dttWetCellDeltaPlainFraction(W08T0.dttIsDelta), '^')
hold on
plot(tYearsTide(W08T1.dttIsDelta(1:end-1)), W08T1.dttWetCellDeltaPlainFraction(W08T1.dttIsDelta(1:end-1)), 'd', 'color', [0.8500 0.3250 0.0980])
plot(tYearsTide(W08T2.dttIsDelta(1:end-1)), W08T2.dttWetCellDeltaPlainFraction(W08T2.dttIsDelta(1:end-1)), 'o', 'color', [0.9290 0.6940 0.1250])
plot(tYearsTide(W08T3.dttIsDelta(1:end-1)), W08T3.dttWetCellDeltaPlainFraction(W08T3.dttIsDelta(1:end-1)), '*', 'color', [0.6350 0.0780 0.1840])
plot(tYearsTide(W08T4.dttIsDelta(1:end-1)), W08T4.dttWetCellDeltaPlainFraction(W08T4.dttIsDelta(1:end-1)), '.', 'color', [0.4940 0.1840 0.5560])
plot(tYearsTide(W08T5.dttIsDelta(1:end-1)), W08T5.dttWetCellDeltaPlainFraction(W08T5.dttIsDelta(1:end-1)), 's', 'color', [0.7 0.4 0.9])
plot(tYearsTide(W08T6.dttIsDelta(1:end-1)), W08T6.dttWetCellDeltaPlainFraction(W08T6.dttIsDelta(1:end-1)), 'x', 'color', [0.4660 0.6740 0.1880])
plot(tYearsNoTide(~W08T0.dttIsDelta), W08T0.dttWetCellDeltaPlainFraction(~W08T0.dttIsDelta), '^', 'color', [0.75 0.75 0.75])
plot(tYearsTide(~W08T1.dttIsDelta(1:end-1)), W08T1.dttWetCellDeltaPlainFraction(~W08T1.dttIsDelta(1:end-1)), 'd', 'color', [0.75 0.75 0.75])
plot(tYearsTide(~W08T2.dttIsDelta(1:end-1)), W08T2.dttWetCellDeltaPlainFraction(~W08T2.dttIsDelta(1:end-1)), 'o', 'color', [0.75 0.75 0.75])
plot(tYearsTide(~W08T3.dttIsDelta(1:end-1)), W08T3.dttWetCellDeltaPlainFraction(~W08T3.dttIsDelta(1:end-1)), '*', 'color', [0.75 0.75 0.75])
plot(tYearsTide(~W08T4.dttIsDelta(1:end-1)), W08T4.dttWetCellDeltaPlainFraction(~W08T4.dttIsDelta(1:end-1)), '.', 'color', [0.75 0.75 0.75])
plot(tYearsTide(~W08T5.dttIsDelta(1:end-1)), W08T5.dttWetCellDeltaPlainFraction(~W08T5.dttIsDelta(1:end-1)), 's', 'color', [0.75 0.75 0.75])
plot(tYearsTide(~W08T6.dttIsDelta(1:end-1)), W08T6.dttWetCellDeltaPlainFraction(~W08T6.dttIsDelta(1:end-1)), 'x', 'color', [0.75 0.75 0.75])
% plot(tYearsNoTide, movmean(dttWetCellDeltaPlainFraction, kRange, 'omitnan'), 'k--')
xlim([0 36])
xticks(0:6:36)
% xlabel('Time, \itt \rm[yr]')
ylim([0 1])
yticks(0:0.2:1)
% ylabel({'Wet fraction of delta plain, \it\gamma \rm[-]'})
set(gca, 'FontSize', 16)
legend('W0.8T0.0', 'W0.8T1.0', 'W0.8T2.0', 'W0.8T3.0', 'W0.8T4.0', 'W0.8T5.0', 'W0.8T6.0', 'location', 'northeast', 'numcolumns', 3)
text(1, 0.925, 'c)', 'FontSize', 36)
grid on

nexttile
plot(tYearsNoTide(W12T0.dttIsDelta), W12T0.dttWetCellDeltaPlainFraction(W12T0.dttIsDelta), '^')
hold on
plot(tYearsTide(W12T1.dttIsDelta(1:end-1)), W12T1.dttWetCellDeltaPlainFraction(W12T1.dttIsDelta(1:end-1)), 'd', 'color', [0.8500 0.3250 0.0980])
plot(tYearsTide(W12T2.dttIsDelta(1:end-1)), W12T2.dttWetCellDeltaPlainFraction(W12T2.dttIsDelta(1:end-1)), 'o', 'color', [0.9290 0.6940 0.1250])
plot(tYearsTide(W12T3.dttIsDelta(1:end-1)), W12T3.dttWetCellDeltaPlainFraction(W12T3.dttIsDelta(1:end-1)), '*', 'color', [0.6350 0.0780 0.1840])
plot(tYearsTide(W12T4.dttIsDelta(1:end-1)), W12T4.dttWetCellDeltaPlainFraction(W12T4.dttIsDelta(1:end-1)), '.', 'color', [0.4940 0.1840 0.5560])
plot(tYearsTide(W12T5.dttIsDelta(1:end-1)), W12T5.dttWetCellDeltaPlainFraction(W12T5.dttIsDelta(1:end-1)), 's', 'color', [0.7 0.4 0.9])
plot(tYearsTide(W12T6.dttIsDelta(1:end-1)), W12T6.dttWetCellDeltaPlainFraction(W12T6.dttIsDelta(1:end-1)), 'x', 'color', [0.4660 0.6740 0.1880])
plot(tYearsNoTide(~W12T0.dttIsDelta), W12T0.dttWetCellDeltaPlainFraction(~W12T0.dttIsDelta), '^', 'color', [0.75 0.75 0.75])
plot(tYearsTide(~W12T1.dttIsDelta(1:end-1)), W12T1.dttWetCellDeltaPlainFraction(~W12T1.dttIsDelta(1:end-1)), 'd', 'color', [0.75 0.75 0.75])
plot(tYearsTide(~W12T2.dttIsDelta(1:end-1)), W12T2.dttWetCellDeltaPlainFraction(~W12T2.dttIsDelta(1:end-1)), 'o', 'color', [0.75 0.75 0.75])
plot(tYearsTide(~W12T3.dttIsDelta(1:end-1)), W12T3.dttWetCellDeltaPlainFraction(~W12T3.dttIsDelta(1:end-1)), '*', 'color', [0.75 0.75 0.75])
plot(tYearsTide(~W12T4.dttIsDelta(1:end-1)), W12T4.dttWetCellDeltaPlainFraction(~W12T4.dttIsDelta(1:end-1)), '.', 'color', [0.75 0.75 0.75])
plot(tYearsTide(~W12T5.dttIsDelta(1:end-1)), W12T5.dttWetCellDeltaPlainFraction(~W12T5.dttIsDelta(1:end-1)), 's', 'color', [0.75 0.75 0.75])
plot(tYearsTide(~W12T6.dttIsDelta(1:end-1)), W12T6.dttWetCellDeltaPlainFraction(~W12T6.dttIsDelta(1:end-1)), 'x', 'color', [0.75 0.75 0.75])
% plot(tYearsNoTide, movmean(dttWetCellDeltaPlainFraction, kRange, 'omitnan'), 'k--')
xlim([0 36])
xticks(0:6:36)
% xlabel('Time, \itt \rm[yr]')
ylim([0 1])
yticks(0:0.2:1)
% ylabel({'Wet fraction of delta plain, \it\gamma \rm[-]'})
set(gca, 'FontSize', 16)
legend('W1.2T0.0', 'W1.2T1.0', 'W1.2T2.0', 'W1.2T3.0', 'W1.2T4.0', 'W1.2T5.0', 'W1.2T6.0', 'location', 'northeast', 'numcolumns', 3)
text(1, 0.925, 'd)', 'FontSize', 36)
grid on

nexttile
plot(tYearsNoTide(W16T0.dttIsDelta), W16T0.dttWetCellDeltaPlainFraction(W16T0.dttIsDelta), '^')
hold on
plot(tYearsTide(W16T1.dttIsDelta(1:end-1)), W16T1.dttWetCellDeltaPlainFraction(W16T1.dttIsDelta(1:end-1)), 'd', 'color', [0.8500 0.3250 0.0980])
plot(tYearsTide(W16T2.dttIsDelta(1:end-1)), W16T2.dttWetCellDeltaPlainFraction(W16T2.dttIsDelta(1:end-1)), 'o', 'color', [0.9290 0.6940 0.1250])
% plot(tYearsTide(W16T3.dttIsDelta(1:end-1)), W16T3.dttWetCellDeltaPlainFraction(W16T3.dttIsDelta(1:end-1)), '*', 'color', [0.6350 0.0780 0.1840])
plot(tYearsTideExt([W16T4.dttIsDelta(1:end-1); W16T4ext.dttIsDelta(1:end-1)]), [W16T4.dttWetCellDeltaPlainFraction(W16T4.dttIsDelta(1:end-1)); W16T4ext.dttWetCellDeltaPlainFraction(W16T4ext.dttIsDelta(1:end-1))], '.', 'color', [0.4940 0.1840 0.5560])
% plot(tYearsTideExt([W16T6.dttIsDelta(1:end-1); W16T6ext.dttIsDelta(1:end-1)]), [W16T6.dttWetCellDeltaPlainFraction(W16T6.dttIsDelta(1:end-1)); W16T6ext.dttWetCellDeltaPlainFraction(W16T6ext.dttIsDelta(1:end-1))], 'x', 'color', [0.4660 0.6740 0.1880])
plot(tYearsNoTide(~W16T0.dttIsDelta), W16T0.dttWetCellDeltaPlainFraction(~W16T0.dttIsDelta), '^', 'color', [0.75 0.75 0.75])
plot(tYearsTide(~W16T1.dttIsDelta(1:end-1)), W16T1.dttWetCellDeltaPlainFraction(~W16T1.dttIsDelta(1:end-1)), 'd', 'color', [0.75 0.75 0.75])
plot(tYearsTide(~W16T2.dttIsDelta(1:end-1)), W16T2.dttWetCellDeltaPlainFraction(~W16T2.dttIsDelta(1:end-1)), 'o', 'color', [0.75 0.75 0.75])
% plot(tYearsTide(~W16T3.dttIsDelta(1:end-1)), W16T3.dttWetCellDeltaPlainFraction(~W16T3.dttIsDelta(1:end-1)), '*', 'color', [0.75 0.75 0.75])
plot(tYearsTideExt([~W16T4.dttIsDelta(1:end-1); ~W16T4ext.dttIsDelta(1:end-1)]), [W16T4.dttWetCellDeltaPlainFraction(~W16T4.dttIsDelta(1:end-1)); W16T4ext.dttWetCellDeltaPlainFraction(~W16T4ext.dttIsDelta(1:end-1))], '.', 'color', [0.75 0.75 0.75])
% plot(tYearsTideExt([~W16T6.dttIsDelta(1:end-1); ~W16T6ext.dttIsDelta(1:end-1)]), [W16T6.dttWetCellDeltaPlainFraction(~W16T6.dttIsDelta(1:end-1)); W16T6ext.dttWetCellDeltaPlainFraction(~W16T6ext.dttIsDelta(1:end-1))], 'x', 'color', [0.75 0.75 0.75])
% plot(tYearsNoTide, movmean(dttWetCellDeltaPlainFraction, kRange, 'omitnan'), 'k--')
xlim([0 72])
xticks(0:6:72)
% xlabel('Time, \itt \rm[yr]')
ylim([0 1])
yticks(0:0.2:1)
% ylabel({'Wet fraction of delta plain, \it\gamma \rm[-]'})
set(gca, 'FontSize', 16)
legend('W1.6T0.0', 'W1.6T1.0', 'W1.6T2.0', 'W1.6T4.0', 'location', 'northeast', 'numcolumns', 2)
text(1, 0.925, 'e)', 'FontSize', 36)
grid on

nexttile
% note: first value in W2T0ext omitted as corresponds to same time as last of W2T0
plot(tYearsNoTideExt([W2T0.dttIsDelta; W2T0ext.dttIsDelta(2:end)]), [W2T0.dttWetCellDeltaPlainFraction(W2T0.dttIsDelta); W2T0ext.dttWetCellDeltaPlainFraction(W2T0ext.dttIsDelta(2:end))], '^')
hold on
plot(tYearsTideExt([W2T1.dttIsDelta(1:end-1); W2T1ext.dttIsDelta(1:end-1)]), [W2T1.dttWetCellDeltaPlainFraction(W2T1.dttIsDelta(1:end-1)); W2T1ext.dttWetCellDeltaPlainFraction(W2T1ext.dttIsDelta(1:end-1))], 'd', 'color', [0.8500 0.3250 0.0980])
% plot(tYearsTideExt([W2T2.dttIsDelta(1:end-1); W2T2ext.dttIsDelta(1:end-1)]), [W2T2.dttWetCellDeltaPlainFraction(W2T2.dttIsDelta(1:end-1)); W2T2ext.dttWetCellDeltaPlainFraction(W2T2ext.dttIsDelta(1:end-1))], 'o', 'color', [0.9290 0.6940 0.1250])
% plot(tYearsTideExt([W2T4.dttIsDelta(1:end-1); W2T4ext.dttIsDelta(1:end-1)]), [W2T4.dttWetCellDeltaPlainFraction(W2T4.dttIsDelta(1:end-1)); W2T4ext.dttWetCellDeltaPlainFraction(W2T4ext.dttIsDelta(1:end-1))], '.', 'color', [0.4940 0.1840 0.5560])
% plot(tYearsTideExt([W2T6.dttIsDelta(1:end-1); W2T6ext.dttIsDelta(1:end-1)]), [W2T6.dttWetCellDeltaPlainFraction(W2T6.dttIsDelta(1:end-1)); W2T6ext.dttWetCellDeltaPlainFraction(W2T6ext.dttIsDelta(1:end-1))], 'x', 'color', [0.4660 0.6740 0.1880])
plot(tYearsNoTideExt([~W2T0.dttIsDelta; ~W2T0ext.dttIsDelta(2:end)]), [W2T0.dttWetCellDeltaPlainFraction(~W2T0.dttIsDelta); W2T0ext.dttWetCellDeltaPlainFraction(~W2T0ext.dttIsDelta(2:end))], '^', 'color', [0.75 0.75 0.75])
plot(tYearsTideExt([~W2T1.dttIsDelta(1:end-1); ~W2T1ext.dttIsDelta(1:end-1)]), [W2T1.dttWetCellDeltaPlainFraction(~W2T1.dttIsDelta(1:end-1)); W2T1ext.dttWetCellDeltaPlainFraction(~W2T1ext.dttIsDelta(1:end-1))], 'd', 'color', [0.75 0.75 0.75])
% plot(tYearsTideExt([~W2T2.dttIsDelta(1:end-1); ~W2T2ext.dttIsDelta(1:end-1)]), [W2T2.dttWetCellDeltaPlainFraction(~W2T2.dttIsDelta(1:end-1)); W2T2ext.dttWetCellDeltaPlainFraction(~W2T2ext.dttIsDelta(1:end-1))], 'o', 'color', [0.75 0.75 0.75])
% plot(tYearsTideExt([~W2T4.dttIsDelta(1:end-1); ~W2T4ext.dttIsDelta(1:end-1)]), [W2T4.dttWetCellDeltaPlainFraction(~W2T4.dttIsDelta(1:end-1)); W2T4ext.dttWetCellDeltaPlainFraction(~W2T4ext.dttIsDelta(1:end-1))], '.', 'color', [0.75 0.75 0.75])
% plot(tYearsTideExt([~W2T6.dttIsDelta(1:end-1); ~W2T6ext.dttIsDelta(1:end-1)]), [W2T6.dttWetCellDeltaPlainFraction(~W2T6.dttIsDelta(1:end-1)); W2T6ext.dttWetCellDeltaPlainFraction(~W2T6ext.dttIsDelta(1:end-1))], 'x', 'color', [0.75 0.75 0.75])
% plot(tYearsNoTide, movmean(dttWetCellDeltaPlainFraction, kRange, 'omitnan'), 'k--')
xlim([0 72])
xticks(0:6:72)
% xlabel('Time, \itt \rm[yr]')
ylim([0 1])
yticks(0:0.2:1)
% ylabel({'Wet fraction of delta plain, \it\gamma \rm[-]'})
set(gca, 'FontSize', 16)
legend('W2.0T0.0', 'W2.0T1.0', 'location', 'northeast', 'numcolumns', 2)
text(1, 0.925, 'f)', 'FontSize', 36)
grid on

%% EXPORT PLOT
% exportgraphics(dttQuasiEqPlot, ['../MATLAB export/Final/quasiEquilibrium/dttWetFractionAllSims_v4.png'], 'resolution', 150);