% Date:     31/08/2023
% Author:   ERS

% This script produced plots of channel mobility, as determined wuth
% dttChannelsMobility.m

%% LOAD DATA
load('..\MATLAB datastore\W0.0T0.0_metrics_HPC.mat', 'dttChannelMobility')
W0T0.dttChannelMobility = dttChannelMobility;
load('..\MATLAB datastore\W0.0T0.5_metrics_HPC.mat', 'dttChannelMobility')
W0T05.dttChannelMobility = dttChannelMobility;
load('..\MATLAB datastore\W0.0T1.0_metrics_HPC.mat', 'dttChannelMobility')
W0T1.dttChannelMobility = dttChannelMobility;
load('..\MATLAB datastore\W0.0T2.0_metrics_HPC.mat', 'dttChannelMobility')
W0T2.dttChannelMobility = dttChannelMobility;
load('..\MATLAB datastore\W0.0T3.0_metrics_HPC.mat', 'dttChannelMobility')
W0T3.dttChannelMobility = dttChannelMobility;
load('..\MATLAB datastore\W0.0T4.0_metrics_HPC.mat', 'dttChannelMobility')
W0T4.dttChannelMobility = dttChannelMobility;
load('..\MATLAB datastore\W0.0T5.0_metrics_HPC.mat', 'dttChannelMobility')
W0T5.dttChannelMobility = dttChannelMobility;
load('..\MATLAB datastore\W0.0T6.0_metrics_HPC.mat', 'dttChannelMobility')
W0T6.dttChannelMobility = dttChannelMobility;

load('..\MATLAB datastore\W0.4T0.0_metrics_HPC.mat', 'dttChannelMobility')
W04T0.dttChannelMobility = dttChannelMobility;
load('..\MATLAB datastore\W0.4T1.0_metrics_HPC.mat', 'dttChannelMobility')
W04T1.dttChannelMobility = dttChannelMobility;
load('..\MATLAB datastore\W0.4T2.0_metrics_HPC.mat', 'dttChannelMobility')
W04T2.dttChannelMobility = dttChannelMobility;
load('..\MATLAB datastore\W0.4T3.0_metrics_HPC.mat', 'dttChannelMobility')
W04T3.dttChannelMobility = dttChannelMobility;
load('..\MATLAB datastore\W0.4T4.0_metrics_HPC.mat', 'dttChannelMobility')
W04T4.dttChannelMobility = dttChannelMobility;
load('..\MATLAB datastore\W0.4T5.0_metrics_HPC.mat', 'dttChannelMobility')
W04T5.dttChannelMobility = dttChannelMobility;
load('..\MATLAB datastore\W0.4T6.0_metrics_HPC.mat', 'dttChannelMobility')
W04T6.dttChannelMobility = dttChannelMobility;

load('..\MATLAB datastore\W0.8T0.0_metrics_HPC.mat', 'dttChannelMobility')
W08T0.dttChannelMobility = dttChannelMobility;
load('..\MATLAB datastore\W0.8T1.0_metrics_HPC.mat', 'dttChannelMobility')
W08T1.dttChannelMobility = dttChannelMobility;
load('..\MATLAB datastore\W0.8T2.0_metrics_HPC.mat', 'dttChannelMobility')
W08T2.dttChannelMobility = dttChannelMobility;
load('..\MATLAB datastore\W0.8T3.0_metrics_HPC.mat', 'dttChannelMobility')
W08T3.dttChannelMobility = dttChannelMobility;
load('..\MATLAB datastore\W0.8T4.0_metrics_HPC.mat', 'dttChannelMobility')
W08T4.dttChannelMobility = dttChannelMobility;
load('..\MATLAB datastore\W0.8T5.0_metrics_HPC.mat', 'dttChannelMobility')
W08T5.dttChannelMobility = dttChannelMobility;
load('..\MATLAB datastore\W0.8T6.0_metrics_HPC.mat', 'dttChannelMobility')
W08T6.dttChannelMobility = dttChannelMobility;

