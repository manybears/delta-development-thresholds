% Date:     14/01/2023
% Author:   ERS

% This script loads data for producing comparison plots.

%% LOAD AND ARRANGE DATA
load('../MATLAB datastore/W0.0T0.0_metrics_HPC.mat');
W0T0.dttDeltaArea = dttDeltaArea;
W0T0.dttDeltaFrontLogical = dttDeltaFrontLogical;
% W0T0.dttHighTideAreaOffshore = dttHighTideAreaOffshore;
% W0T0.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
% W0T0.dttHighTideFrontLogical = dttHighTideFrontLogical;
% W0T0.dttHighTideLength = dttHighTideLength;
% W0T0.dttHighTideRugosity = dttHighTideRugosity;
W0T0.dttLowTideAreaOffshore = dttLowTideAreaOffshore;
W0T0.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W0T0.dttLowTideFrontLogical = dttLowTideFrontLogical;
W0T0.dttLowTideLength = dttLowTideLength;
W0T0.dttLowTideRugosity = dttLowTideRugosity;
W0T0.mf = mf;

load('../MATLAB datastore/W0.0T0.5_metrics_HPC.mat');
W0T05.dttDeltaArea = dttDeltaArea;
W0T05.dttDeltaFrontLogical = dttDeltaFrontLogical;
W0T05.dttHighTideAreaOffshore = dttHighTideAreaOffshore;
W0T05.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
W0T05.dttHighTideFrontLogical = dttHighTideFrontLogical;
W0T05.dttHighTideLength = dttHighTideLength;
W0T05.dttHighTideRugosity = dttHighTideRugosity;
W0T05.dttLowTideAreaOffshore = dttLowTideAreaOffshore;
W0T05.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W0T05.dttLowTideFrontLogical = dttLowTideFrontLogical;
W0T05.dttLowTideLength = dttLowTideLength;
W0T05.dttLowTideRugosity = dttLowTideRugosity;
W0T05.mf = mf;

load('../MATLAB datastore/W0.0T1.0_metrics_HPC.mat');
W0T1.dttDeltaArea = dttDeltaArea;
W0T1.dttDeltaFrontLogical = dttDeltaFrontLogical;
W0T1.dttHighTideAreaOffshore = dttHighTideAreaOffshore;
W0T1.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
W0T1.dttHighTideFrontLogical = dttHighTideFrontLogical;
W0T1.dttHighTideLength = dttHighTideLength;
W0T1.dttHighTideRugosity = dttHighTideRugosity;
W0T1.dttLowTideAreaOffshore = dttLowTideAreaOffshore;
W0T1.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W0T1.dttLowTideFrontLogical = dttLowTideFrontLogical;
W0T1.dttLowTideLength = dttLowTideLength;
W0T1.dttLowTideRugosity = dttLowTideRugosity;
W0T1.mf = mf;

load('../MATLAB datastore/W0.0T2.0_metrics_HPC.mat');
W0T2.dttDeltaArea = dttDeltaArea;
W0T2.dttDeltaFrontLogical = dttDeltaFrontLogical;
W0T2.dttHighTideAreaOffshore = dttHighTideAreaOffshore;
W0T2.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
W0T2.dttHighTideFrontLogical = dttHighTideFrontLogical;
W0T2.dttHighTideLength = dttHighTideLength;
W0T2.dttHighTideRugosity = dttHighTideRugosity;
W0T2.dttLowTideAreaOffshore = dttLowTideAreaOffshore;
W0T2.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W0T2.dttLowTideFrontLogical = dttLowTideFrontLogical;
W0T2.dttLowTideLength = dttLowTideLength;
W0T2.dttLowTideRugosity = dttLowTideRugosity;
W0T2.mf = mf;

load('../MATLAB datastore/W0.0T3.0_metrics_HPC.mat');
W0T3.dttDeltaArea = dttDeltaArea;
W0T3.dttDeltaFrontLogical = dttDeltaFrontLogical;
W0T3.dttHighTideAreaOffshore = dttHighTideAreaOffshore;
W0T3.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
W0T3.dttHighTideFrontLogical = dttHighTideFrontLogical;
W0T3.dttHighTideLength = dttHighTideLength;
W0T3.dttHighTideRugosity = dttHighTideRugosity;
W0T3.dttLowTideAreaOffshore = dttLowTideAreaOffshore;
W0T3.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W0T3.dttLowTideFrontLogical = dttLowTideFrontLogical;
W0T3.dttLowTideLength = dttLowTideLength;
W0T3.dttLowTideRugosity = dttLowTideRugosity;
W0T3.mf = mf;

load('../MATLAB datastore/W0.0T4.0_metrics_HPC.mat');
W0T4.dttDeltaArea = dttDeltaArea;
W0T4.dttDeltaFrontLogical = dttDeltaFrontLogical;
W0T4.dttHighTideAreaOffshore = dttHighTideAreaOffshore;
W0T4.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
W0T4.dttHighTideFrontLogical = dttHighTideFrontLogical;
W0T4.dttHighTideLength = dttHighTideLength;
W0T4.dttHighTideRugosity = dttHighTideRugosity;
W0T4.dttLowTideAreaOffshore = dttLowTideAreaOffshore;
W0T4.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W0T4.dttLowTideFrontLogical = dttLowTideFrontLogical;
W0T4.dttLowTideLength = dttLowTideLength;
W0T4.dttLowTideRugosity = dttLowTideRugosity;
W0T4.mf = mf;

load('../MATLAB datastore/W0.0T5.0_metrics_HPC.mat');
W0T5.dttDeltaArea = dttDeltaArea;
W0T5.dttDeltaFrontLogical = dttDeltaFrontLogical;
W0T5.dttHighTideAreaOffshore = dttHighTideAreaOffshore;
W0T5.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
W0T5.dttHighTideFrontLogical = dttHighTideFrontLogical;
W0T5.dttHighTideLength = dttHighTideLength;
W0T5.dttHighTideRugosity = dttHighTideRugosity;
W0T5.dttLowTideAreaOffshore = dttLowTideAreaOffshore;
W0T5.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W0T5.dttLowTideFrontLogical = dttLowTideFrontLogical;
W0T5.dttLowTideLength = dttLowTideLength;
W0T5.dttLowTideRugosity = dttLowTideRugosity;
W0T5.mf = mf;

load('../MATLAB datastore/W0.0T6.0_metrics_HPC.mat');
W0T6.dttDeltaArea = dttDeltaArea;
W0T6.dttDeltaFrontLogical = dttDeltaFrontLogical;
W0T6.dttHighTideAreaOffshore = dttHighTideAreaOffshore;
W0T6.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
W0T6.dttHighTideFrontLogical = dttHighTideFrontLogical;
W0T6.dttHighTideLength = dttHighTideLength;
W0T6.dttHighTideRugosity = dttHighTideRugosity;
W0T6.dttLowTideAreaOffshore = dttLowTideAreaOffshore;
W0T6.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W0T6.dttLowTideFrontLogical = dttLowTideFrontLogical;
W0T6.dttLowTideLength = dttLowTideLength;
W0T6.dttLowTideRugosity = dttLowTideRugosity;
W0T6.mf = mf;

load('../MATLAB datastore/W0.4T0.0_metrics_HPC.mat');
W04T0.dttDeltaArea = dttDeltaArea;
W04T0.dttDeltaFrontLogical = dttDeltaFrontLogical;
% W04T0.dttHighTideAreaOffshore = dttHighTideAreaOffshore;
% W04T0.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
% W04T0.dttHighTideFrontLogical = dttHighTideFrontLogical;
% W04T0.dttHighTideLength = dttHighTideLength;
% W04T0.dttHighTideRugosity = dttHighTideRugosity;
W04T0.dttLowTideAreaOffshore = dttLowTideAreaOffshore;
W04T0.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W04T0.dttLowTideFrontLogical = dttLowTideFrontLogical;
W04T0.dttLowTideLength = dttLowTideLength;
W04T0.dttLowTideRugosity = dttLowTideRugosity;
W04T0.mf = mf;

load('../MATLAB datastore/W0.4T1.0_metrics_HPC.mat');
W04T1.dttDeltaArea = dttDeltaArea;
W04T1.dttDeltaFrontLogical = dttDeltaFrontLogical;
W04T1.dttHighTideAreaOffshore = dttHighTideAreaOffshore;
W04T1.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
W04T1.dttHighTideFrontLogical = dttHighTideFrontLogical;
W04T1.dttHighTideLength = dttHighTideLength;
W04T1.dttHighTideRugosity = dttHighTideRugosity;
W04T1.dttLowTideAreaOffshore = dttLowTideAreaOffshore;
W04T1.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W04T1.dttLowTideFrontLogical = dttLowTideFrontLogical;
W04T1.dttLowTideLength = dttLowTideLength;
W04T1.dttLowTideRugosity = dttLowTideRugosity;
W04T1.mf = mf;

load('../MATLAB datastore/W0.4T2.0_metrics_HPC.mat');
W04T2.dttDeltaArea = dttDeltaArea;
W04T2.dttDeltaFrontLogical = dttDeltaFrontLogical;
W04T2.dttHighTideAreaOffshore = dttHighTideAreaOffshore;
W04T2.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
W04T2.dttHighTideFrontLogical = dttHighTideFrontLogical;
W04T2.dttHighTideLength = dttHighTideLength;
W04T2.dttHighTideRugosity = dttHighTideRugosity;
W04T2.dttLowTideAreaOffshore = dttLowTideAreaOffshore;
W04T2.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W04T2.dttLowTideFrontLogical = dttLowTideFrontLogical;
W04T2.dttLowTideLength = dttLowTideLength;
W04T2.dttLowTideRugosity = dttLowTideRugosity;
W04T2.mf = mf;

load('../MATLAB datastore/W0.4T4.0_metrics_HPC.mat');
W04T4.dttDeltaArea = dttDeltaArea;
W04T4.dttDeltaFrontLogical = dttDeltaFrontLogical;
W04T4.dttHighTideAreaOffshore = dttHighTideAreaOffshore;
W04T4.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
W04T4.dttHighTideFrontLogical = dttHighTideFrontLogical;
W04T4.dttHighTideLength = dttHighTideLength;
W04T4.dttHighTideRugosity = dttHighTideRugosity;
W04T4.dttLowTideAreaOffshore = dttLowTideAreaOffshore;
W04T4.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W04T4.dttLowTideFrontLogical = dttLowTideFrontLogical;
W04T4.dttLowTideLength = dttLowTideLength;
W04T4.dttLowTideRugosity = dttLowTideRugosity;
W04T4.mf = mf;

load('../MATLAB datastore/W0.4T6.0_metrics_HPC.mat');
W04T6.dttDeltaArea = dttDeltaArea;
W04T6.dttDeltaFrontLogical = dttDeltaFrontLogical;
W04T6.dttHighTideAreaOffshore = dttHighTideAreaOffshore;
W04T6.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
W04T6.dttHighTideFrontLogical = dttHighTideFrontLogical;
W04T6.dttHighTideLength = dttHighTideLength;
W04T6.dttHighTideRugosity = dttHighTideRugosity;
W04T6.dttLowTideAreaOffshore = dttLowTideAreaOffshore;
W04T6.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W04T6.dttLowTideFrontLogical = dttLowTideFrontLogical;
W04T6.dttLowTideLength = dttLowTideLength;
W04T6.dttLowTideRugosity = dttLowTideRugosity;
W04T6.mf = mf;

