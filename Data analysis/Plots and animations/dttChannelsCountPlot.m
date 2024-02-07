% Date:     19/09/2023
% Author:   ERS

% This script loads and plots output from dttChannelsCount.m.

% Note: non-tidal simulations have valid data from n = 1:145, tidal
% simulations have valid data from n = 2:144. This is due to the different
% timings for determining shorelines in tidal vs non-tidal sims.

%% LOAD DATA
load('..\MATLAB datastore\W0.0T0.0_metrics_HPC.mat', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber', 'mf')
W0T0.dttChannelActiveNo = dttChannelActiveNo;
W0T0.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W0T0.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
load('..\MATLAB datastore\W0.0T0.5_metrics_HPC.mat', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber')
W0T05.dttChannelActiveNo = dttChannelActiveNo;
W0T05.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W0T05.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
load('..\MATLAB datastore\W0.0T1.0_metrics_HPC.mat', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber')
W0T1.dttChannelActiveNo = dttChannelActiveNo;
W0T1.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W0T1.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
load('..\MATLAB datastore\W0.0T2.0_metrics_HPC.mat', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber')
W0T2.dttChannelActiveNo = dttChannelActiveNo;
W0T2.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W0T2.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
load('..\MATLAB datastore\W0.0T3.0_metrics_HPC.mat', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber')
W0T3.dttChannelActiveNo = dttChannelActiveNo;
W0T3.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W0T3.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
load('..\MATLAB datastore\W0.0T4.0_metrics_HPC.mat', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber')
W0T4.dttChannelActiveNo = dttChannelActiveNo;
W0T4.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W0T4.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
load('..\MATLAB datastore\W0.0T5.0_metrics_HPC.mat', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber')
W0T5.dttChannelActiveNo = dttChannelActiveNo;
W0T5.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W0T5.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
load('..\MATLAB datastore\W0.0T6.0_metrics_HPC.mat', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber')
W0T6.dttChannelActiveNo = dttChannelActiveNo;
W0T6.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W0T6.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;

load('..\MATLAB datastore\W0.4T0.0_metrics_HPC.mat', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber')
W04T0.dttChannelActiveNo = dttChannelActiveNo;
W04T0.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W04T0.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
load('..\MATLAB datastore\W0.4T1.0_metrics_HPC.mat', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber')
W04T1.dttChannelActiveNo = dttChannelActiveNo;
W04T1.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W04T1.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
load('..\MATLAB datastore\W0.4T2.0_metrics_HPC.mat', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber')
W04T2.dttChannelActiveNo = dttChannelActiveNo;
W04T2.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W04T2.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
load('..\MATLAB datastore\W0.4T4.0_metrics_HPC.mat', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber')
W04T4.dttChannelActiveNo = dttChannelActiveNo;
W04T4.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W04T4.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
load('..\MATLAB datastore\W0.4T6.0_metrics_HPC.mat', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber')
W04T6.dttChannelActiveNo = dttChannelActiveNo;
W04T6.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W04T6.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;

load('..\MATLAB datastore\W0.8T0.0_metrics_HPC.mat', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber')
W08T0.dttChannelActiveNo = dttChannelActiveNo;
W08T0.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W08T0.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
load('..\MATLAB datastore\W0.8T1.0_metrics_HPC.mat', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber')
W08T1.dttChannelActiveNo = dttChannelActiveNo;
W08T1.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W08T1.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
load('..\MATLAB datastore\W0.8T2.0_metrics_HPC.mat', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber')
W08T2.dttChannelActiveNo = dttChannelActiveNo;
W08T2.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W08T2.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
load('..\MATLAB datastore\W0.8T4.0_metrics_HPC.mat', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber')
W08T4.dttChannelActiveNo = dttChannelActiveNo;
W08T4.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W08T4.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
load('..\MATLAB datastore\W0.8T6.0_metrics_HPC.mat', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber')
W08T6.dttChannelActiveNo = dttChannelActiveNo;
W08T6.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W08T6.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;

load('..\MATLAB datastore\W1.2T0.0_metrics_HPC.mat', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber')
W12T0.dttChannelActiveNo = dttChannelActiveNo;
W12T0.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W12T0.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
load('..\MATLAB datastore\W1.2T1.0_metrics_HPC.mat', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber')
W12T1.dttChannelActiveNo = dttChannelActiveNo;
W12T1.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W12T1.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
load('..\MATLAB datastore\W1.2T2.0_metrics_HPC.mat', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber')
W12T2.dttChannelActiveNo = dttChannelActiveNo;
W12T2.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W12T2.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
load('..\MATLAB datastore\W1.2T4.0_metrics_HPC.mat', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber')
W12T4.dttChannelActiveNo = dttChannelActiveNo;
W12T4.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W12T4.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
load('..\MATLAB datastore\W1.2T6.0_metrics_HPC.mat', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber')
W12T6.dttChannelActiveNo = dttChannelActiveNo;
W12T6.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W12T6.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;

load('..\MATLAB datastore\W1.6T0.0_metrics_HPC.mat', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber')
W16T0.dttChannelActiveNo = dttChannelActiveNo;
W16T0.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W16T0.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
load('..\MATLAB datastore\W1.6T1.0_metrics_HPC.mat', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber')
W16T1.dttChannelActiveNo = dttChannelActiveNo;
W16T1.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W16T1.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
load('..\MATLAB datastore\W1.6T2.0_metrics_HPC.mat', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber')
W16T2.dttChannelActiveNo = dttChannelActiveNo;
W16T2.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W16T2.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
load('..\MATLAB datastore\W1.6T4.0_metrics_HPC.mat', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber')
W16T4.dttChannelActiveNo = dttChannelActiveNo;
W16T4.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W16T4.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
load('..\MATLAB datastore\W1.6T6.0_metrics_HPC.mat', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber')
W16T6.dttChannelActiveNo = dttChannelActiveNo;
W16T6.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W16T6.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;

load('..\MATLAB datastore\W2.0T0.0_metrics_HPC.mat', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber')
W2T0.dttChannelActiveNo = dttChannelActiveNo;
W2T0.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W2T0.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
load('..\MATLAB datastore\W2.0T1.0_metrics_HPC.mat', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber')
W2T1.dttChannelActiveNo = dttChannelActiveNo;
W2T1.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W2T1.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
load('..\MATLAB datastore\W2.0T2.0_metrics_HPC.mat', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber')
W2T2.dttChannelActiveNo = dttChannelActiveNo;
W2T2.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W2T2.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
load('..\MATLAB datastore\W2.0T4.0_metrics_HPC.mat', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber')
W2T4.dttChannelActiveNo = dttChannelActiveNo;
W2T4.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W2T4.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
load('..\MATLAB datastore\W2.0T6.0_metrics_HPC.mat', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber')
W2T6.dttChannelActiveNo = dttChannelActiveNo;
W2T6.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W2T6.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;

% Clean up workspace
clear -regexp ^dtt;

%% PLOTS PREAMBLE
tYears = 0 : 12.5*mf / (24*365) : 1800*mf / (24*365);
range = 13;

%% PLOTS - CHANNELS CROSSING SHORELINE
% W0
dttChannelMouthsPlot_W0 = figure(10001);
dttChannelMouthsPlot_W0.Position = [100 100 1280 800];
clf reset
plot(tYears, W0T0.dttChannelActiveNo, 'kx');
hold on
plot(tYears, movmean(W0T0.dttChannelActiveNo, range), 'k:')
plot(tYears(2:end-1), W0T05.dttChannelActiveNo(2:end), '^', 'color', '#0072BD');
plot(tYears(2:end-1), movmean(W0T05.dttChannelActiveNo(2:end), range), ':', 'color', '#0072BD');
plot(tYears(2:end-1), W0T1.dttChannelActiveNo(2:end), 'ro');
plot(tYears(2:end-1), movmean(W0T1.dttChannelActiveNo(2:end), range), 'r:')
plot(tYears(2:end-1), W0T2.dttChannelActiveNo(2:end), 'g.');
plot(tYears(2:end-1), movmean(W0T2.dttChannelActiveNo(2:end), range), 'g:')
plot(tYears(2:end-1), W0T3.dttChannelActiveNo(2:end), 's', 'color', '#A2142F');
plot(tYears(2:end-1), movmean(W0T3.dttChannelActiveNo(2:end), range), ':', 'color', '#A2142F');
plot(tYears(2:end-1), W0T4.dttChannelActiveNo(2:end), 'bd');
plot(tYears(2:end-1), movmean(W0T4.dttChannelActiveNo(2:end), range), 'b:')
plot(tYears(2:end-1), W0T5.dttChannelActiveNo(2:end), '<', 'color', '#EDB120');
plot(tYears(2:end-1), movmean(W0T5.dttChannelActiveNo(2:end), range), ':', 'color', '#EDB120');
plot(tYears(2:end-1), W0T6.dttChannelActiveNo(2:end), 'm+');
plot(tYears(2:end-1), movmean(W0T6.dttChannelActiveNo(2:end), range), 'm:')
legend('W0.0T0.0', '', 'W0.0T0.5', '', 'W0.0T1.0', '', 'W0.0T2.0', '', 'W0.0T3.0', '', 'W0.0T4.0', '', 'W0.0T5.0', '', 'W0.0T6.0', '', 'Location', 'Northwest', 'numColumns', 2)
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 15])
ylabel('Number of channels crossing shoreline [-]')

% W0.4
dttChannelMouthsPlot_W04 = figure(10002);
dttChannelMouthsPlot_W04.Position = [110 90 1280 800];
clf reset
plot(tYears, W04T0.dttChannelActiveNo, 'kx');
hold on
plot(tYears, movmean(W04T0.dttChannelActiveNo, range), 'k:')
plot(tYears(2:end-1), W04T1.dttChannelActiveNo(2:end), 'ro');
plot(tYears(2:end-1), movmean(W04T1.dttChannelActiveNo(2:end), range), 'r:')
plot(tYears(2:end-1), W04T2.dttChannelActiveNo(2:end), 'g.');
plot(tYears(2:end-1), movmean(W04T2.dttChannelActiveNo(2:end), range), 'g:')
plot(tYears(2:end-1), W04T4.dttChannelActiveNo(2:end), 'bd');
plot(tYears(2:end-1), movmean(W04T4.dttChannelActiveNo(2:end), range), 'b:')
plot(tYears(2:end-1), W04T6.dttChannelActiveNo(2:end), 'm+');
plot(tYears(2:end-1), movmean(W04T6.dttChannelActiveNo(2:end), range), 'm:')
legend('W0.4T0.0', '', 'W0.4T1.0', '', 'W0.4T2.0', '', 'W0.4T4.0', '', 'W0.4T6.0', '', 'Location', 'Northwest', 'numColumns', 2)
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 15])
ylabel('Number of channels crossing shoreline [-]')

% W0.8
dttChannelMouthsPlot_W08 = figure(10003);
dttChannelMouthsPlot_W08.Position = [120 80 1280 800];
clf reset
plot(tYears, W08T0.dttChannelActiveNo, 'kx');
hold on
plot(tYears, movmean(W08T0.dttChannelActiveNo, range), 'k:')
plot(tYears(2:end-1), W08T1.dttChannelActiveNo(2:end), 'ro');
plot(tYears(2:end-1), movmean(W08T1.dttChannelActiveNo(2:end), range), 'r:')
plot(tYears(2:end-1), W08T2.dttChannelActiveNo(2:end), 'g.');
plot(tYears(2:end-1), movmean(W08T2.dttChannelActiveNo(2:end), range), 'g:')
plot(tYears(2:end-1), W08T4.dttChannelActiveNo(2:end), 'bd');
plot(tYears(2:end-1), movmean(W08T4.dttChannelActiveNo(2:end), range), 'b:')
plot(tYears(2:end-1), W08T6.dttChannelActiveNo(2:end), 'm+');
plot(tYears(2:end-1), movmean(W08T6.dttChannelActiveNo(2:end), range), 'm:')
legend('W0.8T0.0', '', 'W0.8T1.0', '', 'W0.8T2.0', '', 'W0.8T4.0', '', 'W0.8T6.0', '', 'Location', 'Northwest', 'numColumns', 2)
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 15])
ylabel('Number of channels crossing shoreline [-]')

% W1.2
dttChannelMouthsPlot_W12 = figure(10004);
dttChannelMouthsPlot_W12.Position = [130 70 1280 800];
clf reset
plot(tYears, W12T0.dttChannelActiveNo, 'kx');
hold on
plot(tYears, movmean(W12T0.dttChannelActiveNo, range), 'k:')
plot(tYears(2:end-1), W12T1.dttChannelActiveNo(2:end), 'ro');
plot(tYears(2:end-1), movmean(W12T1.dttChannelActiveNo(2:end), range), 'r:')
plot(tYears(2:end-1), W12T2.dttChannelActiveNo(2:end), 'g.');
plot(tYears(2:end-1), movmean(W12T2.dttChannelActiveNo(2:end), range), 'g:')
plot(tYears(2:end-1), W12T4.dttChannelActiveNo(2:end), 'bd');
plot(tYears(2:end-1), movmean(W12T4.dttChannelActiveNo(2:end), range), 'b:')
plot(tYears(2:end-1), W12T6.dttChannelActiveNo(2:end), 'm+');
plot(tYears(2:end-1), movmean(W12T6.dttChannelActiveNo(2:end), range), 'm:')
legend('W1.2T0.0', '', 'W1.2T1.0', '', 'W1.2T2.0', '', 'W1.2T4.0', '', 'W1.2T6.0', '', 'Location', 'Northwest', 'numColumns', 2)
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 15])
ylabel('Number of channels crossing shoreline [-]')

% W1.6
dttChannelMouthsPlot_W16 = figure(10005);
dttChannelMouthsPlot_W16.Position = [140 60 1280 800];
clf reset
plot(tYears, W16T0.dttChannelActiveNo, 'kx');
hold on
plot(tYears, movmean(W16T0.dttChannelActiveNo, range), 'k:')
plot(tYears(2:end-1), W16T1.dttChannelActiveNo(2:end), 'ro');
plot(tYears(2:end-1), movmean(W16T1.dttChannelActiveNo(2:end), range), 'r:')
plot(tYears(2:end-1), W16T2.dttChannelActiveNo(2:end), 'g.');
plot(tYears(2:end-1), movmean(W16T2.dttChannelActiveNo(2:end), range), 'g:')
plot(tYears(2:end-1), W16T4.dttChannelActiveNo(2:end), 'bd');
plot(tYears(2:end-1), movmean(W16T4.dttChannelActiveNo(2:end), range), 'b:')
plot(tYears(2:end-1), W16T6.dttChannelActiveNo(2:end), 'm+');
plot(tYears(2:end-1), movmean(W16T6.dttChannelActiveNo(2:end), range), 'm:')
legend('W1.6T0.0', '', 'W1.6T1.0', '', 'W1.6T2.0', '', 'W1.6T4.0', '', 'W1.6T6.0', '', 'Location', 'Northwest', 'numColumns', 2)
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 15])
ylabel('Number of channels crossing shoreline [-]')

% W2.0
dttChannelMouthsPlot_W2 = figure(10006);
dttChannelMouthsPlot_W2.Position = [150 50 1280 800];
clf reset
plot(tYears, W2T0.dttChannelActiveNo, 'kx');
hold on
plot(tYears, movmean(W2T0.dttChannelActiveNo, range), 'k:')
plot(tYears(2:end-1), W2T1.dttChannelActiveNo(2:end), 'ro');
plot(tYears(2:end-1), movmean(W2T1.dttChannelActiveNo(2:end), range), 'r:')
plot(tYears(2:end-1), W2T2.dttChannelActiveNo(2:end), 'g.');
plot(tYears(2:end-1), movmean(W2T2.dttChannelActiveNo(2:end), range), 'g:')
plot(tYears(2:end-1), W2T4.dttChannelActiveNo(2:end), 'bd');
plot(tYears(2:end-1), movmean(W2T4.dttChannelActiveNo(2:end), range), 'b:')
plot(tYears(2:end-1), W2T6.dttChannelActiveNo(2:end), 'm+');
plot(tYears(2:end-1), movmean(W2T6.dttChannelActiveNo(2:end), range), 'm:')
legend('W2.0T0.0', '', 'W2.0T1.0', '', 'W2.0T2.0', '', 'W2.0T4.0', '', 'W2.0T6.0', '', 'Location', 'Northwest', 'numColumns', 2)
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 15])
ylabel('Number of channels crossing shoreline [-]')

%%
% T0.0
dttChannelMouthsPlot_T0 = figure(10101);
dttChannelMouthsPlot_T0.Position = [200 100 1280 800];
clf reset
plot(tYears, W0T0.dttChannelActiveNo, 'kx');
hold on
plot(tYears, movmean(W0T0.dttChannelActiveNo, range), 'k:')
plot(tYears(1:end), W04T0.dttChannelActiveNo(1:end), 'ro');
plot(tYears(1:end), movmean(W04T0.dttChannelActiveNo, range), 'r:')
plot(tYears(1:end), W08T0.dttChannelActiveNo(1:end), 'g.');
plot(tYears(1:end), movmean(W08T0.dttChannelActiveNo, range), 'g:')
plot(tYears(1:end), W12T0.dttChannelActiveNo(1:end), 'bd');
plot(tYears(1:end), movmean(W12T0.dttChannelActiveNo, range), 'b:')
plot(tYears(1:end), W16T0.dttChannelActiveNo(1:end), 'm+');
plot(tYears(1:end), movmean(W16T0.dttChannelActiveNo, range), 'm:')
plot(tYears(1:end), W2T0.dttChannelActiveNo(1:end), '^', 'color', '#EDB120');
plot(tYears(1:end), movmean(W2T0.dttChannelActiveNo, range), ':', 'color', '#EDB120');
legend('W0.0T0.0', '', 'W0.4T0.0', '', 'W0.8T0.0', '', 'W1.2T0.0', '', 'W1.6T0.0', '', 'W2.0T0.0', '', 'Location', 'Northwest', 'numColumns', 2)
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 15])
ylabel('Number of channels crossing shoreline [-]')

% T1.0
dttChannelMouthsPlot_T1 = figure(10102);
dttChannelMouthsPlot_T1.Position = [200 100 1280 800];
clf reset
plot(tYears(2:end-1), W0T1.dttChannelActiveNo(2:end), 'kx');
hold on
plot(tYears(2:end-1), movmean(W0T1.dttChannelActiveNo(2:end), range), 'k:')
plot(tYears(2:end-1), W04T1.dttChannelActiveNo(2:end), 'ro');
plot(tYears(2:end-1), movmean(W04T1.dttChannelActiveNo(2:end), range), 'r:')
plot(tYears(2:end-1), W08T1.dttChannelActiveNo(2:end), 'g.');
plot(tYears(2:end-1), movmean(W08T1.dttChannelActiveNo(2:end), range), 'g:')
plot(tYears(2:end-1), W12T1.dttChannelActiveNo(2:end), 'bd');
plot(tYears(2:end-1), movmean(W12T1.dttChannelActiveNo(2:end), range), 'b:')
plot(tYears(2:end-1), W16T1.dttChannelActiveNo(2:end), 'm+');
plot(tYears(2:end-1), movmean(W16T1.dttChannelActiveNo(2:end), range), 'm:')
plot(tYears(2:end-1), W2T1.dttChannelActiveNo(2:end), '^', 'color', '#EDB120');
plot(tYears(2:end-1), movmean(W2T1.dttChannelActiveNo(2:end), range), ':', 'color', '#EDB120');
legend('W0.0T1.0', '', 'W0.4T1.0', '', 'W0.8T1.0', '', 'W1.2T1.0', '', 'W1.6T1.0', '', 'W2.0T1.0', '', 'Location', 'Northwest', 'numColumns', 2)
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 15])
ylabel('Number of channels crossing shoreline [-]')

% T2.0
dttChannelMouthsPlot_T2 = figure(10103);
dttChannelMouthsPlot_T2.Position = [200 100 1280 800];
clf reset
plot(tYears(2:end-1), W0T2.dttChannelActiveNo(2:end), 'kx');
hold on
plot(tYears(2:end-1), movmean(W0T2.dttChannelActiveNo(2:end), range), 'k:')
plot(tYears(2:end-1), W04T2.dttChannelActiveNo(2:end), 'ro');
plot(tYears(2:end-1), movmean(W04T2.dttChannelActiveNo(2:end), range), 'r:')
plot(tYears(2:end-1), W08T2.dttChannelActiveNo(2:end), 'g.');
plot(tYears(2:end-1), movmean(W08T2.dttChannelActiveNo(2:end), range), 'g:')
plot(tYears(2:end-1), W12T2.dttChannelActiveNo(2:end), 'bd');
plot(tYears(2:end-1), movmean(W12T2.dttChannelActiveNo(2:end), range), 'b:')
plot(tYears(2:end-1), W16T2.dttChannelActiveNo(2:end), 'm+');
plot(tYears(2:end-1), movmean(W16T2.dttChannelActiveNo(2:end), range), 'm:')
plot(tYears(2:end-1), W2T2.dttChannelActiveNo(2:end), '^', 'color', '#EDB120');
plot(tYears(2:end-1), movmean(W2T2.dttChannelActiveNo(2:end), range), ':', 'color', '#EDB120');
legend('W0.0T2.0', '', 'W0.4T2.0', '', 'W0.8T2.0', '', 'W1.2T2.0', '', 'W1.6T2.0', '', 'W2.0T2.0', '', 'Location', 'Northwest', 'numColumns', 2)
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 15])
ylabel('Number of channels crossing shoreline [-]')

% T4.0
dttChannelMouthsPlot_T4 = figure(10104);
dttChannelMouthsPlot_T4.Position = [200 100 1280 800];
clf reset
plot(tYears(2:end-1), W0T4.dttChannelActiveNo(2:end), 'kx');
hold on
plot(tYears(2:end-1), movmean(W0T4.dttChannelActiveNo(2:end), range), 'k:')
plot(tYears(2:end-1), W04T4.dttChannelActiveNo(2:end), 'ro');
plot(tYears(2:end-1), movmean(W04T4.dttChannelActiveNo(2:end), range), 'r:')
plot(tYears(2:end-1), W08T4.dttChannelActiveNo(2:end), 'g.');
plot(tYears(2:end-1), movmean(W08T4.dttChannelActiveNo(2:end), range), 'g:')
plot(tYears(2:end-1), W12T4.dttChannelActiveNo(2:end), 'bd');
plot(tYears(2:end-1), movmean(W12T4.dttChannelActiveNo(2:end), range), 'b:')
plot(tYears(2:end-1), W16T4.dttChannelActiveNo(2:end), 'm+');
plot(tYears(2:end-1), movmean(W16T4.dttChannelActiveNo(2:end), range), 'm:')
plot(tYears(2:end-1), W2T4.dttChannelActiveNo(2:end), '^', 'color', '#EDB120');
plot(tYears(2:end-1), movmean(W2T4.dttChannelActiveNo(2:end), range), ':', 'color', '#EDB120');
legend('W0.0T4.0', '', 'W0.4T4.0', '', 'W0.8T4.0', '', 'W1.2T4.0', '', 'W1.6T4.0', '', 'W2.0T4.0', '', 'Location', 'Northwest', 'numColumns', 2)
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 15])
ylabel('Number of channels crossing shoreline [-]')

% T6.0
dttChannelMouthsPlot_T6 = figure(10105);
dttChannelMouthsPlot_T6.Position = [200 100 1280 800];
clf reset
plot(tYears(2:end-1), W0T6.dttChannelActiveNo(2:end), 'kx');
hold on
plot(tYears(2:end-1), movmean(W0T6.dttChannelActiveNo(2:end), range), 'k:')
plot(tYears(2:end-1), W04T6.dttChannelActiveNo(2:end), 'ro');
plot(tYears(2:end-1), movmean(W04T6.dttChannelActiveNo(2:end), range), 'r:')
plot(tYears(2:end-1), W08T6.dttChannelActiveNo(2:end), 'g.');
plot(tYears(2:end-1), movmean(W08T6.dttChannelActiveNo(2:end), range), 'g:')
plot(tYears(2:end-1), W12T6.dttChannelActiveNo(2:end), 'bd');
plot(tYears(2:end-1), movmean(W12T6.dttChannelActiveNo(2:end), range), 'b:')
plot(tYears(2:end-1), W16T6.dttChannelActiveNo(2:end), 'm+');
plot(tYears(2:end-1), movmean(W16T6.dttChannelActiveNo(2:end), range), 'm:')
plot(tYears(2:end-1), W2T6.dttChannelActiveNo(2:end), '^', 'color', '#EDB120');
plot(tYears(2:end-1), movmean(W2T6.dttChannelActiveNo(2:end), range), ':', 'color', '#EDB120');
legend('W0.0T6.0', '', 'W0.4T6.0', '', 'W0.8T6.0', '', 'W1.2T6.0', '', 'W1.6T6.0', '', 'W2.0T6.0', '', 'Location', 'Northwest', 'numColumns', 2)
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 15])
ylabel('Number of channels crossing shoreline [-]')

%% EXPORT CHANNEL MOUTH PLOTS
% exportgraphics(dttChannelMouthsPlot_W0, ['../MATLAB export/Final/Channels/channelCounting/dttChannelMouthsCount_W0.0.png'], 'Resolution', 150);
% exportgraphics(dttChannelMouthsPlot_W04, ['../MATLAB export/Final/Channels/channelCounting/dttChannelMouthsCount_W0.4.png'], 'Resolution', 150);
% exportgraphics(dttChannelMouthsPlot_W08, ['../MATLAB export/Final/Channels/channelCounting/dttChannelMouthsCount_W0.8.png'], 'Resolution', 150);
% exportgraphics(dttChannelMouthsPlot_W12, ['../MATLAB export/Final/Channels/channelCounting/dttChannelMouthsCount_W1.2.png'], 'Resolution', 150);
% exportgraphics(dttChannelMouthsPlot_W16, ['../MATLAB export/Final/Channels/channelCounting/dttChannelMouthsCount_W1.6.png'], 'Resolution', 150);
% exportgraphics(dttChannelMouthsPlot_W2, ['../MATLAB export/Final/Channels/channelCounting/dttChannelMouthsCount_W2.0.png'], 'Resolution', 150);

% exportgraphics(dttChannelMouthsPlot_T0, ['../MATLAB export/Final/Channels/channelCounting/dttChannelMouthsCount_T0.0.png'], 'Resolution', 150);
% exportgraphics(dttChannelMouthsPlot_T1, ['../MATLAB export/Final/Channels/channelCounting/dttChannelMouthsCount_T1.0.png'], 'Resolution', 150);
% exportgraphics(dttChannelMouthsPlot_T2, ['../MATLAB export/Final/Channels/channelCounting/dttChannelMouthsCount_T2.0.png'], 'Resolution', 150);
% exportgraphics(dttChannelMouthsPlot_T4, ['../MATLAB export/Final/Channels/channelCounting/dttChannelMouthsCount_T4.0.png'], 'Resolution', 150);
% exportgraphics(dttChannelMouthsPlot_T6, ['../MATLAB export/Final/Channels/channelCounting/dttChannelMouthsCount_T6.0.png'], 'Resolution', 150);

%% PLOTS - CHANNEL BRANCHPOINTS
% W0.0T0.0
dttChannelBranchesPlot_W0T0 = figure(20001);
dttChannelBranchesPlot_W0T0.Position = [200 100 920 480];
clf reset
plot(tYears, W0T0.dttChannelActiveSkeletonNodesCount, 'kx-');
hold on
plot(tYears, (1 - W0T0.dttChannelActiveEulerNumber), 'k+--');
plot(tYears, W0T0.dttChannelActiveSkeletonNodesCount - (1 - W0T0.dttChannelActiveEulerNumber), 'kd:');
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 80])
ylabel('Number of channel network branchpoints [-]')
legend('Total', 'confluences', 'splits', 'location', 'northWest')

% W0.0T0.5
dttChannelBranchesPlot_W0T05 = figure(20002);
dttChannelBranchesPlot_W0T05.Position = [200 100 920 480];
clf reset
plot(tYears(2:end-1), W0T05.dttChannelActiveSkeletonNodesCount(2:end-1), 'kx-');
hold on
plot(tYears(2:end-1), (1 - W0T05.dttChannelActiveEulerNumber(2:end-1)), 'k+--');
plot(tYears(2:end-1), W0T05.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W0T05.dttChannelActiveEulerNumber(2:end-1)), 'kd:');
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 80])
ylabel('Number of channel network branchpoints [-]')
legend('Total', 'confluences', 'splits', 'location', 'northWest')

% W0.0T1.0
dttChannelBranchesPlot_W0T1 = figure(20003);
dttChannelBranchesPlot_W0T1.Position = [200 100 920 480];
clf reset
plot(tYears(2:end-1), W0T1.dttChannelActiveSkeletonNodesCount(2:end-1), 'kx-');
hold on
plot(tYears(2:end-1), (1 - W0T1.dttChannelActiveEulerNumber(2:end-1)), 'k+--');
plot(tYears(2:end-1), W0T1.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W0T1.dttChannelActiveEulerNumber(2:end-1)), 'kd:');
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 80])
ylabel('Number of channel network branchpoints [-]')
legend('Total', 'confluences', 'splits', 'location', 'northWest')

% W0.0T2.0
dttChannelBranchesPlot_W0T2 = figure(20004);
dttChannelBranchesPlot_W0T2.Position = [200 100 920 480];
clf reset
plot(tYears(2:end-1), W0T2.dttChannelActiveSkeletonNodesCount(2:end-1), 'kx-');
hold on
plot(tYears(2:end-1), (1 - W0T2.dttChannelActiveEulerNumber(2:end-1)), 'k+--');
plot(tYears(2:end-1), W0T2.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W0T2.dttChannelActiveEulerNumber(2:end-1)), 'kd:');
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 80])
ylabel('Number of channel network branchpoints [-]')
legend('Total', 'confluences', 'splits', 'location', 'northWest')