load('..\MATLAB datastore\W1.2T0.0_metrics_HPC.mat', 'dttChannelMobility')
W12T0.dttChannelMobility = dttChannelMobility;
load('..\MATLAB datastore\W1.2T1.0_metrics_HPC.mat', 'dttChannelMobility')
W12T1.dttChannelMobility = dttChannelMobility;
load('..\MATLAB datastore\W1.2T2.0_metrics_HPC.mat', 'dttChannelMobility')
W12T2.dttChannelMobility = dttChannelMobility;
load('..\MATLAB datastore\W1.2T3.0_metrics_HPC.mat', 'dttChannelMobility')
W12T3.dttChannelMobility = dttChannelMobility;
load('..\MATLAB datastore\W1.2T4.0_metrics_HPC.mat', 'dttChannelMobility')
W12T4.dttChannelMobility = dttChannelMobility;
load('..\MATLAB datastore\W1.2T5.0_metrics_HPC.mat', 'dttChannelMobility')
W12T5.dttChannelMobility = dttChannelMobility;
load('..\MATLAB datastore\W1.2T6.0_metrics_HPC.mat', 'dttChannelMobility')
W12T6.dttChannelMobility = dttChannelMobility;

load('..\MATLAB datastore\W1.6T0.0_metrics_HPC.mat', 'dttChannelMobility')
W16T0.dttChannelMobility = dttChannelMobility;
load('..\MATLAB datastore\W1.6T1.0_metrics_HPC.mat', 'dttChannelMobility')
W16T1.dttChannelMobility = dttChannelMobility;
load('..\MATLAB datastore\W1.6T2.0_metrics_HPC.mat', 'dttChannelMobility')
W16T2.dttChannelMobility = dttChannelMobility;
load('..\MATLAB datastore\W1.6T3.0_metrics_HPC.mat', 'dttChannelMobility')
W16T3.dttChannelMobility = dttChannelMobility;
load('..\MATLAB datastore\W1.6T4.0_metrics_HPC.mat', 'dttChannelMobility')
W16T4.dttChannelMobility = dttChannelMobility;
load('..\MATLAB datastore\W1.6T5.0_metrics_HPC.mat', 'dttChannelMobility')
W16T5.dttChannelMobility = dttChannelMobility;
load('..\MATLAB datastore\W1.6T6.0_metrics_HPC.mat', 'dttChannelMobility')
W16T6.dttChannelMobility = dttChannelMobility;

load('..\MATLAB datastore\W2.0T0.0_metrics_HPC.mat', 'dttChannelMobility')
W2T0.dttChannelMobility = dttChannelMobility;
load('..\MATLAB datastore\W2.0T1.0_metrics_HPC.mat', 'dttChannelMobility')
W2T1.dttChannelMobility = dttChannelMobility;
load('..\MATLAB datastore\W2.0T2.0_metrics_HPC.mat', 'dttChannelMobility')
W2T2.dttChannelMobility = dttChannelMobility;
load('..\MATLAB datastore\W2.0T3.0_metrics_HPC.mat', 'dttChannelMobility')
W2T3.dttChannelMobility = dttChannelMobility;
load('..\MATLAB datastore\W2.0T4.0_metrics_HPC.mat', 'dttChannelMobility')
W2T4.dttChannelMobility = dttChannelMobility;
load('..\MATLAB datastore\W2.0T5.0_metrics_HPC.mat', 'dttChannelMobility')
W2T5.dttChannelMobility = dttChannelMobility;
load('..\MATLAB datastore\W2.0T6.0_metrics_HPC.mat', 'dttChannelMobility', 'mf')
W2T6.dttChannelMobility = dttChannelMobility;

% Clean up workspace
clear -regexp ^dtt;

%% PLOTS PREAMBLE
tYears = 0 : 12.5*mf / (24*365) : 1800*mf / (24*365);