load('../MATLAB datastore/W0.8T0.0_metrics_HPC.mat');
W08T0.dttDeltaArea = dttDeltaArea;
W08T0.dttDeltaFrontLogical = dttDeltaFrontLogical;
% W08T0.dttHighTideAreaOffshore = dttHighTideAreaOffshore;
% W08T0.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
% W08T0.dttHighTideFrontLogical = dttHighTideFrontLogical;
% W08T0.dttHighTideLength = dttHighTideLength;
% W08T0.dttHighTideRugosity = dttHighTideRugosity;
W08T0.dttLowTideAreaOffshore = dttLowTideAreaOffshore;
W08T0.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W08T0.dttLowTideFrontLogical = dttLowTideFrontLogical;
W08T0.dttLowTideLength = dttLowTideLength;
W08T0.dttLowTideRugosity = dttLowTideRugosity;
W08T0.mf = mf;

load('../MATLAB datastore/W0.8T1.0_metrics_HPC.mat');
W08T1.dttDeltaArea = dttDeltaArea;
W08T1.dttDeltaFrontLogical = dttDeltaFrontLogical;
W08T1.dttHighTideAreaOffshore = dttHighTideAreaOffshore;
W08T1.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
W08T1.dttHighTideFrontLogical = dttHighTideFrontLogical;
W08T1.dttHighTideLength = dttHighTideLength;
W08T1.dttHighTideRugosity = dttHighTideRugosity;
W08T1.dttLowTideAreaOffshore = dttLowTideAreaOffshore;
W08T1.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W08T1.dttLowTideFrontLogical = dttLowTideFrontLogical;
W08T1.dttLowTideLength = dttLowTideLength;
W08T1.dttLowTideRugosity = dttLowTideRugosity;
W08T1.mf = mf;

load('../MATLAB datastore/W0.8T2.0_metrics_HPC.mat');
W08T2.dttDeltaArea = dttDeltaArea;
W08T2.dttDeltaFrontLogical = dttDeltaFrontLogical;
W08T2.dttHighTideAreaOffshore = dttHighTideAreaOffshore;
W08T2.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
W08T2.dttHighTideFrontLogical = dttHighTideFrontLogical;
W08T2.dttHighTideLength = dttHighTideLength;
W08T2.dttHighTideRugosity = dttHighTideRugosity;
W08T2.dttLowTideAreaOffshore = dttLowTideAreaOffshore;
W08T2.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W08T2.dttLowTideFrontLogical = dttLowTideFrontLogical;
W08T2.dttLowTideLength = dttLowTideLength;
W08T2.dttLowTideRugosity = dttLowTideRugosity;
W08T2.mf = mf;

load('../MATLAB datastore/W0.8T4.0_metrics_HPC.mat');
W08T4.dttDeltaArea = dttDeltaArea;
W08T4.dttDeltaFrontLogical = dttDeltaFrontLogical;
W08T4.dttHighTideAreaOffshore = dttHighTideAreaOffshore;
W08T4.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
W08T4.dttHighTideFrontLogical = dttHighTideFrontLogical;
W08T4.dttHighTideLength = dttHighTideLength;
W08T4.dttHighTideRugosity = dttHighTideRugosity;
W08T4.dttLowTideAreaOffshore = dttLowTideAreaOffshore;
W08T4.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W08T4.dttLowTideFrontLogical = dttLowTideFrontLogical;
W08T4.dttLowTideLength = dttLowTideLength;
W08T4.dttLowTideRugosity = dttLowTideRugosity;
W08T4.mf = mf;

load('../MATLAB datastore/W0.8T6.0_metrics_HPC.mat');
W08T6.dttDeltaArea = dttDeltaArea;
W08T6.dttDeltaFrontLogical = dttDeltaFrontLogical;
W08T6.dttHighTideAreaOffshore = dttHighTideAreaOffshore;
W08T6.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
W08T6.dttHighTideFrontLogical = dttHighTideFrontLogical;
W08T6.dttHighTideLength = dttHighTideLength;
W08T6.dttHighTideRugosity = dttHighTideRugosity;
W08T6.dttLowTideAreaOffshore = dttLowTideAreaOffshore;
W08T6.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W08T6.dttLowTideFrontLogical = dttLowTideFrontLogical;
W08T6.dttLowTideLength = dttLowTideLength;
W08T6.dttLowTideRugosity = dttLowTideRugosity;
W08T6.mf = mf;

load('../MATLAB datastore/W1.2T0.0_metrics_HPC.mat');
W12T0.dttDeltaArea = dttDeltaArea;
W12T0.dttDeltaFrontLogical = dttDeltaFrontLogical;
% W12T0.dttHighTideAreaOffshore = dttHighTideAreaOffshore;
% W12T0.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
% W12T0.dttHighTideFrontLogical = dttHighTideFrontLogical;
% W12T0.dttHighTideLength = dttHighTideLength;
% W12T0.dttHighTideRugosity = dttHighTideRugosity;
W12T0.dttLowTideAreaOffshore = dttLowTideAreaOffshore;
W12T0.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W12T0.dttLowTideFrontLogical = dttLowTideFrontLogical;
W12T0.dttLowTideLength = dttLowTideLength;
W12T0.dttLowTideRugosity = dttLowTideRugosity;
W12T0.mf = mf;

load('../MATLAB datastore/W1.2T1.0_metrics_HPC.mat');
W12T1.dttDeltaArea = dttDeltaArea;
W12T1.dttDeltaFrontLogical = dttDeltaFrontLogical;
W12T1.dttHighTideAreaOffshore = dttHighTideAreaOffshore;
W12T1.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
W12T1.dttHighTideFrontLogical = dttHighTideFrontLogical;
W12T1.dttHighTideLength = dttHighTideLength;
W12T1.dttHighTideRugosity = dttHighTideRugosity;
W12T1.dttLowTideAreaOffshore = dttLowTideAreaOffshore;
W12T1.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W12T1.dttLowTideFrontLogical = dttLowTideFrontLogical;
W12T1.dttLowTideLength = dttLowTideLength;
W12T1.dttLowTideRugosity = dttLowTideRugosity;
W12T1.mf = mf;

load('../MATLAB datastore/W1.2T2.0_metrics_HPC.mat');
W12T2.dttDeltaArea = dttDeltaArea;
W12T2.dttDeltaFrontLogical = dttDeltaFrontLogical;
W12T2.dttHighTideAreaOffshore = dttHighTideAreaOffshore;
W12T2.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
W12T2.dttHighTideFrontLogical = dttHighTideFrontLogical;
W12T2.dttHighTideLength = dttHighTideLength;
W12T2.dttHighTideRugosity = dttHighTideRugosity;
W12T2.dttLowTideAreaOffshore = dttLowTideAreaOffshore;
W12T2.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W12T2.dttLowTideFrontLogical = dttLowTideFrontLogical;
W12T2.dttLowTideLength = dttLowTideLength;
W12T2.dttLowTideRugosity = dttLowTideRugosity;
W12T2.mf = mf;

load('../MATLAB datastore/W1.2T4.0_metrics_HPC.mat');
W12T4.dttDeltaArea = dttDeltaArea;
W12T4.dttDeltaFrontLogical = dttDeltaFrontLogical;
W12T4.dttHighTideAreaOffshore = dttHighTideAreaOffshore;
W12T4.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
W12T4.dttHighTideFrontLogical = dttHighTideFrontLogical;
W12T4.dttHighTideLength = dttHighTideLength;
W12T4.dttHighTideRugosity = dttHighTideRugosity;
W12T4.dttLowTideAreaOffshore = dttLowTideAreaOffshore;
W12T4.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W12T4.dttLowTideFrontLogical = dttLowTideFrontLogical;
W12T4.dttLowTideLength = dttLowTideLength;
W12T4.dttLowTideRugosity = dttLowTideRugosity;
W12T4.mf = mf;

load('../MATLAB datastore/W1.2T6.0_metrics_HPC.mat');
W12T6.dttDeltaArea = dttDeltaArea;
W12T6.dttDeltaFrontLogical = dttDeltaFrontLogical;
W12T6.dttHighTideAreaOffshore = dttHighTideAreaOffshore;
W12T6.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
W12T6.dttHighTideFrontLogical = dttHighTideFrontLogical;
W12T6.dttHighTideLength = dttHighTideLength;
W12T6.dttHighTideRugosity = dttHighTideRugosity;
W12T6.dttLowTideAreaOffshore = dttLowTideAreaOffshore;
W12T6.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W12T6.dttLowTideFrontLogical = dttLowTideFrontLogical;
W12T6.dttLowTideLength = dttLowTideLength;
W12T6.dttLowTideRugosity = dttLowTideRugosity;
W12T6.mf = mf;

load('../MATLAB datastore/W1.6T0.0_metrics_HPC.mat');
W16T0.dttDeltaArea = dttDeltaArea;
W16T0.dttDeltaFrontLogical = dttDeltaFrontLogical;
% W16T0.dttHighTideAreaOffshore = dttHighTideAreaOffshore;
% W16T0.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
% W16T0.dttHighTideFrontLogical = dttHighTideFrontLogical;
% W16T0.dttHighTideLength = dttHighTideLength;
% W16T0.dttHighTideRugosity = dttHighTideRugosity;
W16T0.dttLowTideAreaOffshore = dttLowTideAreaOffshore;
W16T0.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W16T0.dttLowTideFrontLogical = dttLowTideFrontLogical;
W16T0.dttLowTideLength = dttLowTideLength;
W16T0.dttLowTideRugosity = dttLowTideRugosity;
W16T0.mf = mf;

load('../MATLAB datastore/W1.6T1.0_metrics_HPC.mat');
W16T1.dttDeltaArea = dttDeltaArea;
W16T1.dttDeltaFrontLogical = dttDeltaFrontLogical;
W16T1.dttHighTideAreaOffshore = dttHighTideAreaOffshore;
W16T1.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
W16T1.dttHighTideFrontLogical = dttHighTideFrontLogical;
W16T1.dttHighTideLength = dttHighTideLength;
W16T1.dttHighTideRugosity = dttHighTideRugosity;
W16T1.dttLowTideAreaOffshore = dttLowTideAreaOffshore;
W16T1.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W16T1.dttLowTideFrontLogical = dttLowTideFrontLogical;
W16T1.dttLowTideLength = dttLowTideLength;
W16T1.dttLowTideRugosity = dttLowTideRugosity;
W16T1.mf = mf;

load('../MATLAB datastore/W1.6T2.0_metrics_HPC.mat');
W16T2.dttDeltaArea = dttDeltaArea;
W16T2.dttDeltaFrontLogical = dttDeltaFrontLogical;
W16T2.dttHighTideAreaOffshore = dttHighTideAreaOffshore;
W16T2.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
W16T2.dttHighTideFrontLogical = dttHighTideFrontLogical;
W16T2.dttHighTideLength = dttHighTideLength;
W16T2.dttHighTideRugosity = dttHighTideRugosity;
W16T2.dttLowTideAreaOffshore = dttLowTideAreaOffshore;
W16T2.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W16T2.dttLowTideFrontLogical = dttLowTideFrontLogical;
W16T2.dttLowTideLength = dttLowTideLength;
W16T2.dttLowTideRugosity = dttLowTideRugosity;
W16T2.mf = mf;