% W0.0T3.0
dttChannelBranchesPlot_W0T3 = figure(20005);
dttChannelBranchesPlot_W0T3.Position = [200 100 920 480];
clf reset
plot(tYears(2:end-1), W0T3.dttChannelActiveSkeletonNodesCount(2:end-1), 'kx-');
hold on
plot(tYears(2:end-1), (1 - W0T3.dttChannelActiveEulerNumber(2:end-1)), 'k+--');
plot(tYears(2:end-1), W0T3.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W0T3.dttChannelActiveEulerNumber(2:end-1)), 'kd:');
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 80])
ylabel('Number of channel network branchpoints [-]')
legend('Total', 'confluences', 'splits', 'location', 'northWest')

% W0.0T4.0
dttChannelBranchesPlot_W0T4 = figure(20006);
dttChannelBranchesPlot_W0T4.Position = [200 100 920 480];
clf reset
plot(tYears(2:end-1), W0T4.dttChannelActiveSkeletonNodesCount(2:end-1), 'kx-');
hold on
plot(tYears(2:end-1), (1 - W0T4.dttChannelActiveEulerNumber(2:end-1)), 'k+--');
plot(tYears(2:end-1), W0T4.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W0T4.dttChannelActiveEulerNumber(2:end-1)), 'kd:');
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 80])
ylabel('Number of channel network branchpoints [-]')
legend('Total', 'confluences', 'splits', 'location', 'northWest')