%% PLOTS
% W0
dttChannelMobilityPlot_W0 = figure(8881);
dttChannelMobilityPlot_W0.Position = [100 100 920 480];
clf reset
plot(tYears, W0T0.dttChannelMobility, 'x:');
hold on
% plot(tYears(1:end-1), W0T05.dttChannelMobility(1:end-1), '^:');
plot(tYears(1:end-1), W0T1.dttChannelMobility(1:end-1), 'o:');
plot(tYears(1:end-1), W0T2.dttChannelMobility(1:end-1), '.:');
plot(tYears(1:end-1), W0T3.dttChannelMobility(1:end-1), 's:');
plot(tYears(1:end-1), W0T4.dttChannelMobility(1:end-1), 'd:');
plot(tYears(1:end-1), W0T5.dttChannelMobility(1:end-1), '<:');
plot(tYears(1:end-1), W0T6.dttChannelMobility(1:end-1), '+:');
legend('W0.0T0.0', 'W0.0T1.0', 'W0.0T2.0', 'W0.0T3.0', 'W0.0T4.0', 'W0.0T5.0', 'W0.0T6.0', 'Location', 'Northwest', 'numColumns', 2)
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 0.4])
ylabel('Channel mobility number [-]')

% W0.4
dttChannelMobilityPlot_W04 = figure(8882);
dttChannelMobilityPlot_W04.Position = [100 100 920 480];
clf reset
plot(tYears, W04T0.dttChannelMobility, 'x:');
hold on
plot(tYears(1:end-1), W04T1.dttChannelMobility(1:end-1), 'o:');
plot(tYears(1:end-1), W04T2.dttChannelMobility(1:end-1), '.:');
plot(tYears(1:end-1), W04T3.dttChannelMobility(1:end-1), 's:');
plot(tYears(1:end-1), W04T4.dttChannelMobility(1:end-1), 'd:');
plot(tYears(1:end-1), W04T5.dttChannelMobility(1:end-1), '<:');
plot(tYears(1:end-1), W04T6.dttChannelMobility(1:end-1), '+:');
legend('W0.4T0.0', 'W0.4T1.0', 'W0.4T2.0', 'W0.4T3.0', 'W0.4T4.0', 'W0.4T5.0', 'W0.4T6.0', 'Location', 'Northwest')
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 0.4])
ylabel('Channel mobility number [-]')

% W0.8
dttChannelMobilityPlot_W08 = figure(8883);
dttChannelMobilityPlot_W08.Position = [100 100 920 480];
clf reset
plot(tYears, W08T0.dttChannelMobility, 'x:');
hold on
plot(tYears(1:end-1), W08T1.dttChannelMobility(1:end-1), 'o:');
plot(tYears(1:end-1), W08T2.dttChannelMobility(1:end-1), '.:');
plot(tYears(1:end-1), W08T3.dttChannelMobility(1:end-1), 's:');
plot(tYears(1:end-1), W08T4.dttChannelMobility(1:end-1), 'd:');
plot(tYears(1:end-1), W08T5.dttChannelMobility(1:end-1), '<:');
plot(tYears(1:end-1), W08T6.dttChannelMobility(1:end-1), '+:');
legend('W0.8T0.0', 'W0.8T1.0', 'W0.8T2.0', 'W0.8T3.0', 'W0.8T4.0', 'W0.8T5.0', 'W0.8T6.0', 'Location', 'Northwest')
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 0.4])
ylabel('Channel mobility number [-]')

% W1.2
dttChannelMobilityPlot_W12 = figure(8884);
dttChannelMobilityPlot_W12.Position = [100 100 920 480];
clf reset
plot(tYears, W12T0.dttChannelMobility, 'x:');
hold on
plot(tYears(1:end-1), W12T1.dttChannelMobility(1:end-1), 'o:');
plot(tYears(1:end-1), W12T2.dttChannelMobility(1:end-1), '.:');
plot(tYears(1:end-1), W12T3.dttChannelMobility(1:end-1), 's:');
plot(tYears(1:end-1), W12T4.dttChannelMobility(1:end-1), 'd:');
plot(tYears(1:end-1), W12T5.dttChannelMobility(1:end-1), '<:');
plot(tYears(1:end-1), W12T6.dttChannelMobility(1:end-1), '+:');
legend('W1.2T0.0', 'W1.2T1.0', 'W1.2T2.0', 'W1.2T3.0', 'W1.2T4.0', 'W1.2T5.0','W1.2T6.0', 'Location', 'Northwest')
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 0.4])
ylabel('Channel mobility number [-]')