load('../MATLAB datastore/W1.6T4.0_metrics_HPC.mat');
W16T4.dttDeltaArea = dttDeltaArea;
W16T4.dttDeltaFrontLogical = dttDeltaFrontLogical;
W16T4.dttHighTideAreaOffshore = dttHighTideAreaOffshore;
W16T4.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
W16T4.dttHighTideFrontLogical = dttHighTideFrontLogical;
W16T4.dttHighTideLength = dttHighTideLength;
W16T4.dttHighTideRugosity = dttHighTideRugosity;
W16T4.dttLowTideAreaOffshore = dttLowTideAreaOffshore;
W16T4.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W16T4.dttLowTideFrontLogical = dttLowTideFrontLogical;
W16T4.dttLowTideLength = dttLowTideLength;
W16T4.dttLowTideRugosity = dttLowTideRugosity;
W16T4.mf = mf;

load('../MATLAB datastore/W1.6T6.0_metrics_HPC.mat');
W16T6.dttDeltaArea = dttDeltaArea;
W16T6.dttDeltaFrontLogical = dttDeltaFrontLogical;
W16T6.dttHighTideAreaOffshore = dttHighTideAreaOffshore;
W16T6.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
W16T6.dttHighTideFrontLogical = dttHighTideFrontLogical;
W16T6.dttHighTideLength = dttHighTideLength;
W16T6.dttHighTideRugosity = dttHighTideRugosity;
W16T6.dttLowTideAreaOffshore = dttLowTideAreaOffshore;
W16T6.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W16T6.dttLowTideFrontLogical = dttLowTideFrontLogical;
W16T6.dttLowTideLength = dttLowTideLength;
W16T6.dttLowTideRugosity = dttLowTideRugosity;
W16T6.mf = mf;

load('../MATLAB datastore/W2.0T0.0_metrics_HPC.mat');
W2T0.dttDeltaArea = dttDeltaArea;
W2T0.dttDeltaFrontLogical = dttDeltaFrontLogical;
% W2T0.dttHighTideAreaOffshore = dttHighTideAreaOffshore;
% W2T0.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
% W2T0.dttHighTideFrontLogical = dttHighTideFrontLogical;
% W2T0.dttHighTideLength = dttHighTideLength;
% W2T0.dttHighTideRugosity = dttHighTideRugosity;
W2T0.dttLowTideAreaOffshore = dttLowTideAreaOffshore;
W2T0.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W2T0.dttLowTideFrontLogical = dttLowTideFrontLogical;
W2T0.dttLowTideLength = dttLowTideLength;
W2T0.dttLowTideRugosity = dttLowTideRugosity;
W2T0.mf = mf;

load('../MATLAB datastore/W2.0T1.0_metrics_HPC.mat');
W2T1.dttDeltaArea = dttDeltaArea;
W2T1.dttDeltaFrontLogical = dttDeltaFrontLogical;
W2T1.dttHighTideAreaOffshore = dttHighTideAreaOffshore;
W2T1.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
W2T1.dttHighTideFrontLogical = dttHighTideFrontLogical;
W2T1.dttHighTideLength = dttHighTideLength;
W2T1.dttHighTideRugosity = dttHighTideRugosity;
W2T1.dttLowTideAreaOffshore = dttLowTideAreaOffshore;
W2T1.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W2T1.dttLowTideFrontLogical = dttLowTideFrontLogical;
W2T1.dttLowTideLength = dttLowTideLength;
W2T1.dttLowTideRugosity = dttLowTideRugosity;
W2T1.mf = mf;

load('../MATLAB datastore/W2.0T2.0_metrics_HPC.mat');
W2T2.dttDeltaArea = dttDeltaArea;
W2T2.dttDeltaFrontLogical = dttDeltaFrontLogical;
W2T2.dttHighTideAreaOffshore = dttHighTideAreaOffshore;
W2T2.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
W2T2.dttHighTideFrontLogical = dttHighTideFrontLogical;
W2T2.dttHighTideLength = dttHighTideLength;
W2T2.dttHighTideRugosity = dttHighTideRugosity;
W2T2.dttLowTideAreaOffshore = dttLowTideAreaOffshore;
W2T2.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W2T2.dttLowTideFrontLogical = dttLowTideFrontLogical;
W2T2.dttLowTideLength = dttLowTideLength;
W2T2.dttLowTideRugosity = dttLowTideRugosity;
W2T2.mf = mf;

load('../MATLAB datastore/W2.0T4.0_metrics_HPC.mat');
W2T4.dttDeltaArea = dttDeltaArea;
W2T4.dttDeltaFrontLogical = dttDeltaFrontLogical;
W2T4.dttHighTideAreaOffshore = dttHighTideAreaOffshore;
W2T4.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
W2T4.dttHighTideFrontLogical = dttHighTideFrontLogical;
W2T4.dttHighTideLength = dttHighTideLength;
W2T4.dttHighTideRugosity = dttHighTideRugosity;
W2T4.dttLowTideAreaOffshore = dttLowTideAreaOffshore;
W2T4.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W2T4.dttLowTideFrontLogical = dttLowTideFrontLogical;
W2T4.dttLowTideLength = dttLowTideLength;
W2T4.dttLowTideRugosity = dttLowTideRugosity;
W2T4.mf = mf;

load('../MATLAB datastore/W2.0T6.0_metrics_HPC.mat');
W2T6.dttDeltaArea = dttDeltaArea;
W2T6.dttDeltaFrontLogical = dttDeltaFrontLogical;
W2T6.dttHighTideAreaOffshore = dttHighTideAreaOffshore;
W2T6.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
W2T6.dttHighTideFrontLogical = dttHighTideFrontLogical;
W2T6.dttHighTideLength = dttHighTideLength;
W2T6.dttHighTideRugosity = dttHighTideRugosity;
W2T6.dttLowTideAreaOffshore = dttLowTideAreaOffshore;
W2T6.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W2T6.dttLowTideFrontLogical = dttLowTideFrontLogical;
W2T6.dttLowTideLength = dttLowTideLength;
W2T6.dttLowTideRugosity = dttLowTideRugosity;
W2T6.mf = mf;

% Clean up workspace
clear -regexp ^dtt;

%% LOAD AND ARRANGE DATA (EXTENDED SIMS)
load('../MATLAB datastore/W0.0T0.0ext_metrics_HPC.mat');
W0T0ext.dttDeltaArea = dttDeltaArea;
W0T0ext.dttDeltaFrontLogical = dttDeltaFrontLogical;
% W0T0ext.dttHighTideAreaOffshore = dttHighTideAreaOffshore;
% W0T0ext.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
% W0T0ext.dttHighTideFrontLogical = dttHighTideFrontLogical;
% W0T0ext.dttHighTideLength = dttHighTideLength;
% W0T0ext.dttHighTideRugosity = dttHighTideRugosity;
W0T0ext.dttLowTideAreaOffshore = dttLowTideAreaOffshore;
W0T0ext.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W0T0ext.dttLowTideFrontLogical = dttLowTideFrontLogical;
W0T0ext.dttLowTideLength = dttLowTideLength;
W0T0ext.dttLowTideRugosity = dttLowTideRugosity;
W0T0ext.mf = mf;

load('../MATLAB datastore/W0.0T2.0ext_metrics_HPC.mat');
W0T2ext.dttDeltaArea = dttDeltaArea;
W0T2ext.dttDeltaFrontLogical = dttDeltaFrontLogical;
W0T2ext.dttHighTideAreaOffshore = dttHighTideAreaOffshore;
W0T2ext.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
W0T2ext.dttHighTideFrontLogical = dttHighTideFrontLogical;
W0T2ext.dttHighTideLength = dttHighTideLength;
W0T2ext.dttHighTideRugosity = dttHighTideRugosity;
W0T2ext.dttLowTideAreaOffshore = dttLowTideAreaOffshore;
W0T2ext.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W0T2ext.dttLowTideFrontLogical = dttLowTideFrontLogical;
W0T2ext.dttLowTideLength = dttLowTideLength;
W0T2ext.dttLowTideRugosity = dttLowTideRugosity;
W0T2ext.mf = mf;

load('../MATLAB datastore/W1.2T4.0ext_metrics_HPC.mat');
W12T4ext.dttDeltaArea = dttDeltaArea;
W12T4ext.dttDeltaFrontLogical = dttDeltaFrontLogical;
% W12T4ext.dttHighTideAreaOffshore = dttHighTideAreaOffshore;
% W12T4ext.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
% W12T4ext.dttHighTideFrontLogical = dttHighTideFrontLogical;
% W12T4ext.dttHighTideLength = dttHighTideLength;
% W12T4ext.dttHighTideRugosity = dttHighTideRugosity;
W12T4ext.dttLowTideAreaOffshore = dttLowTideAreaOffshore;
W12T4ext.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W12T4ext.dttLowTideFrontLogical = dttLowTideFrontLogical;
W12T4ext.dttLowTideLength = dttLowTideLength;
W12T4ext.dttLowTideRugosity = dttLowTideRugosity;
W12T4ext.mf = mf;

load('../MATLAB datastore/W2.0T0.0ext_metrics_HPC.mat');
W2T0ext.dttDeltaArea = dttDeltaArea;
W2T0ext.dttDeltaFrontLogical = dttDeltaFrontLogical;
W2T0ext.dttHighTideAreaOffshore = dttHighTideAreaOffshore;
W2T0ext.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
W2T0ext.dttHighTideFrontLogical = dttHighTideFrontLogical;
W2T0ext.dttHighTideLength = dttHighTideLength;
W2T0ext.dttHighTideRugosity = dttHighTideRugosity;
W2T0ext.dttLowTideAreaOffshore = dttLowTideAreaOffshore;
W2T0ext.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W2T0ext.dttLowTideFrontLogical = dttLowTideFrontLogical;
W2T0ext.dttLowTideLength = dttLowTideLength;
W2T0ext.dttLowTideRugosity = dttLowTideRugosity;
W2T0ext.mf = mf;

% Clean up workspace
clear -regexp ^dtt;

%% LOAD AND ARRANGE DATA (VARIED PAR SIMS)
load('../MATLAB datastore/W0.8T4.0varwav_metrics_HPC.mat');
W08T4varwav.dttDeltaArea = dttDeltaArea;
W08T4varwav.dttDeltaFrontLogical = dttDeltaFrontLogical;
W08T4varwav.dttHighTideAreaOffshore = dttHighTideAreaOffshore;
W08T4varwav.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
W08T4varwav.dttHighTideFrontLogical = dttHighTideFrontLogical;
W08T4varwav.dttHighTideLength = dttHighTideLength;
W08T4varwav.dttHighTideRugosity = dttHighTideRugosity;
W08T4varwav.dttLowTideAreaOffshore = dttLowTideAreaOffshore;
W08T4varwav.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W08T4varwav.dttLowTideFrontLogical = dttLowTideFrontLogical;
W08T4varwav.dttLowTideLength = dttLowTideLength;
W08T4varwav.dttLowTideRugosity = dttLowTideRugosity;
W08T4varwav.mf = mf;

% Clean up workspace
clear -regexp ^dtt;