% W0.0T5.0
dttChannelBranchesPlot_W0T5 = figure(20007);
dttChannelBranchesPlot_W0T5.Position = [200 100 920 480];
clf reset
plot(tYears(2:end-1), W0T5.dttChannelActiveSkeletonNodesCount(2:end-1), 'kx-');
hold on
plot(tYears(2:end-1), (1 - W0T5.dttChannelActiveEulerNumber(2:end-1)), 'k+--');
plot(tYears(2:end-1), W0T5.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W0T5.dttChannelActiveEulerNumber(2:end-1)), 'kd:');
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 80])
ylabel('Number of channel network branchpoints [-]')
legend('Total', 'confluences', 'splits', 'location', 'northWest')

% W0.0T6.0
dttChannelBranchesPlot_W0T6 = figure(20008);
dttChannelBranchesPlot_W0T6.Position = [200 100 920 480];
clf reset
plot(tYears(2:end-1), W0T6.dttChannelActiveSkeletonNodesCount(2:end-1), 'kx-');
hold on
plot(tYears(2:end-1), (1 - W0T6.dttChannelActiveEulerNumber(2:end-1)), 'k+--');
plot(tYears(2:end-1), W0T6.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W0T6.dttChannelActiveEulerNumber(2:end-1)), 'kd:');
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 80])
ylabel('Number of channel network branchpoints [-]')
legend('Total', 'confluences', 'splits', 'location', 'northWest')