% W1.6
dttChannelMobilityPlot_W16 = figure(8885);
dttChannelMobilityPlot_W16.Position = [100 100 920 480];
clf reset
plot(tYears, W16T0.dttChannelMobility, 'x:');
hold on
plot(tYears(1:end-1), W16T1.dttChannelMobility(1:end-1), 'o:');
plot(tYears(1:end-1), W16T2.dttChannelMobility(1:end-1), '.:');
plot(tYears(1:end-1), W16T3.dttChannelMobility(1:end-1), 's:');
plot(tYears(1:end-1), W16T4.dttChannelMobility(1:end-1), 'd:');
plot(tYears(1:end-1), W16T5.dttChannelMobility(1:end-1), '<:');
plot(tYears(1:end-1), W16T6.dttChannelMobility(1:end-1), '+:');
legend('W1.6T0.0', 'W1.6T1.0', 'W1.6T2.0', 'W1.6T3.0', 'W1.6T4.0', 'W1.6T5.0', 'W1.6T6.0', 'Location', 'Northwest')
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 0.4])
ylabel('Channel mobility number [-]')

% W2.0
dttChannelMobilityPlot_W2 = figure(8886);
dttChannelMobilityPlot_W2.Position = [100 100 920 480];
clf reset
plot(tYears, W2T0.dttChannelMobility, 'x:');
hold on
plot(tYears(1:end-1), W2T1.dttChannelMobility(1:end-1), 'o:');
plot(tYears(1:end-1), W2T2.dttChannelMobility(1:end-1), '.:');
plot(tYears(1:end-1), W2T3.dttChannelMobility(1:end-1), 's:');
plot(tYears(1:end-1), W2T4.dttChannelMobility(1:end-1), 'd:');
plot(tYears(1:end-1), W2T5.dttChannelMobility(1:end-1), '<:');
plot(tYears(1:end-1), W2T6.dttChannelMobility(1:end-1), '+:');
legend('W2.0T0.0', 'W2.0T1.0', 'W2.0T2.0', 'W2.0T3.0', 'W2.0T4.0', 'W2.0T5.0', 'W2.0T6.0', 'Location', 'Northwest')
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 0.4])
ylabel('Channel mobility number [-]')

% T0.0
dttChannelMobilityPlot_T0 = figure(8891);
dttChannelMobilityPlot_T0.Position = [100 100 920 480];
clf reset
plot(tYears, W0T0.dttChannelMobility, 'x:');
hold on
plot(tYears(1:end-1), W04T0.dttChannelMobility(1:end-1), 'o:');
plot(tYears(1:end-1), W08T0.dttChannelMobility(1:end-1), '.:');
plot(tYears(1:end-1), W12T0.dttChannelMobility(1:end-1), 'd:');
plot(tYears(1:end-1), W16T0.dttChannelMobility(1:end-1), '+:');
plot(tYears(1:end-1), W2T0.dttChannelMobility(1:end-1), 's:');
legend('W0.0T0.0', 'W0.4T0.0', 'W0.8T0.0', 'W1.2T0.0', 'W1.6T0.0', 'W2.0T0.0', 'Location', 'Northwest')
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 0.4])
ylabel('Channel mobility number [-]')