%% PLOTS PREAMBLE
% close all;
tYears = 0 : 12.5*mf / (24*365) : 1800*mf / (24*365);
tYearsExt = 1812.5*mf / (24*365) : 12.5*mf / (24*365) : 3600*mf / (24*365);
tYearsLow = tYears - (9.375*175)/(365*24);
tYearsLowExt = tYearsExt - (9.375*175)/(365*24);
tYearsHigh = tYears - (3.125*175)/(365*24);
tYearsHighExt = tYearsExt - (3.125*175)/(365*24);
ES2010_colormap;
xAxis = [0.0125 19.7375];
yAxis = [0.0125 8.9875];

%% METRIC PLOTS
% W0.0
dttLowTideAreaPlotW0 = figure(301);
dttLowTideAreaPlotW0.Position = [100 100 1920 820];
plot(tYears, W0T0.dttLowTideAreaOnshore ./ W0T0.dttDeltaArea, 'k-', 'linewidth', 2) % 0.01:0.01:1
hold on;
% plot(tYears, ([W0T0.dttLowTideAreaOnshore] + [W0T0.dttLowTideAreaOffshore]) ./ W0T0.dttDeltaArea, 'k:', 'linewidth', 2)
plot(tYearsLow, [0; W0T05.dttLowTideAreaOnshore] ./ W0T05.dttDeltaArea,  'r-', 'linewidth', 2)% 'color', [0 0 1])
% plot(tYearsLow, ([0; W0T05.dttLowTideAreaOnshore] + [0; W0T05.dttLowTideAreaOffshore]) ./ W0T05.dttDeltaArea,  'r:', 'linewidth', 2)% 'color', [0 0 1])
plot(tYearsLow, [0; W0T1.dttLowTideAreaOnshore] ./ W0T1.dttDeltaArea, 'b-', 'linewidth', 2)%'color', [0 0.15 0.85])
% plot(tYearsLow, ([0; W0T1.dttLowTideAreaOnshore] + [0; W0T1.dttLowTideAreaOffshore]) ./ W0T1.dttDeltaArea, 'b:', 'linewidth', 2)%'color', [0 0.15 0.85])
plot(tYearsLow, [0; W0T2.dttLowTideAreaOnshore] ./ W0T2.dttDeltaArea, 'g-', 'linewidth', 2)%'color', [0 0.3 0.7])
% plot(tYearsLow, ([0; W0T2.dttLowTideAreaOnshore] + [0; W0T2.dttLowTideAreaOffshore]) ./ W0T2.dttDeltaArea, 'g:', 'linewidth', 2)%'color', [0 0.3 0.7])
plot(tYearsLow, [0; W0T3.dttLowTideAreaOnshore] ./ W0T3.dttDeltaArea, 'm-', 'linewidth', 2)%'color', [0 0.45 0.55])
% plot(tYearsLow, ([0; W0T3.dttLowTideAreaOnshore] + [0; W0T3.dttLowTideAreaOffshore]) ./ W0T3.dttDeltaArea, 'm:', 'linewidth', 2)%'color', [0 0.45 0.55])
plot(tYearsLow, [0; W0T4.dttLowTideAreaOnshore] ./ W0T4.dttDeltaArea, 'c-', 'linewidth', 2)%'color', [0 0.6 0.4])
% plot(tYearsLow, ([0; W0T4.dttLowTideAreaOnshore] + [0; W0T4.dttLowTideAreaOffshore]) ./ W0T4.dttDeltaArea, 'c:', 'linewidth', 2)%'color', [0 0.6 0.4])
plot(tYearsLow, [0; W0T5.dttLowTideAreaOnshore] ./ W0T5.dttDeltaArea, '-', 'linewidth', 2, 'color', [0.2 0.8 0.5])%'color', [0 0.75 0.25])
% plot(tYearsLow, ([0; W0T5.dttLowTideAreaOnshore] + [0; W0T5.dttLowTideAreaOffshore]) ./ W0T5.dttDeltaArea, ':', 'linewidth', 2, 'color', [0.2 0.8 0.5])%'color', [0 0.75 0.25])
plot(tYearsLow, [0; W0T6.dttLowTideAreaOnshore] ./ W0T6.dttDeltaArea, '-', 'linewidth', 2, 'color', [0.8 0.2 0.5])%'color', [0 0.9 0.1])
% plot(tYearsLow, ([0; W0T6.dttLowTideAreaOnshore] + [0; W0T6.dttLowTideAreaOffshore]) ./ W0T6.dttDeltaArea, ':', 'linewidth', 2, 'color', [0.8 0.2 0.5])%'color', [0 0.9 0.1])
plot(tYearsHigh, [0; W0T05.dttHighTideAreaOnshore] ./ W0T05.dttDeltaArea,  'r--', 'linewidth', 2)% 'color', [0 0 1])
% plot(tYearsHigh, ([0; W0T05.dttHighTideAreaOnshore] + [0; W0T05.dttHighTideAreaOffshore]) ./ W0T05.dttDeltaArea,  'r-.', 'linewidth', 2)% 'color', [0 0 1])
plot(tYearsHigh, [0; W0T1.dttHighTideAreaOnshore] ./ W0T1.dttDeltaArea, 'b--', 'linewidth', 2)%'color', [0 0.15 0.85])
% plot(tYearsHigh, ([0; W0T1.dttHighTideAreaOnshore] + [0; W0T1.dttHighTideAreaOffshore]) ./ W0T1.dttDeltaArea, 'b-.', 'linewidth', 2)%'color', [0 0.15 0.85])
plot(tYearsHigh, [0; W0T2.dttHighTideAreaOnshore] ./ W0T2.dttDeltaArea, 'g--', 'linewidth', 2)%'color', [0 0.3 0.7])
% plot(tYearsHigh, ([0; W0T2.dttHighTideAreaOnshore] + [0; W0T2.dttHighTideAreaOffshore]) ./ W0T2.dttDeltaArea, 'g-.', 'linewidth', 2)%'color', [0 0.3 0.7])
% plot(tYearsHigh, ([0; W0T3.dttHighTideAreaOnshore] + [0; W0T3.dttHighTideAreaOffshore]) ./ W0T3.dttDeltaArea, 'm--', 'linewidth', 2)%'color', [0 0.45 0.55])
% plot(tYearsHigh, ([0; W0T4.dttHighTideAreaOnshore] + [0; W0T4.dttHighTideAreaOffshore]) ./ W0T4.dttDeltaArea, 'c--', 'linewidth', 2)%'color', [0 0.6 0.4])
% plot(tYearsHigh, ([0; W0T5.dttHighTideAreaOnshore] + [0; W0T5.dttHighTideAreaOffshore]) ./ W0T5.dttDeltaArea, '--', 'linewidth', 2, 'color', [0.2 0.8 0.5])%'color', [0 0.75 0.25])
% plot(tYearsHigh, ([0; W0T6.dttHighTideAreaOnshore] + [0; W0T6.dttHighTideAreaOffshore]) ./ W0T6.dttDeltaArea, '--', 'linewidth', 2, 'color', [0.8 0.2 0.5])%'color', [0 0.9 0.1])
grid on
set(gca, 'FontSize', 16)
legend('W0.0T0.0', 'W0.0T0.5', 'W0.0T1.0', 'W0.0T2.0', 'W0.0T3.0', 'W0.0T4.0', 'W0.0T5.0', 'W0.0T6.0', 'W0.0T0.5 upper', 'W0.0T1.0 upper', 'W0.0T2.0 upper', 'Location', 'northwest', 'numcolumns', 3, 'linewidth', 2)
xlabel('Time elapsed [yr]')
ylabel('Dimensionless delta-plain area [-]');
xticks([0:4:36])
% title('W0T0 to W0T6')
xlim([0 36])
ylim([0 1])

% W0.4
dttLowTideAreaPlotW04 = figure(302);
dttLowTideAreaPlotW04.Position = [120 80 1920 820];
plot(tYears, [W04T0.dttLowTideAreaOnshore] ./ W04T0.dttDeltaArea, 'k-', 'linewidth', 2) % 0.01:0.01:1
hold on
plot(tYearsLow, [0; W04T1.dttLowTideAreaOnshore] ./ W04T1.dttDeltaArea, 'r-', 'linewidth', 2)
plot(tYearsLow, [0; W04T2.dttLowTideAreaOnshore] ./ W04T2.dttDeltaArea, 'b-', 'linewidth', 2)
plot(tYearsLow, [0; W04T4.dttLowTideAreaOnshore] ./ W04T4.dttDeltaArea, 'g-', 'linewidth', 2)
plot(tYearsLow, [0; W04T6.dttLowTideAreaOnshore] ./ W04T6.dttDeltaArea, 'm-', 'linewidth', 2)
plot(tYearsHigh, [0; W04T1.dttHighTideAreaOnshore] ./ W04T1.dttDeltaArea, 'r--', 'linewidth', 2)
plot(tYearsHigh, [0; W04T2.dttHighTideAreaOnshore] ./ W04T2.dttDeltaArea, 'b--', 'linewidth', 2)
grid on
set(gca, 'fontsize', 16)
legend('W0.4T0.0', 'W0.4T1.0', 'W0.4T2.0', 'W0.4T4.0', 'W0.4T6.0', 'W0.4T1.0 upper', 'W0.4T2.0 upper', 'Location', 'northwest', 'numcolumns', 2, 'linewidth', 2)
xlabel('Time elapsed [yr]')
ylabel('Dimensionless delta-plain area [-]')
xticks([0:4:36])
% title('W0.4T0.0 to W0.4T6.0')
xlim([0 36])
ylim([0 1])

% W0.8
dttLowTideAreaPlotW08 = figure(303);
dttLowTideAreaPlotW08.Position = [120 80 1920 820];
plot(tYears, [W08T0.dttLowTideAreaOnshore] ./ W08T0.dttDeltaArea, 'k-', 'linewidth', 2) % 0.01:0.01:1
hold on
plot(tYearsLow, [0; W08T1.dttLowTideAreaOnshore] ./ W08T1.dttDeltaArea, 'r-', 'linewidth', 2)
plot(tYearsLow, [0; W08T2.dttLowTideAreaOnshore] ./ W08T2.dttDeltaArea, 'b-', 'linewidth', 2)
plot(tYearsLow, [0; W08T4.dttLowTideAreaOnshore] ./ W08T4.dttDeltaArea, 'g-', 'linewidth', 2)
% plot(tYearsLow, [0; W08T4varwav.dttLowTideAreaOnshore] ./ W08T4varwav.dttDeltaArea, 'g-.', 'linewidth', 2)
plot(tYearsLow, [0; W08T6.dttLowTideAreaOnshore] ./ W08T6.dttDeltaArea, 'm-', 'linewidth', 2)
plot(tYearsHigh, [0; W08T1.dttHighTideAreaOnshore] ./ W08T1.dttDeltaArea, 'r--', 'linewidth', 2)
plot(tYearsHigh, [0; W08T2.dttHighTideAreaOnshore] ./ W08T2.dttDeltaArea, 'b--', 'linewidth', 2)
grid on
set(gca, 'fontsize', 16)
legend('W0.8T0.0', 'W0.8T1.0', 'W0.8T2.0', 'W0.8T4.0', 'W0.8T6.0', 'W0.8T1.0 upper', 'W0.8T2.0 upper', 'Location', 'northwest', 'numcolumns', 2, 'linewidth', 2)
% legend('W0.8T0.0', 'W0.8T1.0', 'W0.8T2.0', 'W0.8T4.0', 'W0.8T4.0varwav', 'W0.8T6.0', 'W0.8T1.0 upper', 'W0.8T2.0 upper', 'Location', 'northwest', 'numcolumns', 2, 'linewidth', 2)
xlabel('Time elapsed [yr]')
ylabel('Dimensionless delta-plain area [-]')
xticks([0:4:36])
% title('W0.8T0.0 to W0.8T6.0')
xlim([0 36])
ylim([0 1])