%%
% W0.4T0.0
dttChannelBranchesPlot_W04T0 = figure(20010);
dttChannelBranchesPlot_W04T0.Position = [200 100 920 480];
clf reset
plot(tYears, W04T0.dttChannelActiveSkeletonNodesCount, 'kx-');
hold on
plot(tYears, (1 - W04T0.dttChannelActiveEulerNumber), 'k+--');
plot(tYears, W04T0.dttChannelActiveSkeletonNodesCount - (1 - W04T0.dttChannelActiveEulerNumber), 'kd:');
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 80])
ylabel('Number of channel network branchpoints [-]')
legend('Total', 'confluences', 'splits', 'location', 'northWest')

% W0.4T1.0
dttChannelBranchesPlot_W04T1 = figure(20011);
dttChannelBranchesPlot_W04T1.Position = [200 100 920 480];
clf reset
plot(tYears(2:end-1), W04T1.dttChannelActiveSkeletonNodesCount(2:end-1), 'kx-');
hold on
plot(tYears(2:end-1), (1 - W04T1.dttChannelActiveEulerNumber(2:end-1)), 'k+--');
plot(tYears(2:end-1), W04T1.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W04T1.dttChannelActiveEulerNumber(2:end-1)), 'kd:');
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 80])
ylabel('Number of channel network branchpoints [-]')
legend('Total', 'confluences', 'splits', 'location', 'northWest')

% W0.4T2.0
dttChannelBranchesPlot_W04T2 = figure(20012);
dttChannelBranchesPlot_W04T2.Position = [200 100 920 480];
clf reset
plot(tYears(2:end-1), W04T2.dttChannelActiveSkeletonNodesCount(2:end-1), 'kx-');
hold on
plot(tYears(2:end-1), (1 - W04T2.dttChannelActiveEulerNumber(2:end-1)), 'k+--');
plot(tYears(2:end-1), W04T2.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W04T2.dttChannelActiveEulerNumber(2:end-1)), 'kd:');
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 80])
ylabel('Number of channel network branchpoints [-]')
legend('Total', 'confluences', 'splits', 'location', 'northWest')

% W0.4T4.0
dttChannelBranchesPlot_W04T4 = figure(20013);
dttChannelBranchesPlot_W04T4.Position = [200 100 920 480];
clf reset
plot(tYears(2:end-1), W04T4.dttChannelActiveSkeletonNodesCount(2:end-1), 'kx-');
hold on
plot(tYears(2:end-1), (1 - W04T4.dttChannelActiveEulerNumber(2:end-1)), 'k+--');
plot(tYears(2:end-1), W04T4.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W04T4.dttChannelActiveEulerNumber(2:end-1)), 'kd:');
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 80])
ylabel('Number of channel network branchpoints [-]')
legend('Total', 'confluences', 'splits', 'location', 'northWest')

% W0.4T6.0
dttChannelBranchesPlot_W04T6 = figure(20014);
dttChannelBranchesPlot_W04T6.Position = [200 100 920 480];
clf reset
plot(tYears(2:end-1), W04T6.dttChannelActiveSkeletonNodesCount(2:end-1), 'kx-');
hold on
plot(tYears(2:end-1), (1 - W04T6.dttChannelActiveEulerNumber(2:end-1)), 'k+--');
plot(tYears(2:end-1), W04T6.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W04T6.dttChannelActiveEulerNumber(2:end-1)), 'kd:');
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 80])
ylabel('Number of channel network branchpoints [-]')
legend('Total', 'confluences', 'splits', 'location', 'northWest')

%%
% W0.8T0.0
dttChannelBranchesPlot_W08T0 = figure(20020);
dttChannelBranchesPlot_W08T0.Position = [200 100 920 480];
clf reset
plot(tYears, W08T0.dttChannelActiveSkeletonNodesCount, 'kx-');
hold on
plot(tYears, (1 - W08T0.dttChannelActiveEulerNumber), 'k+--');
plot(tYears, W08T0.dttChannelActiveSkeletonNodesCount - (1 - W08T0.dttChannelActiveEulerNumber), 'kd:');
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 80])
ylabel('Number of channel network branchpoints [-]')
legend('Total', 'confluences', 'splits', 'location', 'northWest')

% W0.8T1.0
dttChannelBranchesPlot_W08T1 = figure(20021);
dttChannelBranchesPlot_W08T1.Position = [200 100 920 480];
clf reset
plot(tYears(2:end-1), W08T1.dttChannelActiveSkeletonNodesCount(2:end-1), 'kx-');
hold on
plot(tYears(2:end-1), (1 - W08T1.dttChannelActiveEulerNumber(2:end-1)), 'k+--');
plot(tYears(2:end-1), W08T1.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W08T1.dttChannelActiveEulerNumber(2:end-1)), 'kd:');
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 80])
ylabel('Number of channel network branchpoints [-]')
legend('Total', 'confluences', 'splits', 'location', 'northWest')

% W0.8T2.0
dttChannelBranchesPlot_W08T2 = figure(20022);
dttChannelBranchesPlot_W08T2.Position = [200 100 920 480];
clf reset
plot(tYears(2:end-1), W08T2.dttChannelActiveSkeletonNodesCount(2:end-1), 'kx-');
hold on
plot(tYears(2:end-1), (1 - W08T2.dttChannelActiveEulerNumber(2:end-1)), 'k+--');
plot(tYears(2:end-1), W08T2.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W08T2.dttChannelActiveEulerNumber(2:end-1)), 'kd:');
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 80])
ylabel('Number of channel network branchpoints [-]')
legend('Total', 'confluences', 'splits', 'location', 'northWest')

% W0.8T4.0
dttChannelBranchesPlot_W08T4 = figure(20023);
dttChannelBranchesPlot_W08T4.Position = [200 100 920 480];
clf reset
plot(tYears(2:end-1), W08T4.dttChannelActiveSkeletonNodesCount(2:end-1), 'kx-');
hold on
plot(tYears(2:end-1), (1 - W08T4.dttChannelActiveEulerNumber(2:end-1)), 'k+--');
plot(tYears(2:end-1), W08T4.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W08T4.dttChannelActiveEulerNumber(2:end-1)), 'kd:');
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 80])
ylabel('Number of channel network branchpoints [-]')
legend('Total', 'confluences', 'splits', 'location', 'northWest')

% W0.8T6.0
dttChannelBranchesPlot_W08T6 = figure(20024);
dttChannelBranchesPlot_W08T6.Position = [200 100 920 480];
clf reset
plot(tYears(2:end-1), W08T6.dttChannelActiveSkeletonNodesCount(2:end-1), 'kx-');
hold on
plot(tYears(2:end-1), (1 - W08T6.dttChannelActiveEulerNumber(2:end-1)), 'k+--');
plot(tYears(2:end-1), W08T6.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W08T6.dttChannelActiveEulerNumber(2:end-1)), 'kd:');
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 80])
ylabel('Number of channel network branchpoints [-]')
legend('Total', 'confluences', 'splits', 'location', 'northWest')