% T1.0
dttChannelMobilityPlot_T1 = figure(8892);
dttChannelMobilityPlot_T1.Position = [100 100 920 480];
clf reset
plot(tYears, W0T1.dttChannelMobility, 'x:');
hold on
plot(tYears(1:end-1), W04T1.dttChannelMobility(1:end-1), 'o:');
plot(tYears(1:end-1), W08T1.dttChannelMobility(1:end-1), '.:');
plot(tYears(1:end-1), W12T1.dttChannelMobility(1:end-1), 'd:');
plot(tYears(1:end-1), W16T1.dttChannelMobility(1:end-1), '+:');
plot(tYears(1:end-1), W2T1.dttChannelMobility(1:end-1), 's:');
legend('W0.0T1.0', 'W0.4T1.0', 'W0.8T1.0', 'W1.2T1.0', 'W1.6T1.0', 'W2.0T1.0', 'Location', 'Northwest')
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 0.4])
ylabel('Channel mobility number [-]')

% T2.0
dttChannelMobilityPlot_T2 = figure(8893);
dttChannelMobilityPlot_T2.Position = [100 100 920 480];
clf reset
plot(tYears, W0T2.dttChannelMobility, 'x:');
hold on
plot(tYears(1:end-1), W04T2.dttChannelMobility(1:end-1), 'o:');
plot(tYears(1:end-1), W08T2.dttChannelMobility(1:end-1), '.:');
plot(tYears(1:end-1), W12T2.dttChannelMobility(1:end-1), 'd:');
plot(tYears(1:end-1), W16T2.dttChannelMobility(1:end-1), '+:');
plot(tYears(1:end-1), W2T2.dttChannelMobility(1:end-1), 's:');
legend('W0.0T2.0', 'W0.4T2.0', 'W0.8T2.0', 'W1.2T2.0', 'W1.6T2.0', 'W2.0T2.0', 'Location', 'Northwest')
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 0.4])
ylabel('Channel mobility number [-]')

% T3.0
dttChannelMobilityPlot_T3 = figure(88931);
dttChannelMobilityPlot_T3.Position = [100 100 920 480];
clf reset
plot(tYears, W0T3.dttChannelMobility, 'x:');
hold on
plot(tYears(1:end-1), W04T3.dttChannelMobility(1:end-1), 'o:');
plot(tYears(1:end-1), W08T3.dttChannelMobility(1:end-1), '.:');
plot(tYears(1:end-1), W12T3.dttChannelMobility(1:end-1), 'd:');
plot(tYears(1:end-1), W16T3.dttChannelMobility(1:end-1), '+:');
plot(tYears(1:end-1), W2T3.dttChannelMobility(1:end-1), 's:');
legend('W0.0T3.0', 'W0.4T3.0', 'W0.8T3.0', 'W1.2T3.0', 'W1.6T3.0', 'W2.0T3.0', 'Location', 'Northwest')
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 0.4])
ylabel('Channel mobility number [-]')

% T4.0
dttChannelMobilityPlot_T4 = figure(8894);
dttChannelMobilityPlot_T4.Position = [100 100 920 480];
clf reset
plot(tYears, W0T4.dttChannelMobility, 'x:');
hold on
plot(tYears(1:end-1), W04T4.dttChannelMobility(1:end-1), 'o:');
plot(tYears(1:end-1), W08T4.dttChannelMobility(1:end-1), '.:');
plot(tYears(1:end-1), W12T4.dttChannelMobility(1:end-1), 'd:');
plot(tYears(1:end-1), W16T4.dttChannelMobility(1:end-1), '+:');
plot(tYears(1:end-1), W2T4.dttChannelMobility(1:end-1), 's:');
legend('W0.0T4.0', 'W0.4T4.0', 'W0.8T4.0', 'W1.2T4.0', 'W1.6T4.0', 'W2.0T4.0', 'Location', 'Northwest')
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 0.4])
ylabel('Channel mobility number [-]')