% W1.2
dttLowTideAreaPlotW12 = figure(304);
dttLowTideAreaPlotW12.Position = [120 80 1920 820];
plot(tYears, [W12T0.dttLowTideAreaOnshore] ./ W12T0.dttDeltaArea, 'k-', 'linewidth', 2)
hold on
% plot(tYears, ([W12T0.dttLowTideAreaOnshore] + [W12T0.dttLowTideAreaOffshore]) ./ W12T0.dttDeltaArea, 'k-', 'linewidth', 2) % 0.01:0.01:1
% plot(tYearsLow, ([0; W12T1.dttLowTideAreaOnshore] + [0; W12T1.dttLowTideAreaOffshore]) ./ W12T1.dttDeltaArea, 'r-', 'linewidth', 2)
plot(tYearsLow, [0; W12T1.dttLowTideAreaOnshore] ./ W12T1.dttDeltaArea, 'r-', 'linewidth', 2)
% plot(tYearsLow, ([0; W12T2.dttLowTideAreaOnshore] + [0; W12T2.dttLowTideAreaOffshore]) ./ W12T2.dttDeltaArea, 'b-', 'linewidth', 2)
plot(tYearsLow, [0; W12T2.dttLowTideAreaOnshore] ./ W12T2.dttDeltaArea, 'b-', 'linewidth', 2)
% plot(tYearsLow, ([0; W12T4.dttLowTideAreaOnshore] + [0; W12T4.dttLowTideAreaOffshore]) ./ W12T4.dttDeltaArea, 'g-', 'linewidth', 2)
plot(tYearsLow, [0; W12T4.dttLowTideAreaOnshore] ./ W12T4.dttDeltaArea, 'g-', 'linewidth', 2)
% plot(tYearsLow, ([0; W12T6.dttLowTideAreaOnshore] + [0; W12T6.dttLowTideAreaOffshore]) ./ W12T6.dttDeltaArea, 'm-', 'linewidth', 2)
plot(tYearsLow, [0; W12T6.dttLowTideAreaOnshore] ./ W12T6.dttDeltaArea, 'm-', 'linewidth', 2)
% plot(tYearsHigh, ([0; W12T1.dttHighTideAreaOnshore] + [0; W12T1.dttHighTideAreaOffshore]) ./ W12T1.dttDeltaArea, 'r--', 'linewidth', 2)
plot(tYearsHigh, [0; W12T1.dttHighTideAreaOnshore] ./ W12T1.dttDeltaArea, 'r--', 'linewidth', 2)
% plot(tYearsHigh, ([0; W12T2.dttHighTideAreaOnshore] + [0; W12T2.dttHighTideAreaOffshore]) ./ W12T2.dttDeltaArea, 'b--', 'linewidth', 2)
plot(tYearsHigh, [0; W12T2.dttHighTideAreaOnshore] ./ W12T2.dttDeltaArea, 'b--', 'linewidth', 2)
grid on
set(gca, 'fontsize', 16)
legend('W1.2T0.0', 'W1.2T1.0', 'W1.2T2.0', 'W1.2T4.0', 'W1.2T6.0', 'W1.2T1.0 upper', 'W1.2T2.0 upper', 'Location', 'northwest', 'numcolumns', 2, 'linewidth', 2)
xlabel('Time elapsed [yr]')
ylabel('Dimensionless delta-plain area [-]')
xticks([0:4:36])
% title('W1.2T0.0 to W1.2T6.0')
xlim([0 36])
ylim([0 1])

% W1.6
dttLowTideAreaPlotW16 = figure(305);
dttLowTideAreaPlotW16.Position = [120 80 1920 820];
plot(tYears, [W16T0.dttLowTideAreaOnshore] ./ W16T0.dttDeltaArea, 'k-', 'linewidth', 2)
hold on
% plot(tYears, ([W16T0.dttLowTideAreaOnshore] + [W16T0.dttLowTideAreaOffshore]) ./ W16T0.dttDeltaArea, 'k-', 'linewidth', 2) % 0.01:0.01:1
% plot(tYearsLow, ([0; W16T1.dttLowTideAreaOnshore] + [0; W16T1.dttLowTideAreaOffshore]) ./ W16T1.dttDeltaArea, 'r-', 'linewidth', 2)
plot(tYearsLow, [0; W16T1.dttLowTideAreaOnshore] ./ W16T1.dttDeltaArea, 'r-', 'linewidth', 2)
% plot(tYearsLow, ([0; W16T2.dttLowTideAreaOnshore] + [0; W16T2.dttLowTideAreaOffshore]) ./ W16T2.dttDeltaArea, 'b-', 'linewidth', 2)
plot(tYearsLow, [0; W16T2.dttLowTideAreaOnshore] ./ W16T2.dttDeltaArea, 'b-', 'linewidth', 2)
% plot(tYearsLow, ([0; W16T4.dttLowTideAreaOnshore] + [0; W16T4.dttLowTideAreaOffshore]) ./ W16T4.dttDeltaArea, 'g-', 'linewidth', 2)
plot(tYearsLow, [0; W16T4.dttLowTideAreaOnshore] ./ W16T4.dttDeltaArea, 'g-', 'linewidth', 2)
% plot(tYearsLow, ([0; W16T6.dttLowTideAreaOnshore] + [0; W16T6.dttLowTideAreaOffshore]) ./ W16T6.dttDeltaArea, 'm-', 'linewidth', 2)
plot(tYearsLow, [0; W16T6.dttLowTideAreaOnshore] ./ W16T6.dttDeltaArea, 'm-', 'linewidth', 2)
% plot(tYearsHigh, ([0; W16T1.dttHighTideAreaOnshore] + [0; W16T1.dttHighTideAreaOffshore]) ./ W16T1.dttDeltaArea, 'r--', 'linewidth', 2)
plot(tYearsHigh, [0; W16T1.dttHighTideAreaOnshore] ./ W16T1.dttDeltaArea, 'r--', 'linewidth', 2)
% plot(tYearsHigh, ([0; W16T2.dttHighTideAreaOnshore] + [0; W16T2.dttHighTideAreaOffshore]) ./ W16T2.dttDeltaArea, 'b--', 'linewidth', 2)
plot(tYearsHigh, [0; W16T2.dttHighTideAreaOnshore] ./ W16T2.dttDeltaArea, 'b--', 'linewidth', 2)
grid on
set(gca, 'fontsize', 16)
legend('W1.6T0.0', 'W1.6T1.0', 'W1.6T2.0', 'W1.6T4.0', 'W1.6T6.0', 'W1.6T1.0 upper', 'W1.6T2.0 upper', 'Location', 'northwest', 'numcolumns', 2, 'linewidth', 2)
xlabel('Time elapsed [yr]')
ylabel('Dimensionless delta-plain area [-]')
xticks([0:4:36])
% title('W1.6T0.0 to W1.6T6.0')
xlim([0 36])
ylim([0 1])

% W2.0
dttLowTideAreaPlotW2 = figure(306);
dttLowTideAreaPlotW2.Position = [120 80 1920 820];
% plot(tYears, ([W2T0.dttLowTideAreaOnshore] + [W2T0.dttLowTideAreaOffshore]) ./ W2T0.dttDeltaArea, 'k-', 'linewidth', 2) % 0.01:0.01:1
plot(tYears, [W2T0.dttLowTideAreaOnshore] ./ W2T0.dttDeltaArea, 'k-', 'linewidth', 2)
hold on
% plot(tYearsLow, ([0; W2T1.dttLowTideAreaOnshore] + [0; W2T1.dttLowTideAreaOffshore]) ./ W2T1.dttDeltaArea, 'r-', 'linewidth', 2)
plot(tYearsLow, [0; W2T1.dttLowTideAreaOnshore] ./ W2T1.dttDeltaArea, 'r-', 'linewidth', 2)
% plot(tYearsLow, ([0; W2T2.dttLowTideAreaOnshore] + [0; W2T2.dttLowTideAreaOffshore]) ./ W2T2.dttDeltaArea, 'b-', 'linewidth', 2)
plot(tYearsLow, [0; W2T2.dttLowTideAreaOnshore] ./ W2T2.dttDeltaArea, 'b-', 'linewidth', 2)
% plot(tYearsLow, ([0; W2T4.dttLowTideAreaOnshore] + [0; W2T4.dttLowTideAreaOffshore]) ./ W2T4.dttDeltaArea, 'g-', 'linewidth', 2)
plot(tYearsLow, [0; W2T4.dttLowTideAreaOnshore] ./ W2T4.dttDeltaArea, 'g-', 'linewidth', 2)
% plot(tYearsLow, ([0; W2T6.dttLowTideAreaOnshore] + [0; W2T6.dttLowTideAreaOffshore]) ./ W2T6.dttDeltaArea, 'm-', 'linewidth', 2)
plot(tYearsLow, [0; W2T6.dttLowTideAreaOnshore] ./ W2T6.dttDeltaArea, 'm-', 'linewidth', 2)
% plot(tYearsHigh, ([0; W2T1.dttHighTideAreaOnshore] + [0; W2T1.dttHighTideAreaOffshore]) ./ W2T1.dttDeltaArea, 'r--', 'linewidth', 2)
plot(tYearsHigh, [0; W2T1.dttHighTideAreaOnshore] ./ W2T1.dttDeltaArea, 'r--', 'linewidth', 2)
% plot(tYearsHigh, ([0; W2T2.dttHighTideAreaOnshore] + [0; W2T2.dttHighTideAreaOffshore]) ./ W2T2.dttDeltaArea, 'b--', 'linewidth', 2)
plot(tYearsHigh, [0; W2T2.dttHighTideAreaOnshore] ./ W2T2.dttDeltaArea, 'b--', 'linewidth', 2)
grid on
set(gca, 'fontsize', 16)
legend('W2.0T0.0', 'W2.0T1.0', 'W2.0T2.0', 'W2.0T4.0', 'W2.0T6.0', 'W2.0T1.0 upper', 'W2.0T2.0 upper', 'Location', 'northwest', 'numcolumns', 2, 'linewidth', 2)
xlabel('Time elapsed [yr]')
ylabel('Dimensionless delta-plain area [-]')
xticks([0:4:36])
% title('W2.0T0.0 to W2.0T6.0')
xlim([0 36])
ylim([0 1])