%%
% W1.2T0.0
dttChannelBranchesPlot_W12T0 = figure(20030);
dttChannelBranchesPlot_W12T0.Position = [200 100 920 480];
clf reset
plot(tYears, W12T0.dttChannelActiveSkeletonNodesCount, 'kx-');
hold on
plot(tYears, (1 - W12T0.dttChannelActiveEulerNumber), 'k+--');
plot(tYears, W12T0.dttChannelActiveSkeletonNodesCount - (1 - W12T0.dttChannelActiveEulerNumber), 'kd:');
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 80])
ylabel('Number of channel network branchpoints [-]')
legend('Total', 'confluences', 'splits', 'location', 'northWest')

% W1.2T1.0
dttChannelBranchesPlot_W12T1 = figure(20031);
dttChannelBranchesPlot_W12T1.Position = [200 100 920 480];
clf reset
plot(tYears(2:end-1), W12T1.dttChannelActiveSkeletonNodesCount(2:end-1), 'kx-');
hold on
plot(tYears(2:end-1), (1 - W12T1.dttChannelActiveEulerNumber(2:end-1)), 'k+--');
plot(tYears(2:end-1), W12T1.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W12T1.dttChannelActiveEulerNumber(2:end-1)), 'kd:');
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 80])
ylabel('Number of channel network branchpoints [-]')
legend('Total', 'confluences', 'splits', 'location', 'northWest')

% W1.2T2.0
dttChannelBranchesPlot_W12T2 = figure(20032);
dttChannelBranchesPlot_W12T2.Position = [200 100 920 480];
clf reset
plot(tYears(2:end-1), W12T2.dttChannelActiveSkeletonNodesCount(2:end-1), 'kx-');
hold on
plot(tYears(2:end-1), (1 - W12T2.dttChannelActiveEulerNumber(2:end-1)), 'k+--');
plot(tYears(2:end-1), W12T2.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W12T2.dttChannelActiveEulerNumber(2:end-1)), 'kd:');
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 80])
ylabel('Number of channel network branchpoints [-]')
legend('Total', 'confluences', 'splits', 'location', 'northWest')

% W1.2T4.0
dttChannelBranchesPlot_W12T4 = figure(20033);
dttChannelBranchesPlot_W12T4.Position = [200 100 920 480];
clf reset
plot(tYears(2:end-1), W12T4.dttChannelActiveSkeletonNodesCount(2:end-1), 'kx-');
hold on
plot(tYears(2:end-1), (1 - W12T4.dttChannelActiveEulerNumber(2:end-1)), 'k+--');
plot(tYears(2:end-1), W12T4.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W12T4.dttChannelActiveEulerNumber(2:end-1)), 'kd:');
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 80])
ylabel('Number of channel network branchpoints [-]')
legend('Total', 'confluences', 'splits', 'location', 'northWest')

% W1.2T6.0
dttChannelBranchesPlot_W12T6 = figure(20034);
dttChannelBranchesPlot_W12T6.Position = [200 100 920 480];
clf reset
plot(tYears(2:end-1), W12T6.dttChannelActiveSkeletonNodesCount(2:end-1), 'kx-');
hold on
plot(tYears(2:end-1), (1 - W12T6.dttChannelActiveEulerNumber(2:end-1)), 'k+--');
plot(tYears(2:end-1), W12T6.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W12T6.dttChannelActiveEulerNumber(2:end-1)), 'kd:');
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 80])
ylabel('Number of channel network branchpoints [-]')
legend('Total', 'confluences', 'splits', 'location', 'northWest')

%%
% W1.6T0.0
dttChannelBranchesPlot_W16T0 = figure(20040);
dttChannelBranchesPlot_W16T0.Position = [200 100 920 480];
clf reset
plot(tYears, W16T0.dttChannelActiveSkeletonNodesCount, 'kx-');
hold on
plot(tYears, (1 - W16T0.dttChannelActiveEulerNumber), 'k+--');
plot(tYears, W16T0.dttChannelActiveSkeletonNodesCount - (1 - W16T0.dttChannelActiveEulerNumber), 'kd:');
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 80])
ylabel('Number of channel network branchpoints [-]')
legend('Total', 'confluences', 'splits', 'location', 'northWest')

% W1.6T1.0
dttChannelBranchesPlot_W16T1 = figure(20041);
dttChannelBranchesPlot_W16T1.Position = [200 100 920 480];
clf reset
plot(tYears(2:end-1), W16T1.dttChannelActiveSkeletonNodesCount(2:end-1), 'kx-');
hold on
plot(tYears(2:end-1), (1 - W16T1.dttChannelActiveEulerNumber(2:end-1)), 'k+--');
plot(tYears(2:end-1), W16T1.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W16T1.dttChannelActiveEulerNumber(2:end-1)), 'kd:');
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 80])
ylabel('Number of channel network branchpoints [-]')
legend('Total', 'confluences', 'splits', 'location', 'northWest')

% W1.6T2.0
dttChannelBranchesPlot_W16T2 = figure(20042);
dttChannelBranchesPlot_W16T2.Position = [200 100 920 480];
clf reset
plot(tYears(2:end-1), W16T2.dttChannelActiveSkeletonNodesCount(2:end-1), 'kx-');
hold on
plot(tYears(2:end-1), (1 - W16T2.dttChannelActiveEulerNumber(2:end-1)), 'k+--');
plot(tYears(2:end-1), W16T2.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W16T2.dttChannelActiveEulerNumber(2:end-1)), 'kd:');
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 80])
ylabel('Number of channel network branchpoints [-]')
legend('Total', 'confluences', 'splits', 'location', 'northWest')

% W1.6T4.0
dttChannelBranchesPlot_W16T4 = figure(20043);
dttChannelBranchesPlot_W16T4.Position = [200 100 920 480];
clf reset
plot(tYears(2:end-1), W16T4.dttChannelActiveSkeletonNodesCount(2:end-1), 'kx-');
hold on
plot(tYears(2:end-1), (1 - W16T4.dttChannelActiveEulerNumber(2:end-1)), 'k+--');
plot(tYears(2:end-1), W16T4.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W16T4.dttChannelActiveEulerNumber(2:end-1)), 'kd:');
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 80])
ylabel('Number of channel network branchpoints [-]')
legend('Total', 'confluences', 'splits', 'location', 'northWest')

% W1.6T6.0
dttChannelBranchesPlot_W16T6 = figure(20044);
dttChannelBranchesPlot_W16T6.Position = [200 100 920 480];
clf reset
plot(tYears(2:end-1), W16T6.dttChannelActiveSkeletonNodesCount(2:end-1), 'kx-');
hold on
plot(tYears(2:end-1), (1 - W16T6.dttChannelActiveEulerNumber(2:end-1)), 'k+--');
plot(tYears(2:end-1), W16T6.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W16T6.dttChannelActiveEulerNumber(2:end-1)), 'kd:');
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 80])
ylabel('Number of channel network branchpoints [-]')
legend('Total', 'confluences', 'splits', 'location', 'northWest')

%%
% W2.0T0.0
dttChannelBranchesPlot_W2T0 = figure(20050);
dttChannelBranchesPlot_W2T0.Position = [200 100 920 480];
clf reset
plot(tYears, W2T0.dttChannelActiveSkeletonNodesCount, 'kx-');
hold on
plot(tYears, (1 - W2T0.dttChannelActiveEulerNumber), 'k+--');
plot(tYears, W2T0.dttChannelActiveSkeletonNodesCount - (1 - W2T0.dttChannelActiveEulerNumber), 'kd:');
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 80])
ylabel('Number of channel network branchpoints [-]')
legend('Total', 'confluences', 'splits', 'location', 'northWest')

% W2.0T1.0
dttChannelBranchesPlot_W2T1 = figure(20051);
dttChannelBranchesPlot_W2T1.Position = [200 100 920 480];
clf reset
plot(tYears(2:end-1), W2T1.dttChannelActiveSkeletonNodesCount(2:end-1), 'kx-');
hold on
plot(tYears(2:end-1), (1 - W2T1.dttChannelActiveEulerNumber(2:end-1)), 'k+--');
plot(tYears(2:end-1), W2T1.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W2T1.dttChannelActiveEulerNumber(2:end-1)), 'kd:');
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 80])
ylabel('Number of channel network branchpoints [-]')
legend('Total', 'confluences', 'splits', 'location', 'northWest')

% W2.0T2.0
dttChannelBranchesPlot_W2T2 = figure(20052);
dttChannelBranchesPlot_W2T2.Position = [200 100 920 480];
clf reset
plot(tYears(2:end-1), W2T2.dttChannelActiveSkeletonNodesCount(2:end-1), 'kx-');
hold on
plot(tYears(2:end-1), (1 - W2T2.dttChannelActiveEulerNumber(2:end-1)), 'k+--');
plot(tYears(2:end-1), W2T2.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W2T2.dttChannelActiveEulerNumber(2:end-1)), 'kd:');
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 80])
ylabel('Number of channel network branchpoints [-]')
legend('Total', 'confluences', 'splits', 'location', 'northWest')

% W2.0T4.0
dttChannelBranchesPlot_W2T4 = figure(20053);
dttChannelBranchesPlot_W2T4.Position = [200 100 920 480];
clf reset
plot(tYears(2:end-1), W2T4.dttChannelActiveSkeletonNodesCount(2:end-1), 'kx-');
hold on
plot(tYears(2:end-1), (1 - W2T4.dttChannelActiveEulerNumber(2:end-1)), 'k+--');
plot(tYears(2:end-1), W2T4.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W2T4.dttChannelActiveEulerNumber(2:end-1)), 'kd:');
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 80])
ylabel('Number of channel network branchpoints [-]')
legend('Total', 'confluences', 'splits', 'location', 'northWest')

% W2.0T6.0
dttChannelBranchesPlot_W2T6 = figure(20054);
dttChannelBranchesPlot_W2T6.Position = [200 100 920 480];
clf reset
plot(tYears(2:end-1), W2T6.dttChannelActiveSkeletonNodesCount(2:end-1), 'kx-');
hold on
plot(tYears(2:end-1), (1 - W2T6.dttChannelActiveEulerNumber(2:end-1)), 'k+--');
plot(tYears(2:end-1), W2T6.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W2T6.dttChannelActiveEulerNumber(2:end-1)), 'kd:');
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 80])
ylabel('Number of channel network branchpoints [-]')
legend('Total', 'confluences', 'splits', 'location', 'northWest')