% T5.0
dttChannelMobilityPlot_T5 = figure(88941);
dttChannelMobilityPlot_T5.Position = [100 100 920 480];
clf reset
plot(tYears, W0T5.dttChannelMobility, 'x:');
hold on
plot(tYears(1:end-1), W04T5.dttChannelMobility(1:end-1), 'o:');
plot(tYears(1:end-1), W08T5.dttChannelMobility(1:end-1), '.:');
plot(tYears(1:end-1), W12T5.dttChannelMobility(1:end-1), 'd:');
plot(tYears(1:end-1), W16T5.dttChannelMobility(1:end-1), '+:');
plot(tYears(1:end-1), W2T5.dttChannelMobility(1:end-1), 's:');
legend('W0.0T5.0', 'W0.4T5.0', 'W0.8T5.0', 'W1.2T5.0', 'W1.6T5.0', 'W2.0T5.0', 'Location', 'Northwest')
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 0.4])
ylabel('Channel mobility number [-]')

% T6.0
dttChannelMobilityPlot_T6 = figure(8895);
dttChannelMobilityPlot_T6.Position = [100 100 920 480];
clf reset
plot(tYears, W0T6.dttChannelMobility, 'x:');
hold on
plot(tYears(1:end-1), W04T6.dttChannelMobility(1:end-1), 'o:');
plot(tYears(1:end-1), W08T6.dttChannelMobility(1:end-1), '.:');
plot(tYears(1:end-1), W12T6.dttChannelMobility(1:end-1), 'd:');
plot(tYears(1:end-1), W16T6.dttChannelMobility(1:end-1), '+:');
plot(tYears(1:end-1), W2T6.dttChannelMobility(1:end-1), 's:');
legend('W0.0T6.0', 'W0.4T6.0', 'W0.8T6.0', 'W1.2T6.0', 'W1.6T6.0', 'W2.0T6.0', 'Location', 'Northwest')
grid on
xlim([0 36])
xticks([0:6:36])
xlabel('{\itt} [yr]')
ylim([0 0.4])
ylabel('Channel mobility number [-]')

%% EXPORT PLOTS
% exportgraphics(dttChannelMobilityPlot_W0, ['../MATLAB export/Final/Channels/dttChannelMobility_W0.0_v3.png'], 'Resolution', 150);
% exportgraphics(dttChannelMobilityPlot_W04, ['../MATLAB export/Final/Channels/dttChannelMobility_W0.4_v3.png'], 'Resolution', 150);
% exportgraphics(dttChannelMobilityPlot_W08, ['../MATLAB export/Final/Channels/dttChannelMobility_W0.8_v3.png'], 'Resolution', 150);
% exportgraphics(dttChannelMobilityPlot_W12, ['../MATLAB export/Final/Channels/dttChannelMobility_W1.2_v3.png'], 'Resolution', 150);
% exportgraphics(dttChannelMobilityPlot_W16, ['../MATLAB export/Final/Channels/dttChannelMobility_W1.6_v3.png'], 'Resolution', 150);
% exportgraphics(dttChannelMobilityPlot_W2, ['../MATLAB export/Final/Channels/dttChannelMobility_W2.0_v3.png'], 'Resolution', 150);

% exportgraphics(dttChannelMobilityPlot_T0, ['../MATLAB export/Final/Channels/dttChannelMobility_T0.0_v2.png'], 'Resolution', 150);
% exportgraphics(dttChannelMobilityPlot_T1, ['../MATLAB export/Final/Channels/dttChannelMobility_T1.0_v2.png'], 'Resolution', 150);
% exportgraphics(dttChannelMobilityPlot_T2, ['../MATLAB export/Final/Channels/dttChannelMobility_T2.0_v2.png'], 'Resolution', 150);
% exportgraphics(dttChannelMobilityPlot_T3, ['../MATLAB export/Final/Channels/dttChannelMobility_T3.0.png'], 'Resolution', 150);
% exportgraphics(dttChannelMobilityPlot_T4, ['../MATLAB export/Final/Channels/dttChannelMobility_T4.0_v2.png'], 'Resolution', 150);
% exportgraphics(dttChannelMobilityPlot_T5, ['../MATLAB export/Final/Channels/dttChannelMobility_T5.0.png'], 'Resolution', 150);
% exportgraphics(dttChannelMobilityPlot_T6, ['../MATLAB export/Final/Channels/dttChannelMobility_T6.0_v2.png'], 'Resolution', 150);