% T0
dttLowTideAreaPlotT0 = figure(401);
dttLowTideAreaPlotT0.Position = [120 80 1920 820];
plot(tYears, [W0T0.dttLowTideAreaOnshore] ./ W0T0.dttDeltaArea, 'k-', 'linewidth', 2) % 0.01:0.01:1
hold on
plot(tYears, [W04T0.dttLowTideAreaOnshore] ./ W04T0.dttDeltaArea, 'r-', 'linewidth', 2)
plot(tYears, [W08T0.dttLowTideAreaOnshore] ./ W08T0.dttDeltaArea, 'b-', 'linewidth', 2)
plot(tYears, [W12T0.dttLowTideAreaOnshore] ./ W12T0.dttDeltaArea, 'g-', 'linewidth', 2)
plot(tYears, [W16T0.dttLowTideAreaOnshore] ./ W16T0.dttDeltaArea, 'm-', 'linewidth', 2)
plot(tYears, [W2T0.dttLowTideAreaOnshore] ./ W2T0.dttDeltaArea, 'c-', 'linewidth', 2)
grid on
set(gca, 'fontsize', 16)
legend('W0.0T0.0', 'W0.4T0.0', 'W0.8T0.0', 'W1.2T0.0', 'W1.6T0.0', 'W2.0T0.0', 'Location', 'northwest', 'numcolumns', 2, 'linewidth', 2)
xlabel('Time elapsed [yr]')
ylabel('Dimensionless delta-plain area [-]')
xticks([0:4:36])
% title('W0T0 to W2T0')
xlim([0 36])
ylim([0 1])

% T1
dttLowTideAreaPlotT1 = figure(402);
dttLowTideAreaPlotT1.Position = [120 80 1920 820];
plot(tYearsLow, [0; W0T1.dttLowTideAreaOnshore] ./ W0T1.dttDeltaArea, 'k-', 'linewidth', 2) % 0.01:0.01:1
hold on
plot(tYearsLow, [0; W04T1.dttLowTideAreaOnshore] ./ W04T1.dttDeltaArea, 'r-', 'linewidth', 2)
plot(tYearsLow, [0; W08T1.dttLowTideAreaOnshore] ./ W08T1.dttDeltaArea, 'b-', 'linewidth', 2)
plot(tYearsLow, [0; W12T1.dttLowTideAreaOnshore] ./ W12T1.dttDeltaArea, 'g-', 'linewidth', 2)
plot(tYearsLow, [0; W16T1.dttLowTideAreaOnshore] ./ W16T1.dttDeltaArea, 'm-', 'linewidth', 2)
plot(tYearsLow, [0; W2T1.dttLowTideAreaOnshore] ./ W2T1.dttDeltaArea, 'c-', 'linewidth', 2)
plot(tYearsHigh, [0; W0T1.dttHighTideAreaOnshore] ./ W0T1.dttDeltaArea, 'k--', 'linewidth', 2) % 0.01:0.01:1
plot(tYearsHigh, [0; W04T1.dttHighTideAreaOnshore] ./ W04T1.dttDeltaArea, 'r--', 'linewidth', 2)
plot(tYearsHigh, [0; W08T1.dttHighTideAreaOnshore] ./ W08T1.dttDeltaArea, 'b--', 'linewidth', 2)
plot(tYearsHigh, [0; W12T1.dttHighTideAreaOnshore] ./ W12T1.dttDeltaArea, 'g--', 'linewidth', 2)
plot(tYearsHigh, [0; W16T1.dttHighTideAreaOnshore] ./ W16T1.dttDeltaArea, 'm--', 'linewidth', 2)
plot(tYearsHigh, [0; W2T1.dttHighTideAreaOnshore] ./ W2T1.dttDeltaArea, 'c--', 'linewidth', 2)
grid on
set(gca, 'fontsize', 16)
legend('W0.0T1.0', 'W0.4T1.0', 'W0.8T1.0', 'W1.2T1.0', 'W1.6T1.0', 'W2.0T1.0', 'W0.0T1.0 upper', 'W0.4T1.0 upper', 'W0.8T1.0 upper', 'W1.2T1.0 upper', 'W1.6T1.0 upper', 'W2.0T1.0 upper', 'Location', 'northwest', 'numcolumns', 2, 'linewidth', 2)
xlabel('Time elapsed [yr]')
ylabel('Dimensionless delta-plain area [-]')
xticks([0:4:36])
% title('W0T1 to W2T1')
xlim([0 36])
ylim([0 1])

% T2
dttLowTideAreaPlotT2 = figure(403);
dttLowTideAreaPlotT2.Position = [120 80 1920 820];
% plot(tYearsLow, ([0; W0T2.dttLowTideAreaOnshore] + [0; W0T2.dttLowTideAreaOffshore]) ./ W0T2.dttDeltaArea, 'k-', 'linewidth', 2) % 0.01:0.01:1
plot(tYearsLow, [0; W0T2.dttLowTideAreaOnshore] ./ W0T2.dttDeltaArea, 'k-', 'linewidth', 2)
hold on
% plot(tYearsLow, ([0; W04T2.dttLowTideAreaOnshore] + [0; W04T2.dttLowTideAreaOffshore]) ./ W04T2.dttDeltaArea, 'r-', 'linewidth', 2)
plot(tYearsLow, [0; W04T2.dttLowTideAreaOnshore] ./ W04T2.dttDeltaArea, 'r-', 'linewidth', 2)
% plot(tYearsLow, ([0; W08T2.dttLowTideAreaOnshore] + [0; W08T2.dttLowTideAreaOffshore]) ./ W08T2.dttDeltaArea, 'b-', 'linewidth', 2)
plot(tYearsLow, [0; W08T2.dttLowTideAreaOnshore] ./ W08T2.dttDeltaArea, 'b-', 'linewidth', 2)
% plot(tYearsLow, ([0; W12T2.dttLowTideAreaOnshore] + [0; W12T2.dttLowTideAreaOffshore]) ./ W12T2.dttDeltaArea, 'g-', 'linewidth', 2)
plot(tYearsLow, [0; W12T2.dttLowTideAreaOnshore] ./ W12T2.dttDeltaArea, 'g-', 'linewidth', 2)
% plot(tYearsLow, ([0; W16T2.dttLowTideAreaOnshore] + [0; W16T2.dttLowTideAreaOffshore]) ./ W16T2.dttDeltaArea, 'm-', 'linewidth', 2)
plot(tYearsLow, [0; W16T2.dttLowTideAreaOnshore] ./ W16T2.dttDeltaArea, 'm-', 'linewidth', 2)
% plot(tYearsLow, ([0; W2T2.dttLowTideAreaOnshore] + [0; W2T2.dttLowTideAreaOffshore]) ./ W2T2.dttDeltaArea, 'c-', 'linewidth', 2)
plot(tYearsLow, [0; W2T2.dttLowTideAreaOnshore] ./ W2T2.dttDeltaArea, 'c-', 'linewidth', 2)
% plot(tYearsHigh, ([0; W0T2.dttHighTideAreaOnshore] + [0; W0T2.dttHighTideAreaOffshore]) ./ W0T2.dttDeltaArea, 'k--', 'linewidth', 2) % 0.01:0.01:1
plot(tYearsHigh, [0; W0T2.dttHighTideAreaOnshore] ./ W0T2.dttDeltaArea, 'k--', 'linewidth', 2) % 0.01:0.01:1
% plot(tYearsHigh, ([0; W04T2.dttHighTideAreaOnshore] + [0; W04T2.dttHighTideAreaOffshore]) ./ W04T2.dttDeltaArea, 'r--', 'linewidth', 2)
plot(tYearsHigh, [0; W04T2.dttHighTideAreaOnshore] ./ W04T2.dttDeltaArea, 'r--', 'linewidth', 2)
% plot(tYearsHigh, ([0; W08T2.dttHighTideAreaOnshore] + [0; W08T2.dttHighTideAreaOffshore]) ./ W08T2.dttDeltaArea, 'b--', 'linewidth', 2)
plot(tYearsHigh, [0; W08T2.dttHighTideAreaOnshore] ./ W08T2.dttDeltaArea, 'b--', 'linewidth', 2)
% plot(tYearsHigh, ([0; W12T2.dttHighTideAreaOnshore] + [0; W12T2.dttHighTideAreaOffshore]) ./ W12T2.dttDeltaArea, 'g--', 'linewidth', 2)
plot(tYearsHigh, [0; W12T2.dttHighTideAreaOnshore] ./ W12T2.dttDeltaArea, 'g--', 'linewidth', 2)
% plot(tYearsHigh, ([0; W16T2.dttHighTideAreaOnshore] + [0; W16T2.dttHighTideAreaOffshore]) ./ W16T2.dttDeltaArea, 'm--', 'linewidth', 2)
plot(tYearsHigh, [0; W16T2.dttHighTideAreaOnshore] ./ W16T2.dttDeltaArea, 'm--', 'linewidth', 2)
% plot(tYearsHigh, ([0; W2T2.dttHighTideAreaOnshore] + [0; W2T2.dttHighTideAreaOffshore]) ./ W2T2.dttDeltaArea, 'c--', 'linewidth', 2)
plot(tYearsHigh, [0; W2T2.dttHighTideAreaOnshore] ./ W2T2.dttDeltaArea, 'c--', 'linewidth', 2)
grid on
set(gca, 'fontsize', 16)
legend('W0.0T2.0', 'W0.4T2.0', 'W0.8T2.0', 'W1.2T2.0', 'W1.6T2.0', 'W2.0T2.0', 'W0.0T2.0 upper', 'W0.4T2.0 upper', 'W0.8T2.0 upper', 'W1.2T2.0 upper', 'W1.6T2.0 upper', 'W2.0T2.0 upper', 'Location', 'northwest', 'numcolumns', 2, 'linewidth', 2)
xlabel('Time elapsed [yr]')
ylabel('Dimensionless delta-plain area [-]')
xticks([0:4:36])
% title('W0T2 to W2T2')
xlim([0 36])
ylim([0 1])

% T4
dttLowTideAreaPlotT4 = figure(404);
dttLowTideAreaPlotT4.Position = [120 80 1920 820];
% plot(tYearsLow, ([0; W0T4.dttLowTideAreaOnshore] + [0; W0T4.dttLowTideAreaOffshore]) ./ W0T4.dttDeltaArea, 'k:', 'linewidth', 2) % 0.01:0.01:1
plot(tYearsLow, [0; W0T4.dttLowTideAreaOnshore] ./ W0T4.dttDeltaArea, 'k-', 'linewidth', 2)
hold on
% plot(tYearsLow, ([0; W04T4.dttLowTideAreaOnshore] + [0; W04T4.dttLowTideAreaOffshore]) ./ W04T4.dttDeltaArea, 'r:', 'linewidth', 2)
plot(tYearsLow, [0; W04T4.dttLowTideAreaOnshore] ./ W04T4.dttDeltaArea, 'r-', 'linewidth', 2)
% plot(tYearsLow, ([0; W08T4.dttLowTideAreaOnshore] + [0; W08T4.dttLowTideAreaOffshore]) ./ W08T4.dttDeltaArea, 'b:', 'linewidth', 2)
plot(tYearsLow, [0; W08T4.dttLowTideAreaOnshore] ./ W08T4.dttDeltaArea, 'b-', 'linewidth', 2)
% plot(tYearsLow, ([0; W12T4.dttLowTideAreaOnshore] + [0; W12T4.dttLowTideAreaOffshore]) ./ W12T4.dttDeltaArea, 'g:', 'linewidth', 2)
plot(tYearsLow, [0; W12T4.dttLowTideAreaOnshore] ./ W12T4.dttDeltaArea, 'g-', 'linewidth', 2)
% plot(tYearsLow, ([0; W16T4.dttLowTideAreaOnshore] + [0; W16T4.dttLowTideAreaOffshore]) ./ W16T4.dttDeltaArea, 'm:', 'linewidth', 2)
plot(tYearsLow, [0; W16T4.dttLowTideAreaOnshore] ./ W16T4.dttDeltaArea, 'm-', 'linewidth', 2)
% plot(tYearsLow, ([0; W2T4.dttLowTideAreaOnshore] + [0; W2T4.dttLowTideAreaOffshore]) ./ W2T4.dttDeltaArea, 'c:', 'linewidth', 2)
plot(tYearsLow, [0; W2T4.dttLowTideAreaOnshore] ./ W2T4.dttDeltaArea, 'c-', 'linewidth', 2)
grid on
set(gca, 'fontsize', 16)
legend('W0.0T4.0', 'W0.4T4.0', 'W0.8T4.0', 'W1.2T4.0', 'W1.6T4.0', 'W2.0T4.0', 'Location', 'northwest', 'numcolumns', 2, 'linewidth', 2)
xlabel('Time elapsed [yr]')
ylabel('Dimensionless delta-plain area [-]')
xticks([0:4:36])
% title('W0T4 to W2T4')
xlim([0 36])
ylim([0 1])