%% EXPORT INDIVIDUAL BRANCHPOINT PLOTS
% exportgraphics(dttChannelBranchesPlot_W0T0, ['../MATLAB export/Final/Channels/channelCounting/dttChannelBranches_W0.0T0.0.png'], 'Resolution', 150);
% exportgraphics(dttChannelBranchesPlot_W0T05, ['../MATLAB export/Final/Channels/channelCounting/dttChannelBranches_W0.0T0.5.png'], 'Resolution', 150);
% exportgraphics(dttChannelBranchesPlot_W0T1, ['../MATLAB export/Final/Channels/channelCounting/dttChannelBranches_W0.0T1.0.png'], 'Resolution', 150);
% exportgraphics(dttChannelBranchesPlot_W0T2, ['../MATLAB export/Final/Channels/channelCounting/dttChannelBranches_W0.0T2.0.png'], 'Resolution', 150);
% exportgraphics(dttChannelBranchesPlot_W0T3, ['../MATLAB export/Final/Channels/channelCounting/dttChannelBranches_W0.0T3.0.png'], 'Resolution', 150);
% exportgraphics(dttChannelBranchesPlot_W0T4, ['../MATLAB export/Final/Channels/channelCounting/dttChannelBranches_W0.0T4.0.png'], 'Resolution', 150);
% exportgraphics(dttChannelBranchesPlot_W0T5, ['../MATLAB export/Final/Channels/channelCounting/dttChannelBranches_W0.0T5.0.png'], 'Resolution', 150);
% exportgraphics(dttChannelBranchesPlot_W0T6, ['../MATLAB export/Final/Channels/channelCounting/dttChannelBranches_W0.0T6.0.png'], 'Resolution', 150);

% exportgraphics(dttChannelBranchesPlot_W04T0, ['../MATLAB export/Final/Channels/channelCounting/dttChannelBranches_W0.4T0.0.png'], 'Resolution', 150);
% exportgraphics(dttChannelBranchesPlot_W04T1, ['../MATLAB export/Final/Channels/channelCounting/dttChannelBranches_W0.4T1.0.png'], 'Resolution', 150);
% exportgraphics(dttChannelBranchesPlot_W04T2, ['../MATLAB export/Final/Channels/channelCounting/dttChannelBranches_W0.4T2.0.png'], 'Resolution', 150);
% exportgraphics(dttChannelBranchesPlot_W04T4, ['../MATLAB export/Final/Channels/channelCounting/dttChannelBranches_W0.4T4.0.png'], 'Resolution', 150);
% exportgraphics(dttChannelBranchesPlot_W04T6, ['../MATLAB export/Final/Channels/channelCounting/dttChannelBranches_W0.4T6.0.png'], 'Resolution', 150);

% exportgraphics(dttChannelBranchesPlot_W08T0, ['../MATLAB export/Final/Channels/channelCounting/dttChannelBranches_W0.8T0.0.png'], 'Resolution', 150);
% exportgraphics(dttChannelBranchesPlot_W08T1, ['../MATLAB export/Final/Channels/channelCounting/dttChannelBranches_W0.8T1.0.png'], 'Resolution', 150);
% exportgraphics(dttChannelBranchesPlot_W08T2, ['../MATLAB export/Final/Channels/channelCounting/dttChannelBranches_W0.8T2.0.png'], 'Resolution', 150);
% exportgraphics(dttChannelBranchesPlot_W08T4, ['../MATLAB export/Final/Channels/channelCounting/dttChannelBranches_W0.8T4.0.png'], 'Resolution', 150);
% exportgraphics(dttChannelBranchesPlot_W08T6, ['../MATLAB export/Final/Channels/channelCounting/dttChannelBranches_W0.8T6.0.png'], 'Resolution', 150);

% exportgraphics(dttChannelBranchesPlot_W12T0, ['../MATLAB export/Final/Channels/channelCounting/dttChannelBranches_W1.2T0.0.png'], 'Resolution', 150);
% exportgraphics(dttChannelBranchesPlot_W12T1, ['../MATLAB export/Final/Channels/channelCounting/dttChannelBranches_W1.2T1.0.png'], 'Resolution', 150);
% exportgraphics(dttChannelBranchesPlot_W12T2, ['../MATLAB export/Final/Channels/channelCounting/dttChannelBranches_W1.2T2.0.png'], 'Resolution', 150);
% exportgraphics(dttChannelBranchesPlot_W12T4, ['../MATLAB export/Final/Channels/channelCounting/dttChannelBranches_W1.2T4.0.png'], 'Resolution', 150);
% exportgraphics(dttChannelBranchesPlot_W12T6, ['../MATLAB export/Final/Channels/channelCounting/dttChannelBranches_W1.2T6.0.png'], 'Resolution', 150);

% exportgraphics(dttChannelBranchesPlot_W16T0, ['../MATLAB export/Final/Channels/channelCounting/dttChannelBranches_W1.6T0.0.png'], 'Resolution', 150);
% exportgraphics(dttChannelBranchesPlot_W16T1, ['../MATLAB export/Final/Channels/channelCounting/dttChannelBranches_W1.6T1.0.png'], 'Resolution', 150);
% exportgraphics(dttChannelBranchesPlot_W16T2, ['../MATLAB export/Final/Channels/channelCounting/dttChannelBranches_W1.6T2.0.png'], 'Resolution', 150);
% exportgraphics(dttChannelBranchesPlot_W16T4, ['../MATLAB export/Final/Channels/channelCounting/dttChannelBranches_W1.6T4.0.png'], 'Resolution', 150);
% exportgraphics(dttChannelBranchesPlot_W16T6, ['../MATLAB export/Final/Channels/channelCounting/dttChannelBranches_W1.6T6.0.png'], 'Resolution', 150);

% exportgraphics(dttChannelBranchesPlot_W2T0, ['../MATLAB export/Final/Channels/channelCounting/dttChannelBranches_W2.0T0.0.png'], 'Resolution', 150);
% exportgraphics(dttChannelBranchesPlot_W2T1, ['../MATLAB export/Final/Channels/channelCounting/dttChannelBranches_W2.0T1.0.png'], 'Resolution', 150);
% exportgraphics(dttChannelBranchesPlot_W2T2, ['../MATLAB export/Final/Channels/channelCounting/dttChannelBranches_W2.0T2.0.png'], 'Resolution', 150);
% exportgraphics(dttChannelBranchesPlot_W2T4, ['../MATLAB export/Final/Channels/channelCounting/dttChannelBranches_W2.0T4.0.png'], 'Resolution', 150);
% exportgraphics(dttChannelBranchesPlot_W2T6, ['../MATLAB export/Final/Channels/channelCounting/dttChannelBranches_W2.0T6.0.png'], 'Resolution', 150);

%%
% W0.0
dttChannelBranchesPlot_W0 = figure(30000);
dttChannelBranchesPlot_W0.Position = [200 100 1280 800];
clf reset
plot(tYears, W0T0.dttChannelActiveSkeletonNodesCount, 'kx');
hold on
plot(tYears, movmean(W0T0.dttChannelActiveSkeletonNodesCount, range), 'k:')
plot(tYears(2:end-1), W0T05.dttChannelActiveSkeletonNodesCount(2:end-1), '^', 'color', '#0072BD');
plot(tYears(2:end-1), movmean(W0T05.dttChannelActiveSkeletonNodesCount(2:end-1), range), ':', 'color', '#0072BD');
plot(tYears(2:end-1), W0T1.dttChannelActiveSkeletonNodesCount(2:end-1), 'ro');
plot(tYears(2:end-1), movmean(W0T1.dttChannelActiveSkeletonNodesCount(2:end-1), range), 'r:')
plot(tYears(2:end-1), W0T2.dttChannelActiveSkeletonNodesCount(2:end-1), 'g.');
plot(tYears(2:end-1), movmean(W0T2.dttChannelActiveSkeletonNodesCount(2:end-1), range), 'g:')
plot(tYears(2:end-1), W0T3.dttChannelActiveSkeletonNodesCount(2:end-1), 's', 'color', [0.2 0.8 0.8]);
plot(tYears(2:end-1), movmean(W0T3.dttChannelActiveSkeletonNodesCount(2:end-1), range), ':', 'color', [0.2 0.8 0.8]);
plot(tYears(2:end-1), W0T4.dttChannelActiveSkeletonNodesCount(2:end-1), 'bd');
plot(tYears(2:end-1), movmean(W0T4.dttChannelActiveSkeletonNodesCount(2:end-1), range), 'b:')
plot(tYears(2:end-1), W0T5.dttChannelActiveSkeletonNodesCount(2:end-1), '<', 'color', '#EDB120');
plot(tYears(2:end-1), movmean(W0T5.dttChannelActiveSkeletonNodesCount(2:end-1), range), ':', 'color', '#EDB120');
plot(tYears(2:end-1), W0T6.dttChannelActiveSkeletonNodesCount(2:end-1), 'm+');
plot(tYears(2:end-1), movmean(W0T6.dttChannelActiveSkeletonNodesCount(2:end-1), range), 'm:')
legend('W0.0T0.0', '', 'W0.0T0.5', '', 'W0.0T1.0', '', 'W0.0T2.0', '', 'W0.0T3.0', '', 'W0.0T4.0', '', 'W0.0T5.0', '', 'W0.0T6.0', '', 'Location', 'Northwest', 'numColumns', 2)
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 80])
ylabel('Number of channel network branchpoints [-]')

% W0.4
dttChannelBranchesPlot_W04 = figure(30001);
dttChannelBranchesPlot_W04.Position = [200 100 1280 800];
clf reset
plot(tYears, W04T0.dttChannelActiveSkeletonNodesCount, 'kx');
hold on
plot(tYears, movmean(W04T0.dttChannelActiveSkeletonNodesCount, range), 'k:')
plot(tYears(2:end-1), W04T1.dttChannelActiveSkeletonNodesCount(2:end-1), 'ro');
plot(tYears(2:end-1), movmean(W04T1.dttChannelActiveSkeletonNodesCount(2:end-1), range), 'r:')
plot(tYears(2:end-1), W04T2.dttChannelActiveSkeletonNodesCount(2:end-1), 'g.');
plot(tYears(2:end-1), movmean(W04T2.dttChannelActiveSkeletonNodesCount(2:end-1), range), 'g:')
plot(tYears(2:end-1), W04T4.dttChannelActiveSkeletonNodesCount(2:end-1), 'bd');
plot(tYears(2:end-1), movmean(W04T4.dttChannelActiveSkeletonNodesCount(2:end-1), range), 'b:')
plot(tYears(2:end-1), W04T6.dttChannelActiveSkeletonNodesCount(2:end-1), 'm+');
plot(tYears(2:end-1), movmean(W04T6.dttChannelActiveSkeletonNodesCount(2:end-1), range), 'm:')
legend('W0.4T0.0', '', 'W0.4T1.0', '', 'W0.4T2.0', '', 'W0.4T4.0', '', 'W0.4T6.0', '', 'Location', 'Northwest', 'numColumns', 2)
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 80])
ylabel('Number of channel network branchpoints [-]')

% W0.8
dttChannelBranchesPlot_W08 = figure(30002);
dttChannelBranchesPlot_W08.Position = [200 100 1280 800];
clf reset
plot(tYears, W08T0.dttChannelActiveSkeletonNodesCount, 'kx');
hold on
plot(tYears, movmean(W08T0.dttChannelActiveSkeletonNodesCount, range), 'k:')
plot(tYears(2:end-1), W08T1.dttChannelActiveSkeletonNodesCount(2:end-1), 'ro');
plot(tYears(2:end-1), movmean(W08T1.dttChannelActiveSkeletonNodesCount(2:end-1), range), 'r:')
plot(tYears(2:end-1), W08T2.dttChannelActiveSkeletonNodesCount(2:end-1), 'g.');
plot(tYears(2:end-1), movmean(W08T2.dttChannelActiveSkeletonNodesCount(2:end-1), range), 'g:')
plot(tYears(2:end-1), W08T4.dttChannelActiveSkeletonNodesCount(2:end-1), 'bd');
plot(tYears(2:end-1), movmean(W08T4.dttChannelActiveSkeletonNodesCount(2:end-1), range), 'b:')
plot(tYears(2:end-1), W08T6.dttChannelActiveSkeletonNodesCount(2:end-1), 'm+');
plot(tYears(2:end-1), movmean(W08T6.dttChannelActiveSkeletonNodesCount(2:end-1), range), 'm:')
legend('W0.8T0.0', '', 'W0.8T1.0', '', 'W0.8T2.0', '', 'W0.8T4.0', '', 'W0.8T6.0', '', 'Location', 'Northwest', 'numColumns', 2)
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 80])
ylabel('Number of channel network branchpoints [-]')

% W1.2
dttChannelBranchesPlot_W12 = figure(30003);
dttChannelBranchesPlot_W12.Position = [200 100 1280 800];
clf reset
plot(tYears, W12T0.dttChannelActiveSkeletonNodesCount, 'kx');
hold on
plot(tYears, movmean(W12T0.dttChannelActiveSkeletonNodesCount, range), 'k:')
plot(tYears(2:end-1), W12T1.dttChannelActiveSkeletonNodesCount(2:end-1), 'ro');
plot(tYears(2:end-1), movmean(W12T1.dttChannelActiveSkeletonNodesCount(2:end-1), range), 'r:')
plot(tYears(2:end-1), W12T2.dttChannelActiveSkeletonNodesCount(2:end-1), 'g.');
plot(tYears(2:end-1), movmean(W12T2.dttChannelActiveSkeletonNodesCount(2:end-1), range), 'g:')
plot(tYears(2:end-1), W12T4.dttChannelActiveSkeletonNodesCount(2:end-1), 'bd');
plot(tYears(2:end-1), movmean(W12T4.dttChannelActiveSkeletonNodesCount(2:end-1), range), 'b:')
plot(tYears(2:end-1), W12T6.dttChannelActiveSkeletonNodesCount(2:end-1), 'm+');
plot(tYears(2:end-1), movmean(W12T6.dttChannelActiveSkeletonNodesCount(2:end-1), range), 'm:')
legend('W1.2T0.0', '', 'W1.2T1.0', '', 'W1.2T2.0', '', 'W1.2T4.0', '', 'W1.2T6.0', '', 'Location', 'Northwest', 'numColumns', 2)
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 80])
ylabel('Number of channel network branchpoints [-]')

% W1.6
dttChannelBranchesPlot_W16 = figure(30004);
dttChannelBranchesPlot_W16.Position = [200 100 1280 800];
clf reset
plot(tYears, W16T0.dttChannelActiveSkeletonNodesCount, 'kx');
hold on
plot(tYears, movmean(W16T0.dttChannelActiveSkeletonNodesCount, range), 'k:')
plot(tYears(2:end-1), W16T1.dttChannelActiveSkeletonNodesCount(2:end-1), 'ro');
plot(tYears(2:end-1), movmean(W16T1.dttChannelActiveSkeletonNodesCount(2:end-1), range), 'r:')
plot(tYears(2:end-1), W16T2.dttChannelActiveSkeletonNodesCount(2:end-1), 'g.');
plot(tYears(2:end-1), movmean(W16T2.dttChannelActiveSkeletonNodesCount(2:end-1), range), 'g:')
plot(tYears(2:end-1), W16T4.dttChannelActiveSkeletonNodesCount(2:end-1), 'bd');
plot(tYears(2:end-1), movmean(W16T4.dttChannelActiveSkeletonNodesCount(2:end-1), range), 'b:')
plot(tYears(2:end-1), W16T6.dttChannelActiveSkeletonNodesCount(2:end-1), 'm+');
plot(tYears(2:end-1), movmean(W16T6.dttChannelActiveSkeletonNodesCount(2:end-1), range), 'm:')
legend('W1.6T0.0', '', 'W1.6T1.0', '', 'W1.6T2.0', '', 'W1.6T4.0', '', 'W1.6T6.0', '', 'Location', 'Northwest', 'numColumns', 2)
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 80])
ylabel('Number of channel network branchpoints [-]')

% W2.0
dttChannelBranchesPlot_W2 = figure(30005);
dttChannelBranchesPlot_W2.Position = [200 100 1280 800];
clf reset
plot(tYears, W2T0.dttChannelActiveSkeletonNodesCount, 'kx');
hold on
plot(tYears, movmean(W2T0.dttChannelActiveSkeletonNodesCount, range), 'k:')
plot(tYears(2:end-1), W2T1.dttChannelActiveSkeletonNodesCount(2:end-1), 'ro');
plot(tYears(2:end-1), movmean(W2T1.dttChannelActiveSkeletonNodesCount(2:end-1), range), 'r:')
plot(tYears(2:end-1), W2T2.dttChannelActiveSkeletonNodesCount(2:end-1), 'g.');
plot(tYears(2:end-1), movmean(W2T2.dttChannelActiveSkeletonNodesCount(2:end-1), range), 'g:')
plot(tYears(2:end-1), W2T4.dttChannelActiveSkeletonNodesCount(2:end-1), 'bd');
plot(tYears(2:end-1), movmean(W2T4.dttChannelActiveSkeletonNodesCount(2:end-1), range), 'b:')
plot(tYears(2:end-1), W2T6.dttChannelActiveSkeletonNodesCount(2:end-1), 'm+');
plot(tYears(2:end-1), movmean(W2T6.dttChannelActiveSkeletonNodesCount(2:end-1), range), 'm:')
legend('W2.0T0.0', '', 'W2.0T1.0', '', 'W2.0T2.0', '', 'W2.0T4.0', '', 'W2.0T6.0', '', 'Location', 'Northwest', 'numColumns', 2)
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 80])
ylabel('Number of channel network branchpoints [-]')

%%
% T0.0
dttChannelBranchesPlot_T0 = figure(40000);
dttChannelBranchesPlot_T0.Position = [200 100 1280 800];
clf reset
plot(tYears, W0T0.dttChannelActiveSkeletonNodesCount, 'kx');
hold on
plot(tYears, movmean(W0T0.dttChannelActiveSkeletonNodesCount, range), 'k:')
plot(tYears, W04T0.dttChannelActiveSkeletonNodesCount, 'ro');
plot(tYears, movmean(W04T0.dttChannelActiveSkeletonNodesCount, range), 'r:')
plot(tYears, W08T0.dttChannelActiveSkeletonNodesCount, 'g.');
plot(tYears, movmean(W08T0.dttChannelActiveSkeletonNodesCount, range), 'g:')
plot(tYears, W12T0.dttChannelActiveSkeletonNodesCount, 'bd');
plot(tYears, movmean(W12T0.dttChannelActiveSkeletonNodesCount, range), 'b:')
plot(tYears, W16T0.dttChannelActiveSkeletonNodesCount, '<', 'color', '#EDB120');
plot(tYears, movmean(W16T0.dttChannelActiveSkeletonNodesCount, range), ':', 'color', '#EDB120');
plot(tYears, W2T0.dttChannelActiveSkeletonNodesCount, 'm+');
plot(tYears, movmean(W2T0.dttChannelActiveSkeletonNodesCount, range), 'm:')
legend('W0.0T0.0', '', 'W0.4T0.0', '', 'W0.8T0.0', '', 'W1.2T0.0', '', 'W1.6T0.0', '', 'W2.0T0.0', '', 'Location', 'Northwest', 'numColumns', 2)
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 80])
ylabel('Number of channel network branchpoints [-]')