% T6
dttLowTideAreaPlotT6 = figure(405);
dttLowTideAreaPlotT6.Position = [120 80 1920 820];
% plot(tYearsLow, ([0; W0T6.dttLowTideAreaOnshore] + [0; W0T6.dttLowTideAreaOffshore]) ./ W0T6.dttDeltaArea, 'k:', 'linewidth', 2) % 0.01:0.01:1
plot(tYearsLow, [0; W0T6.dttLowTideAreaOnshore] ./ W0T6.dttDeltaArea, 'k-', 'linewidth', 2)
hold on
% plot(tYearsLow, ([0; W04T6.dttLowTideAreaOnshore] + [0; W04T6.dttLowTideAreaOffshore]) ./ W04T6.dttDeltaArea, 'r:', 'linewidth', 2)
plot(tYearsLow, [0; W04T6.dttLowTideAreaOnshore] ./ W04T6.dttDeltaArea, 'r-', 'linewidth', 2)
% plot(tYearsLow, ([0; W08T6.dttLowTideAreaOnshore] + [0; W08T6.dttLowTideAreaOffshore]) ./ W08T6.dttDeltaArea, 'b:', 'linewidth', 2)
plot(tYearsLow, [0; W08T6.dttLowTideAreaOnshore] ./ W08T6.dttDeltaArea, 'b-', 'linewidth', 2)
% plot(tYearsLow, ([0; W12T6.dttLowTideAreaOnshore] + [0; W12T6.dttLowTideAreaOffshore]) ./ W12T6.dttDeltaArea, 'g:', 'linewidth', 2)
plot(tYearsLow, [0; W12T6.dttLowTideAreaOnshore] ./ W12T6.dttDeltaArea, 'g-', 'linewidth', 2)
% plot(tYearsLow, ([0; W16T6.dttLowTideAreaOnshore] + [0; W16T6.dttLowTideAreaOffshore]) ./ W16T6.dttDeltaArea, 'm:', 'linewidth', 2)
plot(tYearsLow, [0; W16T6.dttLowTideAreaOnshore] ./ W16T6.dttDeltaArea, 'm-', 'linewidth', 2)
% plot(tYearsLow, ([0; W2T6.dttLowTideAreaOnshore] + [0; W2T6.dttLowTideAreaOffshore]) ./ W2T6.dttDeltaArea, 'c:', 'linewidth', 2)
plot(tYearsLow, [0; W2T6.dttLowTideAreaOnshore] ./ W2T6.dttDeltaArea, 'c-', 'linewidth', 2)
grid on
set(gca, 'fontsize', 16)
legend('W0.0T6.0', 'W0.4T6.0', 'W0.8T6.0', 'W1.2T6.0', 'W1.6T6.0', 'W2.0T6.0', 'Location', 'northwest', 'numcolumns', 2, 'linewidth', 2)
xlabel('Time elapsed [yr]')
ylabel('Dimensionless delta-plain area [-]')
xticks([0:4:36])
% title('W0T6 to W2T6')
xlim([0 36])
ylim([0 1])

%% EXPORT METRIC PLOTS
% exportgraphics(dttLowTideAreaPlotW0, '../MATLAB export/Final/dttDeltaPlainArea_W0.0.png', 'Resolution', 150);
% exportgraphics(dttLowTideAreaPlotW04, '../MATLAB export/Final/dttDeltaPlainArea_W0.4.png', 'Resolution', 150);
% exportgraphics(dttLowTideAreaPlotW08, '../MATLAB export/Final/dttDeltaPlainArea_W0.8.png', 'Resolution', 150);
% exportgraphics(dttLowTideAreaPlotW12, '../MATLAB export/Final/dttDeltaPlainArea_W1.2.png', 'Resolution', 150);
% exportgraphics(dttLowTideAreaPlotW16, '../MATLAB export/Final/dttDeltaPlainArea_W1.6.png', 'Resolution', 150);
% exportgraphics(dttLowTideAreaPlotW2, '../MATLAB export/Final/dttDeltaPlainArea_W2.0.png', 'Resolution', 150);
% 
% exportgraphics(dttLowTideAreaPlotT0, '../MATLAB export/Final/dttDeltaPlainArea_T0.0.png', 'Resolution', 150);
% exportgraphics(dttLowTideAreaPlotT1, '../MATLAB export/Final/dttDeltaPlainArea_T1.0.png', 'Resolution', 150);
% exportgraphics(dttLowTideAreaPlotT2, '../MATLAB export/Final/dttDeltaPlainArea_T2.0.png', 'Resolution', 150);
% exportgraphics(dttLowTideAreaPlotT4, '../MATLAB export/Final/dttDeltaPlainArea_T4.0.png', 'Resolution', 150);
% exportgraphics(dttLowTideAreaPlotT6, '../MATLAB export/Final/dttDeltaPlainArea_T6.0.png', 'Resolution', 150);

%% EXTENDED PLOTS
% W0.0 extended
dttLowTideAreaPlotW0ext = figure(3015);
dttLowTideAreaPlotW0ext.Position = [100 100 3840 820];
plot([tYears tYearsExt], [W0T0.dttLowTideAreaOnshore; W0T0ext.dttLowTideAreaOnshore(2:end)] ./ [W0T0.dttDeltaArea; W0T0ext.dttDeltaArea(2:end)], 'k-', 'linewidth', 2) % 0.01:0.01:1
hold on;
plot(tYearsLow, [0; W0T05.dttLowTideAreaOnshore] ./ W0T05.dttDeltaArea,  'r-', 'linewidth', 2)% 'color', [0 0 1])
plot(tYearsLow, [0; W0T1.dttLowTideAreaOnshore] ./ W0T1.dttDeltaArea, 'b-', 'linewidth', 2)%'color', [0 0.15 0.85])
plot([tYearsLow tYearsLowExt], [0; W0T2.dttLowTideAreaOnshore; W0T2ext.dttLowTideAreaOnshore] ./ [W0T2.dttDeltaArea; W0T2ext.dttDeltaArea(2:end)], 'g-', 'linewidth', 2)%'color', [0 0.3 0.7])
plot(tYearsLow, [0; W0T3.dttLowTideAreaOnshore] ./ W0T3.dttDeltaArea, 'm-', 'linewidth', 2)%'color', [0 0.45 0.55])
plot(tYearsLow, [0; W0T4.dttLowTideAreaOnshore] ./ W0T4.dttDeltaArea, 'c-', 'linewidth', 2)%'color', [0 0.6 0.4])
plot(tYearsLow, [0; W0T5.dttLowTideAreaOnshore] ./ W0T5.dttDeltaArea, '-', 'linewidth', 2, 'color', [0.2 0.8 0.5])%'color', [0 0.75 0.25])
plot(tYearsLow, [0; W0T6.dttLowTideAreaOnshore] ./ W0T6.dttDeltaArea, '-', 'linewidth', 2, 'color', [0.8 0.2 0.5])%'color', [0 0.9 0.1])
plot(tYearsHigh, [0; W0T05.dttHighTideAreaOnshore] ./ W0T05.dttDeltaArea,  'r--', 'linewidth', 2)% 'color', [0 0 1])
plot(tYearsHigh, [0; W0T1.dttHighTideAreaOnshore] ./ W0T1.dttDeltaArea, 'b--', 'linewidth', 2)%'color', [0 0.15 0.85])
plot([tYearsHigh tYearsHighExt], [0; W0T2.dttHighTideAreaOnshore; W0T2ext.dttHighTideAreaOnshore] ./ [W0T2.dttDeltaArea; W0T2ext.dttDeltaArea(2:end)], 'g--', 'linewidth', 2)%'color', [0 0.3 0.7])
grid on
set(gca, 'FontSize', 16)
legend('W0.0T0.0 total', 'W0.0T0.5 total', 'W0.0T1.0 total', 'W0.0T2.0 total', 'W0.0T3.0 total', 'W0.0T4.0 total', 'W0.0T5.0 total', 'W0.0T6.0 total', 'W0.0T0.5 upper', 'W0.0T1.0 upper', 'W0.0T2.0 upper', 'Location', 'northwest', 'numcolumns', 3, 'linewidth', 2)
xlabel('Time elapsed [yr]')
ylabel('Dimensionless total and upper delta-plain area [-]');
xticks([0:4:72])
% title('W0T0 to W0T6')
xlim([0 72])
ylim([0 1])

% W1.2 extended
dttLowTideAreaPlotW12ext = figure(3045);
dttLowTideAreaPlotW12ext.Position = [120 80 3840 820];
plot(tYears, [W12T0.dttLowTideAreaOnshore] ./ W12T0.dttDeltaArea, 'k-', 'linewidth', 2) % 0.01:0.01:1
hold on
plot(tYearsLow, [0; W12T1.dttLowTideAreaOnshore] ./ W12T1.dttDeltaArea, 'r-', 'linewidth', 2)
plot(tYearsLow, [0; W12T2.dttLowTideAreaOnshore] ./ W12T2.dttDeltaArea, 'b-', 'linewidth', 2)
plot([tYearsLow tYearsLowExt], [0; W12T4.dttLowTideAreaOnshore; W12T4ext.dttLowTideAreaOnshore] ./ [W12T4.dttDeltaArea; W12T4ext.dttDeltaArea(2:end)], 'g-', 'linewidth', 2)
plot(tYearsLow, [0; W12T6.dttLowTideAreaOnshore] ./ W12T6.dttDeltaArea, 'm-', 'linewidth', 2)
plot(tYearsHigh, [0; W12T1.dttHighTideAreaOnshore] ./ W12T1.dttDeltaArea, 'r--', 'linewidth', 2)
plot(tYearsHigh, [0; W12T2.dttHighTideAreaOnshore] ./ W12T2.dttDeltaArea, 'b--', 'linewidth', 2)
grid on
set(gca, 'fontsize', 16)
legend('W1.2T0.0', 'W1.2T1.0', 'W1.2T2.0', 'W1.2T4.0', 'W1.2T6.0', 'W1.2T1.0 upper', 'W1.2T2.0 upper', 'Location', 'northwest', 'numcolumns', 2, 'linewidth', 2)
xlabel('Time elapsed [yr]')
ylabel('Dimensionless delta-plain area [-]')
xticks([0:4:72])
% title('W1.2T0.0 to W1.2T6.0')
xlim([0 72])
ylim([0 1])