% T1.0
dttChannelBranchesPlot_T1 = figure(40001);
dttChannelBranchesPlot_T1.Position = [200 100 1280 800];
clf reset
plot(tYears, W0T1.dttChannelActiveSkeletonNodesCount, 'kx');
hold on
plot(tYears, movmean(W0T1.dttChannelActiveSkeletonNodesCount, range), 'k:')
plot(tYears(2:end-1), W04T1.dttChannelActiveSkeletonNodesCount(2:end-1), 'ro');
plot(tYears(2:end-1), movmean(W04T1.dttChannelActiveSkeletonNodesCount(2:end-1), range), 'r:')
plot(tYears(2:end-1), W08T1.dttChannelActiveSkeletonNodesCount(2:end-1), 'g.');
plot(tYears(2:end-1), movmean(W08T1.dttChannelActiveSkeletonNodesCount(2:end-1), range), 'g:')
plot(tYears(2:end-1), W12T1.dttChannelActiveSkeletonNodesCount(2:end-1), 'bd');
plot(tYears(2:end-1), movmean(W12T1.dttChannelActiveSkeletonNodesCount(2:end-1), range), 'b:')
plot(tYears(2:end-1), W16T1.dttChannelActiveSkeletonNodesCount(2:end-1), '<', 'color', '#EDB120');
plot(tYears(2:end-1), movmean(W16T1.dttChannelActiveSkeletonNodesCount(2:end-1), range), ':', 'color', '#EDB120');
plot(tYears(2:end-1), W2T1.dttChannelActiveSkeletonNodesCount(2:end-1), 'm+');
plot(tYears(2:end-1), movmean(W2T1.dttChannelActiveSkeletonNodesCount(2:end-1), range), 'm:')
legend('W0.0T1.0', '', 'W0.4T1.0', '', 'W0.8T1.0', '', 'W1.2T1.0', '', 'W1.6T1.0', '', 'W2.0T1.0', '', 'Location', 'Northwest', 'numColumns', 2)
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 80])
ylabel('Number of channel network branchpoints [-]')

% T2.0
dttChannelBranchesPlot_T2 = figure(40002);
dttChannelBranchesPlot_T2.Position = [200 100 1280 800];
clf reset
plot(tYears, W0T2.dttChannelActiveSkeletonNodesCount, 'kx');
hold on
plot(tYears, movmean(W0T2.dttChannelActiveSkeletonNodesCount, range), 'k:')
plot(tYears(2:end-1), W04T2.dttChannelActiveSkeletonNodesCount(2:end-1), 'ro');
plot(tYears(2:end-1), movmean(W04T2.dttChannelActiveSkeletonNodesCount(2:end-1), range), 'r:')
plot(tYears(2:end-1), W08T2.dttChannelActiveSkeletonNodesCount(2:end-1), 'g.');
plot(tYears(2:end-1), movmean(W08T2.dttChannelActiveSkeletonNodesCount(2:end-1), range), 'g:')
plot(tYears(2:end-1), W12T2.dttChannelActiveSkeletonNodesCount(2:end-1), 'bd');
plot(tYears(2:end-1), movmean(W12T2.dttChannelActiveSkeletonNodesCount(2:end-1), range), 'b:')
plot(tYears(2:end-1), W16T2.dttChannelActiveSkeletonNodesCount(2:end-1), '<', 'color', '#EDB120');
plot(tYears(2:end-1), movmean(W16T2.dttChannelActiveSkeletonNodesCount(2:end-1), range), ':', 'color', '#EDB120');
plot(tYears(2:end-1), W2T2.dttChannelActiveSkeletonNodesCount(2:end-1), 'm+');
plot(tYears(2:end-1), movmean(W2T2.dttChannelActiveSkeletonNodesCount(2:end-1), range), 'm:')
legend('W0.0T2.0', '', 'W0.4T2.0', '', 'W0.8T2.0', '', 'W1.2T2.0', '', 'W1.6T2.0', '', 'W2.0T2.0', '', 'Location', 'Northwest', 'numColumns', 2)
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 80])
ylabel('Number of channel network branchpoints [-]')

% T4.0
dttChannelBranchesPlot_T4 = figure(40003);
dttChannelBranchesPlot_T4.Position = [200 100 1280 800];
clf reset
plot(tYears, W0T4.dttChannelActiveSkeletonNodesCount, 'kx');
hold on
plot(tYears, movmean(W0T4.dttChannelActiveSkeletonNodesCount, range), 'k:')
plot(tYears(2:end-1), W04T4.dttChannelActiveSkeletonNodesCount(2:end-1), 'ro');
plot(tYears(2:end-1), movmean(W04T4.dttChannelActiveSkeletonNodesCount(2:end-1), range), 'r:')
plot(tYears(2:end-1), W08T4.dttChannelActiveSkeletonNodesCount(2:end-1), 'g.');
plot(tYears(2:end-1), movmean(W08T4.dttChannelActiveSkeletonNodesCount(2:end-1), range), 'g:')
plot(tYears(2:end-1), W12T4.dttChannelActiveSkeletonNodesCount(2:end-1), 'bd');
plot(tYears(2:end-1), movmean(W12T4.dttChannelActiveSkeletonNodesCount(2:end-1), range), 'b:')
plot(tYears(2:end-1), W16T4.dttChannelActiveSkeletonNodesCount(2:end-1), '<', 'color', '#EDB120');
plot(tYears(2:end-1), movmean(W16T4.dttChannelActiveSkeletonNodesCount(2:end-1), range), ':', 'color', '#EDB120');
plot(tYears(2:end-1), W2T4.dttChannelActiveSkeletonNodesCount(2:end-1), 'm+');
plot(tYears(2:end-1), movmean(W2T4.dttChannelActiveSkeletonNodesCount(2:end-1), range), 'm:')
legend('W0.0T4.0', '', 'W0.4T4.0', '', 'W0.8T4.0', '', 'W1.2T4.0', '', 'W1.6T4.0', '', 'W2.0T4.0', '', 'Location', 'Northwest', 'numColumns', 2)
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 80])
ylabel('Number of channel network branchpoints [-]')

% T6.0
dttChannelBranchesPlot_T6 = figure(40004);
dttChannelBranchesPlot_T6.Position = [200 100 1280 800];
clf reset
plot(tYears, W0T6.dttChannelActiveSkeletonNodesCount, 'kx');
hold on
plot(tYears, movmean(W0T6.dttChannelActiveSkeletonNodesCount, range), 'k:')
plot(tYears(2:end-1), W04T6.dttChannelActiveSkeletonNodesCount(2:end-1), 'ro');
plot(tYears(2:end-1), movmean(W04T6.dttChannelActiveSkeletonNodesCount(2:end-1), range), 'r:')
plot(tYears(2:end-1), W08T6.dttChannelActiveSkeletonNodesCount(2:end-1), 'g.');
plot(tYears(2:end-1), movmean(W08T6.dttChannelActiveSkeletonNodesCount(2:end-1), range), 'g:')
plot(tYears(2:end-1), W12T6.dttChannelActiveSkeletonNodesCount(2:end-1), 'bd');
plot(tYears(2:end-1), movmean(W12T6.dttChannelActiveSkeletonNodesCount(2:end-1), range), 'b:')
plot(tYears(2:end-1), W16T6.dttChannelActiveSkeletonNodesCount(2:end-1), '<', 'color', '#EDB120');
plot(tYears(2:end-1), movmean(W16T6.dttChannelActiveSkeletonNodesCount(2:end-1), range), ':', 'color', '#EDB120');
plot(tYears(2:end-1), W2T6.dttChannelActiveSkeletonNodesCount(2:end-1), 'm+');
plot(tYears(2:end-1), movmean(W2T6.dttChannelActiveSkeletonNodesCount(2:end-1), range), 'm:')
legend('W0.0T6.0', '', 'W0.4T6.0', '', 'W0.8T6.0', '', 'W1.2T6.0', '', 'W1.6T6.0', '', 'W2.0T6.0', '', 'Location', 'Northwest', 'numColumns', 2)
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 80])
ylabel('Number of channel network branchpoints [-]')

%% EXPORT PLOTS
% exportgraphics(dttChannelBranchesPlot_W0, ['../MATLAB export/Final/Channels/channelCounting/dttChannelBranchesMultiPlot_W0.0.png'], 'Resolution', 150);
% exportgraphics(dttChannelBranchesPlot_W04, ['../MATLAB export/Final/Channels/channelCounting/dttChannelBranchesMultiPlot_W0.4.png'], 'Resolution', 150);
% exportgraphics(dttChannelBranchesPlot_W08, ['../MATLAB export/Final/Channels/channelCounting/dttChannelBranchesMultiPlot_W0.8.png'], 'Resolution', 150);
% exportgraphics(dttChannelBranchesPlot_W12, ['../MATLAB export/Final/Channels/channelCounting/dttChannelBranchesMultiPlot_W1.2.png'], 'Resolution', 150);
% exportgraphics(dttChannelBranchesPlot_W16, ['../MATLAB export/Final/Channels/channelCounting/dttChannelBranchesMultiPlot_W1.6.png'], 'Resolution', 150);
% exportgraphics(dttChannelBranchesPlot_W2, ['../MATLAB export/Final/Channels/channelCounting/dttChannelBranchesMultiPlot_W2.0.png'], 'Resolution', 150);

% exportgraphics(dttChannelBranchesPlot_T0, ['../MATLAB export/Final/Channels/channelCounting/dttChannelBranchesMultiPlot_T0.0.png'], 'Resolution', 150);
% exportgraphics(dttChannelBranchesPlot_T1, ['../MATLAB export/Final/Channels/channelCounting/dttChannelBranchesMultiPlot_T1.0.png'], 'Resolution', 150);
% exportgraphics(dttChannelBranchesPlot_T2, ['../MATLAB export/Final/Channels/channelCounting/dttChannelBranchesMultiPlot_T2.0.png'], 'Resolution', 150);
% exportgraphics(dttChannelBranchesPlot_T4, ['../MATLAB export/Final/Channels/channelCounting/dttChannelBranchesMultiPlot_T4.0.png'], 'Resolution', 150);
% exportgraphics(dttChannelBranchesPlot_T6, ['../MATLAB export/Final/Channels/channelCounting/dttChannelBranchesMultiPlot_T6.0.png'], 'Resolution', 150);