% W2.0 extended
dttLowTideAreaPlotW2ext = figure(3065);
dttLowTideAreaPlotW2ext.Position = [120 80 3840 820];
% plot(tYears, ([W2T0.dttLowTideAreaOnshore] + [W2T0.dttLowTideAreaOffshore]) ./ W2T0.dttDeltaArea, 'k-', 'linewidth', 2) % 0.01:0.01:1
plot([tYears tYearsExt], [W2T0.dttLowTideAreaOnshore; W2T0ext.dttLowTideAreaOnshore(2:end)] ./ [W2T0.dttDeltaArea; W2T0ext.dttDeltaArea(2:end)], 'k-', 'linewidth', 2)
hold on
% plot(tYearsLow, ([0; W2T1.dttLowTideAreaOnshore] + [0; W2T1.dttLowTideAreaOffshore]) ./ W2T1.dttDeltaArea, 'r-', 'linewidth', 2)
plot(tYearsLow, [0; W2T1.dttLowTideAreaOnshore] ./ W2T1.dttDeltaArea, 'r-', 'linewidth', 2)
% plot(tYearsLow, ([0; W2T2.dttLowTideAreaOnshore] + [0; W2T2.dttLowTideAreaOffshore]) ./ W2T2.dttDeltaArea, 'b-', 'linewidth', 2)
plot(tYearsLow, [0; W2T2.dttLowTideAreaOnshore] ./ W2T2.dttDeltaArea, 'b-', 'linewidth', 2)
% plot(tYearsLow, ([0; W2T4.dttLowTideAreaOnshore] + [0; W2T4.dttLowTideAreaOffshore]) ./ W2T4.dttDeltaArea, 'g-', 'linewidth', 2)
plot(tYearsLow, [0; W2T4.dttLowTideAreaOnshore] ./ W2T4.dttDeltaArea, 'g-', 'linewidth', 2)
% plot(tYearsLow, ([0; W2T6.dttLowTideAreaOnshore] + [0; W2T6.dttLowTideAreaOffshore]) ./ W2T6.dttDeltaArea, 'm-', 'linewidth', 2)
plot(tYearsLow, [0; W2T6.dttLowTideAreaOnshore] ./ W2T6.dttDeltaArea, 'm-', 'linewidth', 2)
% plot(tYearsHigh, ([0; W2T1.dttHighTideAreaOnshore] + [0; W2T1.dttHighTideAreaOffshore]) ./ W2T1.dttDeltaArea, 'r--', 'linewidth', 2)
plot(tYearsHigh, [0; W2T1.dttHighTideAreaOnshore] ./ W2T1.dttDeltaArea, 'r--', 'linewidth', 2)
% plot(tYearsHigh, ([0; W2T2.dttHighTideAreaOnshore] + [0; W2T2.dttHighTideAreaOffshore]) ./ W2T2.dttDeltaArea, 'b--', 'linewidth', 2)
plot(tYearsHigh, [0; W2T2.dttHighTideAreaOnshore] ./ W2T2.dttDeltaArea, 'b--', 'linewidth', 2)
grid on
set(gca, 'fontsize', 16)
legend('W2.0T0.0', 'W2.0T1.0', 'W2.0T2.0', 'W2.0T4.0', 'W2.0T6.0', 'W2.0T1.0 upper', 'W2.0T2.0 upper', 'Location', 'northwest', 'numcolumns', 2, 'linewidth', 2)
xlabel('Time elapsed [yr]')
ylabel('Dimensionless delta-plain area [-]')
xticks([0:4:72])
% title('W2.0T0.0 to W2.0T6.0')
xlim([0 72])
ylim([0 1])

%% AREA PLOTS (ABSOLUTE AREAS)
% wave
figure(101)
clf reset
plot(W0T0.dttDeltaArea, 'x')
hold on
plot(W0T05.dttDeltaArea, '>')
plot(W0T1.dttDeltaArea, '+')
plot(W0T2.dttDeltaArea, 's')
plot(W0T3.dttDeltaArea, '<')
plot(W0T4.dttDeltaArea, 'd')
plot(W0T5.dttDeltaArea, '^')
plot(W0T6.dttDeltaArea, '.')
legend
grid on

figure(102)
clf reset
plot(W04T0.dttDeltaArea, 'x')
hold on
plot(W04T1.dttDeltaArea, '+')
plot(W04T2.dttDeltaArea, 's')
plot(W04T4.dttDeltaArea, 'd')
plot(W04T6.dttDeltaArea, '.')
legend
grid on

figure(103)
clf reset
plot(W08T0.dttDeltaArea, 'x')
hold on
plot(W08T1.dttDeltaArea, '+')
plot(W08T2.dttDeltaArea, 's')
plot(W08T4.dttDeltaArea, 'd')
plot(W08T6.dttDeltaArea, '.')
legend
grid on

figure(104)
clf reset
plot(W12T0.dttDeltaArea, 'x')
hold on
plot(W12T1.dttDeltaArea, '+')
plot(W12T2.dttDeltaArea, 's')
plot(W12T4.dttDeltaArea, 'd')
plot(W12T6.dttDeltaArea, '.')
legend
grid on

figure(105)
clf reset
plot(W16T0.dttDeltaArea, 'x')
hold on
plot(W16T1.dttDeltaArea, '+')
plot(W16T2.dttDeltaArea, 's')
plot(W16T4.dttDeltaArea, 'd')
plot(W16T6.dttDeltaArea, '.')
legend
grid on

figure(106)
clf reset
plot(W2T0.dttDeltaArea, 'x')
hold on
plot(W2T1.dttDeltaArea, '+')
plot(W2T2.dttDeltaArea, 's')
plot(W2T4.dttDeltaArea, 'd')
plot(W2T6.dttDeltaArea, '.')
legend
grid on

% tide
figure(201)
clf reset
plot(W0T0.dttDeltaArea, 'x')
hold on
plot(W04T0.dttDeltaArea, '+')
plot(W08T0.dttDeltaArea, 's')
plot(W12T0.dttDeltaArea, 'd')
plot(W16T0.dttDeltaArea, '.')
plot(W2T0.dttDeltaArea, '^')
legend
grid on

figure(202)
clf reset
plot(W0T1.dttDeltaArea, 'x')
hold on
plot(W04T1.dttDeltaArea, '+')
plot(W08T1.dttDeltaArea, 's')
plot(W12T1.dttDeltaArea, 'd')
plot(W16T1.dttDeltaArea, '.')
plot(W2T1.dttDeltaArea, '^')
legend
grid on

figure(203)
clf reset
plot(W0T2.dttDeltaArea, 'x')
hold on
plot(W04T2.dttDeltaArea, '+')
plot(W08T2.dttDeltaArea, 's')
plot(W12T2.dttDeltaArea, 'd')
plot(W16T2.dttDeltaArea, '.')
plot(W2T2.dttDeltaArea, '^')
legend
grid on

figure(204)
clf reset
plot(W0T4.dttDeltaArea, 'x')
hold on
plot(W04T4.dttDeltaArea, '+')
plot(W08T4.dttDeltaArea, 's')
plot(W12T4.dttDeltaArea, 'd')
plot(W16T4.dttDeltaArea, '.')
plot(W2T4.dttDeltaArea, '^')
legend
grid on

figure(205)
clf reset
plot(W0T6.dttDeltaArea, 'x')
hold on
plot(W04T6.dttDeltaArea, '+')
plot(W08T6.dttDeltaArea, 's')
plot(W12T6.dttDeltaArea, 'd')
plot(W16T6.dttDeltaArea, '.')
plot(W2T6.dttDeltaArea, '^')
legend
grid on

%% MULTI-TILE PLOTS
dttTidalAreaMultiPlotW = figure(501);
dttTidalAreaMultiPlotW.Position = [120 -400 1280 1920];
tiledlayout(2,3)
nexttile
% colour scheme isn't working
plot(tYears, W0T0.dttLowTideAreaOnshore ./ W0T0.dttDeltaArea, '-', 'color', [0 1 0], 'linewidth', 0.5) % 0.01:0.01:1
hold on;
plot(tYearsLow, [0; W0T05.dttLowTideAreaOnshore] ./ W0T05.dttDeltaArea, '-', 'color', [0 11/12 1/12], 'linewidth', 0.5)% 'color', [0 0 1])
plot(tYearsLow, [0; W0T1.dttLowTideAreaOnshore] ./ W0T1.dttDeltaArea, '-', 'color', [0 5/6 1/6], 'linewidth', 0.5)%'color', [0 0.15 0.85])
plot(tYearsLow, [0; W0T2.dttLowTideAreaOnshore] ./ W0T2.dttDeltaArea, '-', 'color', [0 4/6 2/6], 'linewidth', 0.5)%'color', [0 0.3 0.7])
plot(tYearsLow, [0; W0T3.dttLowTideAreaOnshore] ./ W0T3.dttDeltaArea, '-', 'color', [0 3/6 3/6], 'linewidth', 0.5)%'color', [0 0.45 0.55])
plot(tYearsLow, [0; W0T4.dttLowTideAreaOnshore] ./ W0T4.dttDeltaArea, '-', 'color', [0 2/6 4/6], 'linewidth', 0.5)%'color', [0 0.6 0.4])
plot(tYearsLow, [0; W0T5.dttLowTideAreaOnshore] ./ W0T5.dttDeltaArea, '-', 'color', [0 1/6 5/6], 'linewidth', 0.5)%'color', [0 0.75 0.25])
plot(tYearsLow, [0; W0T6.dttLowTideAreaOnshore] ./ W0T6.dttDeltaArea, '-', 'color', [0 0 6/6], 'linewidth', 0.5)%'color', [0 0.9 0.1])
plot(tYearsHigh, [0; W0T05.dttHighTideAreaOnshore] ./ W0T05.dttDeltaArea, '--', 'color', [0 11/12 1/12], 'linewidth', 0.5)% 'color', [0 0 1])
plot(tYearsHigh, [0; W0T1.dttHighTideAreaOnshore] ./ W0T1.dttDeltaArea, '--', 'color', [0 5/6 1/6], 'linewidth', 0.5)%'color', [0 0.15 0.85])
plot(tYearsHigh, [0; W0T2.dttHighTideAreaOnshore] ./ W0T2.dttDeltaArea, '--', 'color', [0 4/6 2/6], 'linewidth', 0.5)%'color', [0 0.3 0.7])
grid on
set(gca, 'FontSize', 8)
% legend('W0.0T0.0', 'W0.0T0.5', 'W0.0T1.0', 'W0.0T2.0', 'W0.0T3.0', 'W0.0T4.0', 'W0.0T5.0', 'W0.0T6.0', 'W0.0T0.5 upper', 'W0.0T1.0 upper', 'W0.0T2.0 upper', 'Location', 'northwest', 'numcolumns', 3, 'linewidth', 2)
xlabel('Time elapsed [yr]')
ylabel('Dimensionless delta-plain area [-]');
xticks([0:4:36])
% title('W0T0 to W0T6')
xlim([0 36])
ylim([0 1])