% Date:     21/09/2023
% Author:   ERS

% This script loads and plots various metrics, reduced to temporal
% averages.

% v2 (30/10/2023) - Adding new sims (T3 and T5 tidal)

%% IMPORT AND ARRANGE DATA 1
load('..\MATLAB datastore\W0.0T0.0_metrics_HPC.mat', 'dttIsDelta', 'dttChi', 'dttChiInner', 'dttChiOuter', 'dttChannelMobility', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber', 'dttLowTideAreaOnshore', 'mf')
W0T0.dttIsDelta = dttIsDelta;
W0T0.dttChi = dttChi;
W0T0.dttChiInner = dttChiInner;
W0T0.dttChiOuter = dttChiOuter;
W0T0.dttChannelMobility = dttChannelMobility;
W0T0.dttChannelActiveNo = dttChannelActiveNo;
W0T0.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W0T0.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
W0T0.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
load('..\MATLAB datastore\W0.0T0.5_metrics_HPC.mat', 'dttIsDelta', 'dttChi', 'dttChiInner', 'dttChiOuter', 'dttChannelMobility', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber', 'dttLowTideAreaOnshore', 'dttHighTideAreaOnshore')
W0T05.dttIsDelta = dttIsDelta;
W0T05.dttChi = dttChi;
W0T05.dttChiInner = dttChiInner;
W0T05.dttChiOuter = dttChiOuter;
W0T05.dttChannelMobility = dttChannelMobility;
W0T05.dttChannelActiveNo = dttChannelActiveNo;
W0T05.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W0T05.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
W0T05.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W0T05.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
load('..\MATLAB datastore\W0.0T1.0_metrics_HPC.mat', 'dttIsDelta', 'dttChi', 'dttChiInner', 'dttChiOuter', 'dttChannelMobility', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber', 'dttLowTideAreaOnshore', 'dttHighTideAreaOnshore')
W0T1.dttIsDelta = dttIsDelta;
W0T1.dttChi = dttChi;
W0T1.dttChiInner = dttChiInner;
W0T1.dttChiOuter = dttChiOuter;
W0T1.dttChannelMobility = dttChannelMobility;
W0T1.dttChannelActiveNo = dttChannelActiveNo;
W0T1.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W0T1.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
W0T1.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W0T1.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
load('..\MATLAB datastore\W0.0T2.0_metrics_HPC.mat', 'dttIsDelta', 'dttChi', 'dttChiInner', 'dttChiOuter', 'dttChannelMobility', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber', 'dttLowTideAreaOnshore', 'dttHighTideAreaOnshore')
W0T2.dttIsDelta = dttIsDelta;
W0T2.dttChi = dttChi;
W0T2.dttChiInner = dttChiInner;
W0T2.dttChiOuter = dttChiOuter;
W0T2.dttChannelMobility = dttChannelMobility;
W0T2.dttChannelActiveNo = dttChannelActiveNo;
W0T2.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W0T2.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
W0T2.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W0T2.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
load('..\MATLAB datastore\W0.0T3.0_metrics_HPC.mat', 'dttIsDelta', 'dttChi', 'dttChiInner', 'dttChiOuter', 'dttChannelMobility', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber', 'dttLowTideAreaOnshore', 'dttHighTideAreaOnshore')
W0T3.dttIsDelta = dttIsDelta;
W0T3.dttChi = dttChi;
W0T3.dttChiInner = dttChiInner;
W0T3.dttChiOuter = dttChiOuter;
W0T3.dttChannelMobility = dttChannelMobility;
W0T3.dttChannelActiveNo = dttChannelActiveNo;
W0T3.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W0T3.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
W0T3.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W0T3.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
load('..\MATLAB datastore\W0.0T4.0_metrics_HPC.mat', 'dttIsDelta', 'dttChi', 'dttChiInner', 'dttChiOuter', 'dttChannelMobility', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber', 'dttLowTideAreaOnshore', 'dttHighTideAreaOnshore')
W0T4.dttIsDelta = dttIsDelta;
W0T4.dttChi = dttChi;
W0T4.dttChiInner = dttChiInner;
W0T4.dttChiOuter = dttChiOuter;
W0T4.dttChannelMobility = dttChannelMobility;
W0T4.dttChannelActiveNo = dttChannelActiveNo;
W0T4.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W0T4.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
W0T4.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W0T4.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
load('..\MATLAB datastore\W0.0T5.0_metrics_HPC.mat', 'dttIsDelta', 'dttChi', 'dttChiInner', 'dttChiOuter', 'dttChannelMobility', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber', 'dttLowTideAreaOnshore', 'dttHighTideAreaOnshore')
W0T5.dttIsDelta = dttIsDelta;
W0T5.dttChi = dttChi;
W0T5.dttChiInner = dttChiInner;
W0T5.dttChiOuter = dttChiOuter;
W0T5.dttChannelMobility = dttChannelMobility;
W0T5.dttChannelActiveNo = dttChannelActiveNo;
W0T5.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W0T5.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
W0T5.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W0T5.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
load('..\MATLAB datastore\W0.0T6.0_metrics_HPC.mat', 'dttIsDelta', 'dttChi', 'dttChiInner', 'dttChiOuter', 'dttChannelMobility', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber', 'dttLowTideAreaOnshore', 'dttHighTideAreaOnshore')
W0T6.dttIsDelta = dttIsDelta;
W0T6.dttChi = dttChi;
W0T6.dttChiInner = dttChiInner;
W0T6.dttChiOuter = dttChiOuter;
W0T6.dttChannelMobility = dttChannelMobility;
W0T6.dttChannelActiveNo = dttChannelActiveNo;
W0T6.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W0T6.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
W0T6.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W0T6.dttHighTideAreaOnshore = dttHighTideAreaOnshore;

load('..\MATLAB datastore\W0.4T0.0_metrics_HPC.mat', 'dttIsDelta', 'dttChi', 'dttChiInner', 'dttChiOuter', 'dttChannelMobility', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber', 'dttLowTideAreaOnshore')
W04T0.dttIsDelta = dttIsDelta;
W04T0.dttChi = dttChi;
W04T0.dttChiInner = dttChiInner;
W04T0.dttChiOuter = dttChiOuter;
W04T0.dttChannelMobility = dttChannelMobility;
W04T0.dttChannelActiveNo = dttChannelActiveNo;
W04T0.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W04T0.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
W04T0.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
load('..\MATLAB datastore\W0.4T1.0_metrics_HPC.mat', 'dttIsDelta', 'dttChi', 'dttChiInner', 'dttChiOuter', 'dttChannelMobility', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber', 'dttLowTideAreaOnshore', 'dttHighTideAreaOnshore')
W04T1.dttIsDelta = dttIsDelta;
W04T1.dttChi = dttChi;
W04T1.dttChiInner = dttChiInner;
W04T1.dttChiOuter = dttChiOuter;
W04T1.dttChannelMobility = dttChannelMobility;
W04T1.dttChannelActiveNo = dttChannelActiveNo;
W04T1.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W04T1.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
W04T1.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W04T1.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
load('..\MATLAB datastore\W0.4T2.0_metrics_HPC.mat', 'dttIsDelta', 'dttChi', 'dttChiInner', 'dttChiOuter', 'dttChannelMobility', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber', 'dttLowTideAreaOnshore', 'dttHighTideAreaOnshore')
W04T2.dttIsDelta = dttIsDelta;
W04T2.dttChi = dttChi;
W04T2.dttChiInner = dttChiInner;
W04T2.dttChiOuter = dttChiOuter;
W04T2.dttChannelMobility = dttChannelMobility;
W04T2.dttChannelActiveNo = dttChannelActiveNo;
W04T2.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W04T2.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
W04T2.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W04T2.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
load('..\MATLAB datastore\W0.4T3.0_metrics_HPC.mat', 'dttIsDelta', 'dttChi', 'dttChiInner', 'dttChiOuter', 'dttChannelMobility', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber', 'dttLowTideAreaOnshore', 'dttHighTideAreaOnshore')
W04T3.dttIsDelta = dttIsDelta;
W04T3.dttChi = dttChi;
W04T3.dttChiInner = dttChiInner;
W04T3.dttChiOuter = dttChiOuter;
W04T3.dttChannelMobility = dttChannelMobility;
W04T3.dttChannelActiveNo = dttChannelActiveNo;
W04T3.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W04T3.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
W04T3.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W04T3.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
load('..\MATLAB datastore\W0.4T4.0_metrics_HPC.mat', 'dttIsDelta', 'dttChi', 'dttChiInner', 'dttChiOuter', 'dttChannelMobility', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber', 'dttLowTideAreaOnshore', 'dttHighTideAreaOnshore')
W04T4.dttIsDelta = dttIsDelta;
W04T4.dttChi = dttChi;
W04T4.dttChiInner = dttChiInner;
W04T4.dttChiOuter = dttChiOuter;
W04T4.dttChannelMobility = dttChannelMobility;
W04T4.dttChannelActiveNo = dttChannelActiveNo;
W04T4.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W04T4.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
W04T4.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W04T4.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
load('..\MATLAB datastore\W0.4T5.0_metrics_HPC.mat', 'dttIsDelta', 'dttChi', 'dttChiInner', 'dttChiOuter', 'dttChannelMobility', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber', 'dttLowTideAreaOnshore', 'dttHighTideAreaOnshore')
W04T5.dttIsDelta = dttIsDelta;
W04T5.dttChi = dttChi;
W04T5.dttChiInner = dttChiInner;
W04T5.dttChiOuter = dttChiOuter;
W04T5.dttChannelMobility = dttChannelMobility;
W04T5.dttChannelActiveNo = dttChannelActiveNo;
W04T5.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W04T5.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
W04T5.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W04T5.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
load('..\MATLAB datastore\W0.4T6.0_metrics_HPC.mat', 'dttIsDelta', 'dttChi', 'dttChiInner', 'dttChiOuter', 'dttChannelMobility', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber', 'dttLowTideAreaOnshore', 'dttHighTideAreaOnshore')
W04T6.dttIsDelta = dttIsDelta;
W04T6.dttChi = dttChi;
W04T6.dttChiInner = dttChiInner;
W04T6.dttChiOuter = dttChiOuter;
W04T6.dttChannelMobility = dttChannelMobility;
W04T6.dttChannelActiveNo = dttChannelActiveNo;
W04T6.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W04T6.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
W04T6.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W04T6.dttHighTideAreaOnshore = dttHighTideAreaOnshore;

load('..\MATLAB datastore\W0.8T0.0_metrics_HPC.mat', 'dttIsDelta', 'dttChi', 'dttChiInner', 'dttChiOuter', 'dttChannelMobility', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber', 'dttLowTideAreaOnshore')
W08T0.dttIsDelta = dttIsDelta;
W08T0.dttChi = dttChi;
W08T0.dttChiInner = dttChiInner;
W08T0.dttChiOuter = dttChiOuter;
W08T0.dttChannelMobility = dttChannelMobility;
W08T0.dttChannelActiveNo = dttChannelActiveNo;
W08T0.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W08T0.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
W08T0.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
load('..\MATLAB datastore\W0.8T1.0_metrics_HPC.mat', 'dttIsDelta', 'dttChi', 'dttChiInner', 'dttChiOuter', 'dttChannelMobility', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber', 'dttLowTideAreaOnshore', 'dttHighTideAreaOnshore')
W08T1.dttIsDelta = dttIsDelta;
W08T1.dttChi = dttChi;
W08T1.dttChiInner = dttChiInner;
W08T1.dttChiOuter = dttChiOuter;
W08T1.dttChannelMobility = dttChannelMobility;
W08T1.dttChannelActiveNo = dttChannelActiveNo;
W08T1.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W08T1.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
W08T1.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W08T1.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
load('..\MATLAB datastore\W0.8T2.0_metrics_HPC.mat', 'dttIsDelta', 'dttChi', 'dttChiInner', 'dttChiOuter', 'dttChannelMobility', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber', 'dttLowTideAreaOnshore', 'dttHighTideAreaOnshore')
W08T2.dttIsDelta = dttIsDelta;
W08T2.dttChi = dttChi;
W08T2.dttChiInner = dttChiInner;
W08T2.dttChiOuter = dttChiOuter;
W08T2.dttChannelMobility = dttChannelMobility;
W08T2.dttChannelActiveNo = dttChannelActiveNo;
W08T2.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W08T2.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
W08T2.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W08T2.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
load('..\MATLAB datastore\W0.8T3.0_metrics_HPC.mat', 'dttIsDelta', 'dttChi', 'dttChiInner', 'dttChiOuter', 'dttChannelMobility', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber', 'dttLowTideAreaOnshore', 'dttHighTideAreaOnshore')
W08T3.dttIsDelta = dttIsDelta;
W08T3.dttChi = dttChi;
W08T3.dttChiInner = dttChiInner;
W08T3.dttChiOuter = dttChiOuter;
W08T3.dttChannelMobility = dttChannelMobility;
W08T3.dttChannelActiveNo = dttChannelActiveNo;
W08T3.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W08T3.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
W08T3.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W08T3.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
load('..\MATLAB datastore\W0.8T4.0_metrics_HPC.mat', 'dttIsDelta', 'dttChi', 'dttChiInner', 'dttChiOuter', 'dttChannelMobility', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber', 'dttLowTideAreaOnshore', 'dttHighTideAreaOnshore')
W08T4.dttIsDelta = dttIsDelta;
W08T4.dttChi = dttChi;
W08T4.dttChiInner = dttChiInner;
W08T4.dttChiOuter = dttChiOuter;
W08T4.dttChannelMobility = dttChannelMobility;
W08T4.dttChannelActiveNo = dttChannelActiveNo;
W08T4.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W08T4.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
W08T4.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W08T4.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
load('..\MATLAB datastore\W0.8T5.0_metrics_HPC.mat', 'dttIsDelta', 'dttChi', 'dttChiInner', 'dttChiOuter', 'dttChannelMobility', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber', 'dttLowTideAreaOnshore', 'dttHighTideAreaOnshore')
W08T5.dttIsDelta = dttIsDelta;
W08T5.dttChi = dttChi;
W08T5.dttChiInner = dttChiInner;
W08T5.dttChiOuter = dttChiOuter;
W08T5.dttChannelMobility = dttChannelMobility;
W08T5.dttChannelActiveNo = dttChannelActiveNo;
W08T5.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W08T5.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
W08T5.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W08T5.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
load('..\MATLAB datastore\W0.8T6.0_metrics_HPC.mat', 'dttIsDelta', 'dttChi', 'dttChiInner', 'dttChiOuter', 'dttChannelMobility', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber', 'dttLowTideAreaOnshore', 'dttHighTideAreaOnshore')
W08T6.dttIsDelta = dttIsDelta;
W08T6.dttChi = dttChi;
W08T6.dttChiInner = dttChiInner;
W08T6.dttChiOuter = dttChiOuter;
W08T6.dttChannelMobility = dttChannelMobility;
W08T6.dttChannelActiveNo = dttChannelActiveNo;
W08T6.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W08T6.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
W08T6.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W08T6.dttHighTideAreaOnshore = dttHighTideAreaOnshore;

load('..\MATLAB datastore\W1.2T0.0_metrics_HPC.mat', 'dttIsDelta', 'dttChi', 'dttChiInner', 'dttChiOuter', 'dttChannelMobility', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber', 'dttLowTideAreaOnshore')
W12T0.dttIsDelta = dttIsDelta;
W12T0.dttChi = dttChi;
W12T0.dttChiInner = dttChiInner;
W12T0.dttChiOuter = dttChiOuter;
W12T0.dttChannelMobility = dttChannelMobility;
W12T0.dttChannelActiveNo = dttChannelActiveNo;
W12T0.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W12T0.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
W12T0.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
load('..\MATLAB datastore\W1.2T1.0_metrics_HPC.mat', 'dttIsDelta', 'dttChi', 'dttChiInner', 'dttChiOuter', 'dttChannelMobility', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber', 'dttLowTideAreaOnshore', 'dttHighTideAreaOnshore')
W12T1.dttIsDelta = dttIsDelta;
W12T1.dttChi = dttChi;
W12T1.dttChiInner = dttChiInner;
W12T1.dttChiOuter = dttChiOuter;
W12T1.dttChannelMobility = dttChannelMobility;
W12T1.dttChannelActiveNo = dttChannelActiveNo;
W12T1.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W12T1.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
W12T1.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W12T1.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
load('..\MATLAB datastore\W1.2T2.0_metrics_HPC.mat', 'dttIsDelta', 'dttChi', 'dttChiInner', 'dttChiOuter', 'dttChannelMobility', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber', 'dttLowTideAreaOnshore', 'dttHighTideAreaOnshore')
W12T2.dttIsDelta = dttIsDelta;
W12T2.dttChi = dttChi;
W12T2.dttChiInner = dttChiInner;
W12T2.dttChiOuter = dttChiOuter;
W12T2.dttChannelMobility = dttChannelMobility;
W12T2.dttChannelActiveNo = dttChannelActiveNo;
W12T2.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W12T2.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
W12T2.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W12T2.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
load('..\MATLAB datastore\W1.2T3.0_metrics_HPC.mat', 'dttIsDelta', 'dttChi', 'dttChiInner', 'dttChiOuter', 'dttChannelMobility', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber', 'dttLowTideAreaOnshore', 'dttHighTideAreaOnshore')
W12T3.dttIsDelta = dttIsDelta;
W12T3.dttChi = dttChi;
W12T3.dttChiInner = dttChiInner;
W12T3.dttChiOuter = dttChiOuter;
W12T3.dttChannelMobility = dttChannelMobility;
W12T3.dttChannelActiveNo = dttChannelActiveNo;
W12T3.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W12T3.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
W12T3.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W12T3.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
load('..\MATLAB datastore\W1.2T4.0_metrics_HPC.mat', 'dttIsDelta', 'dttChi', 'dttChiInner', 'dttChiOuter', 'dttChannelMobility', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber', 'dttLowTideAreaOnshore', 'dttHighTideAreaOnshore')
W12T4.dttIsDelta = dttIsDelta;
W12T4.dttChi = dttChi;
W12T4.dttChiInner = dttChiInner;
W12T4.dttChiOuter = dttChiOuter;
W12T4.dttChannelMobility = dttChannelMobility;
W12T4.dttChannelActiveNo = dttChannelActiveNo;
W12T4.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W12T4.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
W12T4.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W12T4.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
load('..\MATLAB datastore\W1.2T5.0_metrics_HPC.mat', 'dttIsDelta', 'dttChi', 'dttChiInner', 'dttChiOuter', 'dttChannelMobility', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber', 'dttLowTideAreaOnshore', 'dttHighTideAreaOnshore')
W12T5.dttIsDelta = dttIsDelta;
W12T5.dttChi = dttChi;
W12T5.dttChiInner = dttChiInner;
W12T5.dttChiOuter = dttChiOuter;
W12T5.dttChannelMobility = dttChannelMobility;
W12T5.dttChannelActiveNo = dttChannelActiveNo;
W12T5.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W12T5.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
W12T5.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W12T5.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
load('..\MATLAB datastore\W1.2T6.0_metrics_HPC.mat', 'dttIsDelta', 'dttChi', 'dttChiInner', 'dttChiOuter', 'dttChannelMobility', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber', 'dttLowTideAreaOnshore', 'dttHighTideAreaOnshore')
W12T6.dttIsDelta = dttIsDelta;
W12T6.dttChi = dttChi;
W12T6.dttChiInner = dttChiInner;
W12T6.dttChiOuter = dttChiOuter;
W12T6.dttChannelMobility = dttChannelMobility;
W12T6.dttChannelActiveNo = dttChannelActiveNo;
W12T6.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W12T6.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
W12T6.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W12T6.dttHighTideAreaOnshore = dttHighTideAreaOnshore;

load('..\MATLAB datastore\W1.6T0.0_metrics_HPC.mat', 'dttIsDelta', 'dttChi', 'dttChiInner', 'dttChiOuter', 'dttChannelMobility', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber', 'dttLowTideAreaOnshore')
W16T0.dttIsDelta = dttIsDelta;
W16T0.dttChi = dttChi;
W16T0.dttChiInner = dttChiInner;
W16T0.dttChiOuter = dttChiOuter;
W16T0.dttChannelMobility = dttChannelMobility;
W16T0.dttChannelActiveNo = dttChannelActiveNo;
W16T0.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W16T0.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
W16T0.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
load('..\MATLAB datastore\W1.6T1.0_metrics_HPC.mat', 'dttIsDelta', 'dttChi', 'dttChiInner', 'dttChiOuter', 'dttChannelMobility', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber', 'dttLowTideAreaOnshore', 'dttHighTideAreaOnshore')
W16T1.dttIsDelta = dttIsDelta;
W16T1.dttChi = dttChi;
W16T1.dttChiInner = dttChiInner;
W16T1.dttChiOuter = dttChiOuter;
W16T1.dttChannelMobility = dttChannelMobility;
W16T1.dttChannelActiveNo = dttChannelActiveNo;
W16T1.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W16T1.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
W16T1.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W16T1.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
load('..\MATLAB datastore\W1.6T2.0_metrics_HPC.mat', 'dttIsDelta', 'dttChi', 'dttChiInner', 'dttChiOuter', 'dttChannelMobility', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber', 'dttLowTideAreaOnshore', 'dttHighTideAreaOnshore')
W16T2.dttIsDelta = dttIsDelta;
W16T2.dttChi = dttChi;
W16T2.dttChiInner = dttChiInner;
W16T2.dttChiOuter = dttChiOuter;
W16T2.dttChannelMobility = dttChannelMobility;
W16T2.dttChannelActiveNo = dttChannelActiveNo;
W16T2.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W16T2.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
W16T2.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W16T2.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
load('..\MATLAB datastore\W1.6T3.0_metrics_HPC.mat', 'dttIsDelta', 'dttChi', 'dttChiInner', 'dttChiOuter', 'dttChannelMobility', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber', 'dttLowTideAreaOnshore', 'dttHighTideAreaOnshore')
W16T3.dttIsDelta = dttIsDelta;
W16T3.dttChi = dttChi;
W16T3.dttChiInner = dttChiInner;
W16T3.dttChiOuter = dttChiOuter;
W16T3.dttChannelMobility = dttChannelMobility;
W16T3.dttChannelActiveNo = dttChannelActiveNo;
W16T3.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W16T3.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
W16T3.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W16T3.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
load('..\MATLAB datastore\W1.6T4.0_metrics_HPC.mat', 'dttIsDelta', 'dttChi', 'dttChiInner', 'dttChiOuter', 'dttChannelMobility', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber', 'dttLowTideAreaOnshore', 'dttHighTideAreaOnshore')
W16T4.dttIsDelta = dttIsDelta;
W16T4.dttChi = dttChi;
W16T4.dttChiInner = dttChiInner;
W16T4.dttChiOuter = dttChiOuter;
W16T4.dttChannelMobility = dttChannelMobility;
W16T4.dttChannelActiveNo = dttChannelActiveNo;
W16T4.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W16T4.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
W16T4.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W16T4.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
load('..\MATLAB datastore\W1.6T5.0_metrics_HPC.mat', 'dttIsDelta', 'dttChi', 'dttChiInner', 'dttChiOuter', 'dttChannelMobility', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber', 'dttLowTideAreaOnshore', 'dttHighTideAreaOnshore')
W16T5.dttIsDelta = dttIsDelta;
W16T5.dttChi = dttChi;
W16T5.dttChiInner = dttChiInner;
W16T5.dttChiOuter = dttChiOuter;
W16T5.dttChannelMobility = dttChannelMobility;
W16T5.dttChannelActiveNo = dttChannelActiveNo;
W16T5.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W16T5.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
W16T5.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W16T5.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
load('..\MATLAB datastore\W1.6T6.0_metrics_HPC.mat', 'dttIsDelta', 'dttChi', 'dttChiInner', 'dttChiOuter', 'dttChannelMobility', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber', 'dttLowTideAreaOnshore', 'dttHighTideAreaOnshore')
W16T6.dttIsDelta = dttIsDelta;
W16T6.dttChi = dttChi;
W16T6.dttChiInner = dttChiInner;
W16T6.dttChiOuter = dttChiOuter;
W16T6.dttChannelMobility = dttChannelMobility;
W16T6.dttChannelActiveNo = dttChannelActiveNo;
W16T6.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W16T6.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
W16T6.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W16T6.dttHighTideAreaOnshore = dttHighTideAreaOnshore;

load('..\MATLAB datastore\W2.0T0.0_metrics_HPC.mat', 'dttIsDelta', 'dttChi', 'dttChiInner', 'dttChiOuter', 'dttChannelMobility', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber', 'dttLowTideAreaOnshore')
W2T0.dttIsDelta = dttIsDelta;
W2T0.dttChi = dttChi;
W2T0.dttChiInner = dttChiInner;
W2T0.dttChiOuter = dttChiOuter;
W2T0.dttChannelMobility = dttChannelMobility;
W2T0.dttChannelActiveNo = dttChannelActiveNo;
W2T0.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W2T0.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
W2T0.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
load('..\MATLAB datastore\W2.0T1.0_metrics_HPC.mat', 'dttIsDelta', 'dttChi', 'dttChiInner', 'dttChiOuter', 'dttChannelMobility', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber', 'dttLowTideAreaOnshore', 'dttHighTideAreaOnshore')
W2T1.dttIsDelta = dttIsDelta;
W2T1.dttChi = dttChi;
W2T1.dttChiInner = dttChiInner;
W2T1.dttChiOuter = dttChiOuter;
W2T1.dttChannelMobility = dttChannelMobility;
W2T1.dttChannelActiveNo = dttChannelActiveNo;
W2T1.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W2T1.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
W2T1.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W2T1.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
load('..\MATLAB datastore\W2.0T2.0_metrics_HPC.mat', 'dttIsDelta', 'dttChi', 'dttChiInner', 'dttChiOuter', 'dttChannelMobility', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber', 'dttLowTideAreaOnshore', 'dttHighTideAreaOnshore')
W2T2.dttIsDelta = dttIsDelta;
W2T2.dttChi = dttChi;
W2T2.dttChiInner = dttChiInner;
W2T2.dttChiOuter = dttChiOuter;
W2T2.dttChannelMobility = dttChannelMobility;
W2T2.dttChannelActiveNo = dttChannelActiveNo;
W2T2.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W2T2.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
W2T2.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W2T2.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
load('..\MATLAB datastore\W2.0T3.0_metrics_HPC.mat', 'dttIsDelta', 'dttChi', 'dttChiInner', 'dttChiOuter', 'dttChannelMobility', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber', 'dttLowTideAreaOnshore', 'dttHighTideAreaOnshore')
W2T3.dttIsDelta = dttIsDelta;
W2T3.dttChi = dttChi;
W2T3.dttChiInner = dttChiInner;
W2T3.dttChiOuter = dttChiOuter;
W2T3.dttChannelMobility = dttChannelMobility;
W2T3.dttChannelActiveNo = dttChannelActiveNo;
W2T3.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W2T3.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
W2T3.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W2T3.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
load('..\MATLAB datastore\W2.0T4.0_metrics_HPC.mat', 'dttIsDelta', 'dttChi', 'dttChiInner', 'dttChiOuter', 'dttChannelMobility', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber', 'dttLowTideAreaOnshore', 'dttHighTideAreaOnshore')
W2T4.dttIsDelta = dttIsDelta;
W2T4.dttChi = dttChi;
W2T4.dttChiInner = dttChiInner;
W2T4.dttChiOuter = dttChiOuter;
W2T4.dttChannelMobility = dttChannelMobility;
W2T4.dttChannelActiveNo = dttChannelActiveNo;
W2T4.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W2T4.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
W2T4.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W2T4.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
load('..\MATLAB datastore\W2.0T5.0_metrics_HPC.mat', 'dttIsDelta', 'dttChi', 'dttChiInner', 'dttChiOuter', 'dttChannelMobility', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber', 'dttLowTideAreaOnshore', 'dttHighTideAreaOnshore')
W2T5.dttIsDelta = dttIsDelta;
W2T5.dttChi = dttChi;
W2T5.dttChiInner = dttChiInner;
W2T5.dttChiOuter = dttChiOuter;
W2T5.dttChannelMobility = dttChannelMobility;
W2T5.dttChannelActiveNo = dttChannelActiveNo;
W2T5.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W2T5.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
W2T5.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W2T5.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
load('..\MATLAB datastore\W2.0T6.0_metrics_HPC.mat', 'dttIsDelta', 'dttChi', 'dttChiInner', 'dttChiOuter', 'dttChannelMobility', 'dttChannelActiveSkeletonNodesCount', 'dttChannelActiveNo', 'dttChannelActiveEulerNumber', 'dttLowTideAreaOnshore', 'dttHighTideAreaOnshore')
W2T6.dttIsDelta = dttIsDelta;
W2T6.dttChi = dttChi;
W2T6.dttChiInner = dttChiInner;
W2T6.dttChiOuter = dttChiOuter;
W2T6.dttChannelMobility = dttChannelMobility;
W2T6.dttChannelActiveNo = dttChannelActiveNo;
W2T6.dttChannelActiveSkeletonNodesCount = dttChannelActiveSkeletonNodesCount;
W2T6.dttChannelActiveEulerNumber = dttChannelActiveEulerNumber;
W2T6.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W2T6.dttHighTideAreaOnshore = dttHighTideAreaOnshore;

% Clean up workspace
clear -regexp ^dtt ^dz;

%% IMPORT AND ARRANGE DATA 2
% W0s
load('../MATLAB datastore/dttW0.0T0.0sedimentSpreading.mat');
W0T0.xCentroid = xCentroid;
W0T0.xFirstMoment = xFirstMoment;
W0T0.xSecondMoment = xSecondMoment;
W0T0.xSigma = xSigma;
W0T0.xVol = xVol;
W0T0.yCentroid = yCentroid;
W0T0.yFirstMoment = yFirstMoment;
W0T0.ySecondMoment = ySecondMoment;
W0T0.ySigma = ySigma;
W0T0.yVol = yVol;
W0T0.zCentroid = zCentroid;
W0T0.zFirstMoment = zFirstMoment;
W0T0.zSecondMoment = zSecondMoment;
W0T0.zSigma = zSigma;
W0T0.zVol = zVol;

load('../MATLAB datastore/dttW0.0T0.5sedimentSpreading.mat');
W0T05.xCentroid = xCentroid;
W0T05.xFirstMoment = xFirstMoment;
W0T05.xSecondMoment = xSecondMoment;
W0T05.xSigma = xSigma;
W0T05.xVol = xVol;
W0T05.yCentroid = yCentroid;
W0T05.yFirstMoment = yFirstMoment;
W0T05.ySecondMoment = ySecondMoment;
W0T05.ySigma = ySigma;
W0T05.yVol = yVol;
W0T05.zCentroid = zCentroid;
W0T05.zFirstMoment = zFirstMoment;
W0T05.zSecondMoment = zSecondMoment;
W0T05.zSigma = zSigma;
W0T05.zVol = zVol;

load('../MATLAB datastore/dttW0.0T1.0sedimentSpreading.mat');
W0T1.xCentroid = xCentroid;
W0T1.xFirstMoment = xFirstMoment;
W0T1.xSecondMoment = xSecondMoment;
W0T1.xSigma = xSigma;
W0T1.xVol = xVol;
W0T1.yCentroid = yCentroid;
W0T1.yFirstMoment = yFirstMoment;
W0T1.ySecondMoment = ySecondMoment;
W0T1.ySigma = ySigma;
W0T1.yVol = yVol;
W0T1.zCentroid = zCentroid;
W0T1.zFirstMoment = zFirstMoment;
W0T1.zSecondMoment = zSecondMoment;
W0T1.zSigma = zSigma;
W0T1.zVol = zVol;

load('../MATLAB datastore/dttW0.0T2.0sedimentSpreading.mat');
W0T2.xCentroid = xCentroid;
W0T2.xFirstMoment = xFirstMoment;
W0T2.xSecondMoment = xSecondMoment;
W0T2.xSigma = xSigma;
W0T2.xVol = xVol;
W0T2.yCentroid = yCentroid;
W0T2.yFirstMoment = yFirstMoment;
W0T2.ySecondMoment = ySecondMoment;
W0T2.ySigma = ySigma;
W0T2.yVol = yVol;
W0T2.zCentroid = zCentroid;
W0T2.zFirstMoment = zFirstMoment;
W0T2.zSecondMoment = zSecondMoment;
W0T2.zSigma = zSigma;
W0T2.zVol = zVol;

load('../MATLAB datastore/dttW0.0T3.0sedimentSpreading.mat');
W0T3.xCentroid = xCentroid;
W0T3.xFirstMoment = xFirstMoment;
W0T3.xSecondMoment = xSecondMoment;
W0T3.xSigma = xSigma;
W0T3.xVol = xVol;
W0T3.yCentroid = yCentroid;
W0T3.yFirstMoment = yFirstMoment;
W0T3.ySecondMoment = ySecondMoment;
W0T3.ySigma = ySigma;
W0T3.yVol = yVol;
W0T3.zCentroid = zCentroid;
W0T3.zFirstMoment = zFirstMoment;
W0T3.zSecondMoment = zSecondMoment;
W0T3.zSigma = zSigma;
W0T3.zVol = zVol;

load('../MATLAB datastore/dttW0.0T4.0sedimentSpreading.mat');
W0T4.xCentroid = xCentroid;
W0T4.xFirstMoment = xFirstMoment;
W0T4.xSecondMoment = xSecondMoment;
W0T4.xSigma = xSigma;
W0T4.xVol = xVol;
W0T4.yCentroid = yCentroid;
W0T4.yFirstMoment = yFirstMoment;
W0T4.ySecondMoment = ySecondMoment;
W0T4.ySigma = ySigma;
W0T4.yVol = yVol;
W0T4.zCentroid = zCentroid;
W0T4.zFirstMoment = zFirstMoment;
W0T4.zSecondMoment = zSecondMoment;
W0T4.zSigma = zSigma;
W0T4.zVol = zVol;

load('../MATLAB datastore/dttW0.0T5.0sedimentSpreading.mat');
W0T5.xCentroid = xCentroid;
W0T5.xFirstMoment = xFirstMoment;
W0T5.xSecondMoment = xSecondMoment;
W0T5.xSigma = xSigma;
W0T5.xVol = xVol;
W0T5.yCentroid = yCentroid;
W0T5.yFirstMoment = yFirstMoment;
W0T5.ySecondMoment = ySecondMoment;
W0T5.ySigma = ySigma;
W0T5.yVol = yVol;
W0T5.zCentroid = zCentroid;
W0T5.zFirstMoment = zFirstMoment;
W0T5.zSecondMoment = zSecondMoment;
W0T5.zSigma = zSigma;
W0T5.zVol = zVol;

load('../MATLAB datastore/dttW0.0T6.0sedimentSpreading.mat');
W0T6.xCentroid = xCentroid;
W0T6.xFirstMoment = xFirstMoment;
W0T6.xSecondMoment = xSecondMoment;
W0T6.xSigma = xSigma;
W0T6.xVol = xVol;
W0T6.yCentroid = yCentroid;
W0T6.yFirstMoment = yFirstMoment;
W0T6.ySecondMoment = ySecondMoment;
W0T6.ySigma = ySigma;
W0T6.yVol = yVol;
W0T6.zCentroid = zCentroid;
W0T6.zFirstMoment = zFirstMoment;
W0T6.zSecondMoment = zSecondMoment;
W0T6.zSigma = zSigma;
W0T6.zVol = zVol;

%W0.4s
load('../MATLAB datastore/dttW0.4T0.0sedimentSpreading.mat');
W04T0.xCentroid = xCentroid;
W04T0.xFirstMoment = xFirstMoment;
W04T0.xSecondMoment = xSecondMoment;
W04T0.xSigma = xSigma;
W04T0.xVol = xVol;
W04T0.yCentroid = yCentroid;
W04T0.yFirstMoment = yFirstMoment;
W04T0.ySecondMoment = ySecondMoment;
W04T0.ySigma = ySigma;
W04T0.yVol = yVol;
W04T0.zCentroid = zCentroid;
W04T0.zFirstMoment = zFirstMoment;
W04T0.zSecondMoment = zSecondMoment;
W04T0.zSigma = zSigma;
W04T0.zVol = zVol;

load('../MATLAB datastore/dttW0.4T1.0sedimentSpreading.mat');
W04T1.xCentroid = xCentroid;
W04T1.xFirstMoment = xFirstMoment;
W04T1.xSecondMoment = xSecondMoment;
W04T1.xSigma = xSigma;
W04T1.xVol = xVol;
W04T1.yCentroid = yCentroid;
W04T1.yFirstMoment = yFirstMoment;
W04T1.ySecondMoment = ySecondMoment;
W04T1.ySigma = ySigma;
W04T1.yVol = yVol;
W04T1.zCentroid = zCentroid;
W04T1.zFirstMoment = zFirstMoment;
W04T1.zSecondMoment = zSecondMoment;
W04T1.zSigma = zSigma;
W04T1.zVol = zVol;

load('../MATLAB datastore/dttW0.4T2.0sedimentSpreading.mat');
W04T2.xCentroid = xCentroid;
W04T2.xFirstMoment = xFirstMoment;
W04T2.xSecondMoment = xSecondMoment;
W04T2.xSigma = xSigma;
W04T2.xVol = xVol;
W04T2.yCentroid = yCentroid;
W04T2.yFirstMoment = yFirstMoment;
W04T2.ySecondMoment = ySecondMoment;
W04T2.ySigma = ySigma;
W04T2.yVol = yVol;
W04T2.zCentroid = zCentroid;
W04T2.zFirstMoment = zFirstMoment;
W04T2.zSecondMoment = zSecondMoment;
W04T2.zSigma = zSigma;
W04T2.zVol = zVol;

load('../MATLAB datastore/dttW0.4T3.0sedimentSpreading.mat');
W04T3.xCentroid = xCentroid;
W04T3.xFirstMoment = xFirstMoment;
W04T3.xSecondMoment = xSecondMoment;
W04T3.xSigma = xSigma;
W04T3.xVol = xVol;
W04T3.yCentroid = yCentroid;
W04T3.yFirstMoment = yFirstMoment;
W04T3.ySecondMoment = ySecondMoment;
W04T3.ySigma = ySigma;
W04T3.yVol = yVol;
W04T3.zCentroid = zCentroid;
W04T3.zFirstMoment = zFirstMoment;
W04T3.zSecondMoment = zSecondMoment;
W04T3.zSigma = zSigma;
W04T3.zVol = zVol;

load('../MATLAB datastore/dttW0.4T4.0sedimentSpreading.mat');
W04T4.xCentroid = xCentroid;
W04T4.xFirstMoment = xFirstMoment;
W04T4.xSecondMoment = xSecondMoment;
W04T4.xSigma = xSigma;
W04T4.xVol = xVol;
W04T4.yCentroid = yCentroid;
W04T4.yFirstMoment = yFirstMoment;
W04T4.ySecondMoment = ySecondMoment;
W04T4.ySigma = ySigma;
W04T4.yVol = yVol;
W04T4.zCentroid = zCentroid;
W04T4.zFirstMoment = zFirstMoment;
W04T4.zSecondMoment = zSecondMoment;
W04T4.zSigma = zSigma;
W04T4.zVol = zVol;

load('../MATLAB datastore/dttW0.4T5.0sedimentSpreading.mat');
W04T5.xCentroid = xCentroid;
W04T5.xFirstMoment = xFirstMoment;
W04T5.xSecondMoment = xSecondMoment;
W04T5.xSigma = xSigma;
W04T5.xVol = xVol;
W04T5.yCentroid = yCentroid;
W04T5.yFirstMoment = yFirstMoment;
W04T5.ySecondMoment = ySecondMoment;
W04T5.ySigma = ySigma;
W04T5.yVol = yVol;
W04T5.zCentroid = zCentroid;
W04T5.zFirstMoment = zFirstMoment;
W04T5.zSecondMoment = zSecondMoment;
W04T5.zSigma = zSigma;
W04T5.zVol = zVol;

load('../MATLAB datastore/dttW0.4T6.0sedimentSpreading.mat');
W04T6.xCentroid = xCentroid;
W04T6.xFirstMoment = xFirstMoment;
W04T6.xSecondMoment = xSecondMoment;
W04T6.xSigma = xSigma;
W04T6.xVol = xVol;
W04T6.yCentroid = yCentroid;
W04T6.yFirstMoment = yFirstMoment;
W04T6.ySecondMoment = ySecondMoment;
W04T6.ySigma = ySigma;
W04T6.yVol = yVol;
W04T6.zCentroid = zCentroid;
W04T6.zFirstMoment = zFirstMoment;
W04T6.zSecondMoment = zSecondMoment;
W04T6.zSigma = zSigma;
W04T6.zVol = zVol;

%W0.8s
load('../MATLAB datastore/dttW0.8T0.0sedimentSpreading.mat');
W08T0.xCentroid = xCentroid;
W08T0.xFirstMoment = xFirstMoment;
W08T0.xSecondMoment = xSecondMoment;
W08T0.xSigma = xSigma;
W08T0.xVol = xVol;
W08T0.yCentroid = yCentroid;
W08T0.yFirstMoment = yFirstMoment;
W08T0.ySecondMoment = ySecondMoment;
W08T0.ySigma = ySigma;
W08T0.yVol = yVol;
W08T0.zCentroid = zCentroid;
W08T0.zFirstMoment = zFirstMoment;
W08T0.zSecondMoment = zSecondMoment;
W08T0.zSigma = zSigma;
W08T0.zVol = zVol;

load('../MATLAB datastore/dttW0.8T1.0sedimentSpreading.mat');
W08T1.xCentroid = xCentroid;
W08T1.xFirstMoment = xFirstMoment;
W08T1.xSecondMoment = xSecondMoment;
W08T1.xSigma = xSigma;
W08T1.xVol = xVol;
W08T1.yCentroid = yCentroid;
W08T1.yFirstMoment = yFirstMoment;
W08T1.ySecondMoment = ySecondMoment;
W08T1.ySigma = ySigma;
W08T1.yVol = yVol;
W08T1.zCentroid = zCentroid;
W08T1.zFirstMoment = zFirstMoment;
W08T1.zSecondMoment = zSecondMoment;
W08T1.zSigma = zSigma;
W08T1.zVol = zVol;

load('../MATLAB datastore/dttW0.8T2.0sedimentSpreading.mat');
W08T2.xCentroid = xCentroid;
W08T2.xFirstMoment = xFirstMoment;
W08T2.xSecondMoment = xSecondMoment;
W08T2.xSigma = xSigma;
W08T2.xVol = xVol;
W08T2.yCentroid = yCentroid;
W08T2.yFirstMoment = yFirstMoment;
W08T2.ySecondMoment = ySecondMoment;
W08T2.ySigma = ySigma;
W08T2.yVol = yVol;
W08T2.zCentroid = zCentroid;
W08T2.zFirstMoment = zFirstMoment;
W08T2.zSecondMoment = zSecondMoment;
W08T2.zSigma = zSigma;
W08T2.zVol = zVol;

load('../MATLAB datastore/dttW0.8T3.0sedimentSpreading.mat');
W08T3.xCentroid = xCentroid;
W08T3.xFirstMoment = xFirstMoment;
W08T3.xSecondMoment = xSecondMoment;
W08T3.xSigma = xSigma;
W08T3.xVol = xVol;
W08T3.yCentroid = yCentroid;
W08T3.yFirstMoment = yFirstMoment;
W08T3.ySecondMoment = ySecondMoment;
W08T3.ySigma = ySigma;
W08T3.yVol = yVol;
W08T3.zCentroid = zCentroid;
W08T3.zFirstMoment = zFirstMoment;
W08T3.zSecondMoment = zSecondMoment;
W08T3.zSigma = zSigma;
W08T3.zVol = zVol;

load('../MATLAB datastore/dttW0.8T4.0sedimentSpreading.mat');
W08T4.xCentroid = xCentroid;
W08T4.xFirstMoment = xFirstMoment;
W08T4.xSecondMoment = xSecondMoment;
W08T4.xSigma = xSigma;
W08T4.xVol = xVol;
W08T4.yCentroid = yCentroid;
W08T4.yFirstMoment = yFirstMoment;
W08T4.ySecondMoment = ySecondMoment;
W08T4.ySigma = ySigma;
W08T4.yVol = yVol;
W08T4.zCentroid = zCentroid;
W08T4.zFirstMoment = zFirstMoment;
W08T4.zSecondMoment = zSecondMoment;
W08T4.zSigma = zSigma;
W08T4.zVol = zVol;

load('../MATLAB datastore/dttW0.8T5.0sedimentSpreading.mat');
W08T5.xCentroid = xCentroid;
W08T5.xFirstMoment = xFirstMoment;
W08T5.xSecondMoment = xSecondMoment;
W08T5.xSigma = xSigma;
W08T5.xVol = xVol;
W08T5.yCentroid = yCentroid;
W08T5.yFirstMoment = yFirstMoment;
W08T5.ySecondMoment = ySecondMoment;
W08T5.ySigma = ySigma;
W08T5.yVol = yVol;
W08T5.zCentroid = zCentroid;
W08T5.zFirstMoment = zFirstMoment;
W08T5.zSecondMoment = zSecondMoment;
W08T5.zSigma = zSigma;
W08T5.zVol = zVol;

load('../MATLAB datastore/dttW0.8T6.0sedimentSpreading.mat');
W08T6.xCentroid = xCentroid;
W08T6.xFirstMoment = xFirstMoment;
W08T6.xSecondMoment = xSecondMoment;
W08T6.xSigma = xSigma;
W08T6.xVol = xVol;
W08T6.yCentroid = yCentroid;
W08T6.yFirstMoment = yFirstMoment;
W08T6.ySecondMoment = ySecondMoment;
W08T6.ySigma = ySigma;
W08T6.yVol = yVol;
W08T6.zCentroid = zCentroid;
W08T6.zFirstMoment = zFirstMoment;
W08T6.zSecondMoment = zSecondMoment;
W08T6.zSigma = zSigma;
W08T6.zVol = zVol;

%W1.2s
load('../MATLAB datastore/dttW1.2T0.0sedimentSpreading.mat');
W12T0.xCentroid = xCentroid;
W12T0.xFirstMoment = xFirstMoment;
W12T0.xSecondMoment = xSecondMoment;
W12T0.xSigma = xSigma;
W12T0.xVol = xVol;
W12T0.yCentroid = yCentroid;
W12T0.yFirstMoment = yFirstMoment;
W12T0.ySecondMoment = ySecondMoment;
W12T0.ySigma = ySigma;
W12T0.yVol = yVol;
W12T0.zCentroid = zCentroid;
W12T0.zFirstMoment = zFirstMoment;
W12T0.zSecondMoment = zSecondMoment;
W12T0.zSigma = zSigma;
W12T0.zVol = zVol;

load('../MATLAB datastore/dttW1.2T1.0sedimentSpreading.mat');
W12T1.xCentroid = xCentroid;
W12T1.xFirstMoment = xFirstMoment;
W12T1.xSecondMoment = xSecondMoment;
W12T1.xSigma = xSigma;
W12T1.xVol = xVol;
W12T1.yCentroid = yCentroid;
W12T1.yFirstMoment = yFirstMoment;
W12T1.ySecondMoment = ySecondMoment;
W12T1.ySigma = ySigma;
W12T1.yVol = yVol;
W12T1.zCentroid = zCentroid;
W12T1.zFirstMoment = zFirstMoment;
W12T1.zSecondMoment = zSecondMoment;
W12T1.zSigma = zSigma;
W12T1.zVol = zVol;

load('../MATLAB datastore/dttW1.2T2.0sedimentSpreading.mat');
W12T2.xCentroid = xCentroid;
W12T2.xFirstMoment = xFirstMoment;
W12T2.xSecondMoment = xSecondMoment;
W12T2.xSigma = xSigma;
W12T2.xVol = xVol;
W12T2.yCentroid = yCentroid;
W12T2.yFirstMoment = yFirstMoment;
W12T2.ySecondMoment = ySecondMoment;
W12T2.ySigma = ySigma;
W12T2.yVol = yVol;
W12T2.zCentroid = zCentroid;
W12T2.zFirstMoment = zFirstMoment;
W12T2.zSecondMoment = zSecondMoment;
W12T2.zSigma = zSigma;
W12T2.zVol = zVol;

load('../MATLAB datastore/dttW1.2T3.0sedimentSpreading.mat');
W12T3.xCentroid = xCentroid;
W12T3.xFirstMoment = xFirstMoment;
W12T3.xSecondMoment = xSecondMoment;
W12T3.xSigma = xSigma;
W12T3.xVol = xVol;
W12T3.yCentroid = yCentroid;
W12T3.yFirstMoment = yFirstMoment;
W12T3.ySecondMoment = ySecondMoment;
W12T3.ySigma = ySigma;
W12T3.yVol = yVol;
W12T3.zCentroid = zCentroid;
W12T3.zFirstMoment = zFirstMoment;
W12T3.zSecondMoment = zSecondMoment;
W12T3.zSigma = zSigma;
W12T3.zVol = zVol;

load('../MATLAB datastore/dttW1.2T4.0sedimentSpreading.mat');
W12T4.xCentroid = xCentroid;
W12T4.xFirstMoment = xFirstMoment;
W12T4.xSecondMoment = xSecondMoment;
W12T4.xSigma = xSigma;
W12T4.xVol = xVol;
W12T4.yCentroid = yCentroid;
W12T4.yFirstMoment = yFirstMoment;
W12T4.ySecondMoment = ySecondMoment;
W12T4.ySigma = ySigma;
W12T4.yVol = yVol;
W12T4.zCentroid = zCentroid;
W12T4.zFirstMoment = zFirstMoment;
W12T4.zSecondMoment = zSecondMoment;
W12T4.zSigma = zSigma;
W12T4.zVol = zVol;

load('../MATLAB datastore/dttW1.2T5.0sedimentSpreading.mat');
W12T5.xCentroid = xCentroid;
W12T5.xFirstMoment = xFirstMoment;
W12T5.xSecondMoment = xSecondMoment;
W12T5.xSigma = xSigma;
W12T5.xVol = xVol;
W12T5.yCentroid = yCentroid;
W12T5.yFirstMoment = yFirstMoment;
W12T5.ySecondMoment = ySecondMoment;
W12T5.ySigma = ySigma;
W12T5.yVol = yVol;
W12T5.zCentroid = zCentroid;
W12T5.zFirstMoment = zFirstMoment;
W12T5.zSecondMoment = zSecondMoment;
W12T5.zSigma = zSigma;
W12T5.zVol = zVol;

load('../MATLAB datastore/dttW1.2T6.0sedimentSpreading.mat');
W12T6.xCentroid = xCentroid;
W12T6.xFirstMoment = xFirstMoment;
W12T6.xSecondMoment = xSecondMoment;
W12T6.xSigma = xSigma;
W12T6.xVol = xVol;
W12T6.yCentroid = yCentroid;
W12T6.yFirstMoment = yFirstMoment;
W12T6.ySecondMoment = ySecondMoment;
W12T6.ySigma = ySigma;
W12T6.yVol = yVol;
W12T6.zCentroid = zCentroid;
W12T6.zFirstMoment = zFirstMoment;
W12T6.zSecondMoment = zSecondMoment;
W12T6.zSigma = zSigma;
W12T6.zVol = zVol;

%W1.6s
load('../MATLAB datastore/dttW1.6T0.0sedimentSpreading.mat');
W16T0.xCentroid = xCentroid;
W16T0.xFirstMoment = xFirstMoment;
W16T0.xSecondMoment = xSecondMoment;
W16T0.xSigma = xSigma;
W16T0.xVol = xVol;
W16T0.yCentroid = yCentroid;
W16T0.yFirstMoment = yFirstMoment;
W16T0.ySecondMoment = ySecondMoment;
W16T0.ySigma = ySigma;
W16T0.yVol = yVol;
W16T0.zCentroid = zCentroid;
W16T0.zFirstMoment = zFirstMoment;
W16T0.zSecondMoment = zSecondMoment;
W16T0.zSigma = zSigma;
W16T0.zVol = zVol;

load('../MATLAB datastore/dttW1.6T1.0sedimentSpreading.mat');
W16T1.xCentroid = xCentroid;
W16T1.xFirstMoment = xFirstMoment;
W16T1.xSecondMoment = xSecondMoment;
W16T1.xSigma = xSigma;
W16T1.xVol = xVol;
W16T1.yCentroid = yCentroid;
W16T1.yFirstMoment = yFirstMoment;
W16T1.ySecondMoment = ySecondMoment;
W16T1.ySigma = ySigma;
W16T1.yVol = yVol;
W16T1.zCentroid = zCentroid;
W16T1.zFirstMoment = zFirstMoment;
W16T1.zSecondMoment = zSecondMoment;
W16T1.zSigma = zSigma;
W16T1.zVol = zVol;

load('../MATLAB datastore/dttW1.6T2.0sedimentSpreading.mat');
W16T2.xCentroid = xCentroid;
W16T2.xFirstMoment = xFirstMoment;
W16T2.xSecondMoment = xSecondMoment;
W16T2.xSigma = xSigma;
W16T2.xVol = xVol;
W16T2.yCentroid = yCentroid;
W16T2.yFirstMoment = yFirstMoment;
W16T2.ySecondMoment = ySecondMoment;
W16T2.ySigma = ySigma;
W16T2.yVol = yVol;
W16T2.zCentroid = zCentroid;
W16T2.zFirstMoment = zFirstMoment;
W16T2.zSecondMoment = zSecondMoment;
W16T2.zSigma = zSigma;
W16T2.zVol = zVol;

load('../MATLAB datastore/dttW1.6T3.0sedimentSpreading.mat');
W16T3.xCentroid = xCentroid;
W16T3.xFirstMoment = xFirstMoment;
W16T3.xSecondMoment = xSecondMoment;
W16T3.xSigma = xSigma;
W16T3.xVol = xVol;
W16T3.yCentroid = yCentroid;
W16T3.yFirstMoment = yFirstMoment;
W16T3.ySecondMoment = ySecondMoment;
W16T3.ySigma = ySigma;
W16T3.yVol = yVol;
W16T3.zCentroid = zCentroid;
W16T3.zFirstMoment = zFirstMoment;
W16T3.zSecondMoment = zSecondMoment;
W16T3.zSigma = zSigma;
W16T3.zVol = zVol;

load('../MATLAB datastore/dttW1.6T4.0sedimentSpreading.mat');
W16T4.xCentroid = xCentroid;
W16T4.xFirstMoment = xFirstMoment;
W16T4.xSecondMoment = xSecondMoment;
W16T4.xSigma = xSigma;
W16T4.xVol = xVol;
W16T4.yCentroid = yCentroid;
W16T4.yFirstMoment = yFirstMoment;
W16T4.ySecondMoment = ySecondMoment;
W16T4.ySigma = ySigma;
W16T4.yVol = yVol;
W16T4.zCentroid = zCentroid;
W16T4.zFirstMoment = zFirstMoment;
W16T4.zSecondMoment = zSecondMoment;
W16T4.zSigma = zSigma;
W16T4.zVol = zVol;

load('../MATLAB datastore/dttW1.6T5.0sedimentSpreading.mat');
W16T5.xCentroid = xCentroid;
W16T5.xFirstMoment = xFirstMoment;
W16T5.xSecondMoment = xSecondMoment;
W16T5.xSigma = xSigma;
W16T5.xVol = xVol;
W16T5.yCentroid = yCentroid;
W16T5.yFirstMoment = yFirstMoment;
W16T5.ySecondMoment = ySecondMoment;
W16T5.ySigma = ySigma;
W16T5.yVol = yVol;
W16T5.zCentroid = zCentroid;
W16T5.zFirstMoment = zFirstMoment;
W16T5.zSecondMoment = zSecondMoment;
W16T5.zSigma = zSigma;
W16T5.zVol = zVol;

load('../MATLAB datastore/dttW1.6T6.0sedimentSpreading.mat');
W16T6.xCentroid = xCentroid;
W16T6.xFirstMoment = xFirstMoment;
W16T6.xSecondMoment = xSecondMoment;
W16T6.xSigma = xSigma;
W16T6.xVol = xVol;
W16T6.yCentroid = yCentroid;
W16T6.yFirstMoment = yFirstMoment;
W16T6.ySecondMoment = ySecondMoment;
W16T6.ySigma = ySigma;
W16T6.yVol = yVol;
W16T6.zCentroid = zCentroid;
W16T6.zFirstMoment = zFirstMoment;
W16T6.zSecondMoment = zSecondMoment;
W16T6.zSigma = zSigma;
W16T6.zVol = zVol;

%W2.0s
load('../MATLAB datastore/dttW2.0T0.0sedimentSpreading.mat');
W2T0.xCentroid = xCentroid;
W2T0.xFirstMoment = xFirstMoment;
W2T0.xSecondMoment = xSecondMoment;
W2T0.xSigma = xSigma;
W2T0.xVol = xVol;
W2T0.yCentroid = yCentroid;
W2T0.yFirstMoment = yFirstMoment;
W2T0.ySecondMoment = ySecondMoment;
W2T0.ySigma = ySigma;
W2T0.yVol = yVol;
W2T0.zCentroid = zCentroid;
W2T0.zFirstMoment = zFirstMoment;
W2T0.zSecondMoment = zSecondMoment;
W2T0.zSigma = zSigma;
W2T0.zVol = zVol;

load('../MATLAB datastore/dttW2.0T1.0sedimentSpreading.mat');
W2T1.xCentroid = xCentroid;
W2T1.xFirstMoment = xFirstMoment;
W2T1.xSecondMoment = xSecondMoment;
W2T1.xSigma = xSigma;
W2T1.xVol = xVol;
W2T1.yCentroid = yCentroid;
W2T1.yFirstMoment = yFirstMoment;
W2T1.ySecondMoment = ySecondMoment;
W2T1.ySigma = ySigma;
W2T1.yVol = yVol;
W2T1.zCentroid = zCentroid;
W2T1.zFirstMoment = zFirstMoment;
W2T1.zSecondMoment = zSecondMoment;
W2T1.zSigma = zSigma;
W2T1.zVol = zVol;

load('../MATLAB datastore/dttW2.0T2.0sedimentSpreading.mat');
W2T2.xCentroid = xCentroid;
W2T2.xFirstMoment = xFirstMoment;
W2T2.xSecondMoment = xSecondMoment;
W2T2.xSigma = xSigma;
W2T2.xVol = xVol;
W2T2.yCentroid = yCentroid;
W2T2.yFirstMoment = yFirstMoment;
W2T2.ySecondMoment = ySecondMoment;
W2T2.ySigma = ySigma;
W2T2.yVol = yVol;
W2T2.zCentroid = zCentroid;
W2T2.zFirstMoment = zFirstMoment;
W2T2.zSecondMoment = zSecondMoment;
W2T2.zSigma = zSigma;
W2T2.zVol = zVol;

load('../MATLAB datastore/dttW2.0T3.0sedimentSpreading.mat');
W2T3.xCentroid = xCentroid;
W2T3.xFirstMoment = xFirstMoment;
W2T3.xSecondMoment = xSecondMoment;
W2T3.xSigma = xSigma;
W2T3.xVol = xVol;
W2T3.yCentroid = yCentroid;
W2T3.yFirstMoment = yFirstMoment;
W2T3.ySecondMoment = ySecondMoment;
W2T3.ySigma = ySigma;
W2T3.yVol = yVol;
W2T3.zCentroid = zCentroid;
W2T3.zFirstMoment = zFirstMoment;
W2T3.zSecondMoment = zSecondMoment;
W2T3.zSigma = zSigma;
W2T3.zVol = zVol;

load('../MATLAB datastore/dttW2.0T4.0sedimentSpreading.mat');
W2T4.xCentroid = xCentroid;
W2T4.xFirstMoment = xFirstMoment;
W2T4.xSecondMoment = xSecondMoment;
W2T4.xSigma = xSigma;
W2T4.xVol = xVol;
W2T4.yCentroid = yCentroid;
W2T4.yFirstMoment = yFirstMoment;
W2T4.ySecondMoment = ySecondMoment;
W2T4.ySigma = ySigma;
W2T4.yVol = yVol;
W2T4.zCentroid = zCentroid;
W2T4.zFirstMoment = zFirstMoment;
W2T4.zSecondMoment = zSecondMoment;
W2T4.zSigma = zSigma;
W2T4.zVol = zVol;

load('../MATLAB datastore/dttW2.0T5.0sedimentSpreading.mat');
W2T5.xCentroid = xCentroid;
W2T5.xFirstMoment = xFirstMoment;
W2T5.xSecondMoment = xSecondMoment;
W2T5.xSigma = xSigma;
W2T5.xVol = xVol;
W2T5.yCentroid = yCentroid;
W2T5.yFirstMoment = yFirstMoment;
W2T5.ySecondMoment = ySecondMoment;
W2T5.ySigma = ySigma;
W2T5.yVol = yVol;
W2T5.zCentroid = zCentroid;
W2T5.zFirstMoment = zFirstMoment;
W2T5.zSecondMoment = zSecondMoment;
W2T5.zSigma = zSigma;
W2T5.zVol = zVol;

load('../MATLAB datastore/dttW2.0T6.0sedimentSpreading.mat');
W2T6.xCentroid = xCentroid;
W2T6.xFirstMoment = xFirstMoment;
W2T6.xSecondMoment = xSecondMoment;
W2T6.xSigma = xSigma;
W2T6.xVol = xVol;
W2T6.yCentroid = yCentroid;
W2T6.yFirstMoment = yFirstMoment;
W2T6.ySecondMoment = ySecondMoment;
W2T6.ySigma = ySigma;
W2T6.yVol = yVol;
W2T6.zCentroid = zCentroid;
W2T6.zFirstMoment = zFirstMoment;
W2T6.zSecondMoment = zSecondMoment;
W2T6.zSigma = zSigma;
W2T6.zVol = zVol;

clear -regexp ^x ^y ^z;

%% DETERMINE TEMPORAL MEAN MOBILITY NUMBERS AND STANDARD DEVIATIONS
% full
W0T0.dttChiMean = mean(W0T0.dttChi);
W0T05.dttChiMean = mean(W0T05.dttChi);
W0T1.dttChiMean = mean(W0T1.dttChi);
W0T2.dttChiMean = mean(W0T2.dttChi);
W0T3.dttChiMean = mean(W0T3.dttChi);
W0T4.dttChiMean = mean(W0T4.dttChi);
W0T5.dttChiMean = mean(W0T5.dttChi);
W0T6.dttChiMean = mean(W0T6.dttChi);

W0T0.dttChiStd = std(W0T0.dttChi);
W0T05.dttChiStd = std(W0T05.dttChi);
W0T1.dttChiStd = std(W0T1.dttChi);
W0T2.dttChiStd = std(W0T2.dttChi);
W0T3.dttChiStd = std(W0T3.dttChi);
W0T4.dttChiStd = std(W0T4.dttChi);
W0T5.dttChiStd = std(W0T5.dttChi);
W0T6.dttChiStd = std(W0T6.dttChi);

W04T0.dttChiMean = mean(W04T0.dttChi);
W04T1.dttChiMean = mean(W04T1.dttChi);
W04T2.dttChiMean = mean(W04T2.dttChi);
W04T3.dttChiMean = mean(W04T3.dttChi);
W04T4.dttChiMean = mean(W04T4.dttChi);
W04T5.dttChiMean = mean(W04T5.dttChi);
W04T6.dttChiMean = mean(W04T6.dttChi);

W04T0.dttChiStd = std(W04T0.dttChi);
W04T1.dttChiStd = std(W04T1.dttChi);
W04T2.dttChiStd = std(W04T2.dttChi);
W04T3.dttChiStd = std(W04T3.dttChi);
W04T4.dttChiStd = std(W04T4.dttChi);
W04T5.dttChiStd = std(W04T5.dttChi);
W04T6.dttChiStd = std(W04T6.dttChi);

W08T0.dttChiMean = mean(W08T0.dttChi);
W08T1.dttChiMean = mean(W08T1.dttChi);
W08T2.dttChiMean = mean(W08T2.dttChi);
W08T3.dttChiMean = mean(W08T3.dttChi);
W08T4.dttChiMean = mean(W08T4.dttChi);
W08T5.dttChiMean = mean(W08T5.dttChi);
W08T6.dttChiMean = mean(W08T6.dttChi);

W08T0.dttChiStd = std(W08T0.dttChi);
W08T1.dttChiStd = std(W08T1.dttChi);
W08T2.dttChiStd = std(W08T2.dttChi);
W08T3.dttChiStd = std(W08T3.dttChi);
W08T4.dttChiStd = std(W08T4.dttChi);
W08T5.dttChiStd = std(W08T5.dttChi);
W08T6.dttChiStd = std(W08T6.dttChi);

W12T0.dttChiMean = mean(W12T0.dttChi);
W12T1.dttChiMean = mean(W12T1.dttChi);
W12T2.dttChiMean = mean(W12T2.dttChi);
W12T3.dttChiMean = mean(W12T3.dttChi);
W12T4.dttChiMean = mean(W12T4.dttChi);
W12T5.dttChiMean = mean(W12T5.dttChi);
W12T6.dttChiMean = mean(W12T6.dttChi);

W12T0.dttChiStd = std(W12T0.dttChi);
W12T1.dttChiStd = std(W12T1.dttChi);
W12T2.dttChiStd = std(W12T2.dttChi);
W12T3.dttChiStd = std(W12T3.dttChi);
W12T4.dttChiStd = std(W12T4.dttChi);
W12T5.dttChiStd = std(W12T5.dttChi);
W12T6.dttChiStd = std(W12T6.dttChi);

W16T0.dttChiMean = mean(W16T0.dttChi);
W16T1.dttChiMean = mean(W16T1.dttChi);
W16T2.dttChiMean = mean(W16T2.dttChi);
W16T3.dttChiMean = mean(W16T3.dttChi);
W16T4.dttChiMean = mean(W16T4.dttChi);
W16T5.dttChiMean = mean(W16T5.dttChi);
W16T6.dttChiMean = mean(W16T6.dttChi);

W16T0.dttChiStd = std(W16T0.dttChi);
W16T1.dttChiStd = std(W16T1.dttChi);
W16T2.dttChiStd = std(W16T2.dttChi);
W16T3.dttChiStd = std(W16T3.dttChi);
W16T4.dttChiStd = std(W16T4.dttChi);
W16T5.dttChiStd = std(W16T5.dttChi);
W16T6.dttChiStd = std(W16T6.dttChi);

W2T0.dttChiMean = mean(W2T0.dttChi);
W2T1.dttChiMean = mean(W2T1.dttChi);
W2T2.dttChiMean = mean(W2T2.dttChi);
W2T3.dttChiMean = mean(W2T3.dttChi);
W2T4.dttChiMean = mean(W2T4.dttChi);
W2T5.dttChiMean = mean(W2T5.dttChi);
W2T6.dttChiMean = mean(W2T6.dttChi);

W2T0.dttChiStd = std(W2T0.dttChi);
W2T1.dttChiStd = std(W2T1.dttChi);
W2T2.dttChiStd = std(W2T2.dttChi);
W2T3.dttChiStd = std(W2T3.dttChi);
W2T4.dttChiStd = std(W2T4.dttChi);
W2T5.dttChiStd = std(W2T5.dttChi);
W2T6.dttChiStd = std(W2T6.dttChi);

% inner
W0T0.dttChiInnerMean = mean(W0T0.dttChiInner);
W0T05.dttChiInnerMean = mean(W0T05.dttChiInner);
W0T1.dttChiInnerMean = mean(W0T1.dttChiInner);
W0T2.dttChiInnerMean = mean(W0T2.dttChiInner);
W0T3.dttChiInnerMean = mean(W0T3.dttChiInner);
W0T4.dttChiInnerMean = mean(W0T4.dttChiInner);
W0T5.dttChiInnerMean = mean(W0T5.dttChiInner);
W0T6.dttChiInnerMean = mean(W0T6.dttChiInner);

W0T0.dttChiInnerStd = std(W0T0.dttChiInner);
W0T05.dttChiInnerStd = std(W0T05.dttChiInner);
W0T1.dttChiInnerStd = std(W0T1.dttChiInner);
W0T2.dttChiInnerStd = std(W0T2.dttChiInner);
W0T3.dttChiInnerStd = std(W0T3.dttChiInner);
W0T4.dttChiInnerStd = std(W0T4.dttChiInner);
W0T5.dttChiInnerStd = std(W0T5.dttChiInner);
W0T6.dttChiInnerStd = std(W0T6.dttChiInner);

W04T0.dttChiInnerMean = mean(W04T0.dttChiInner);
W04T1.dttChiInnerMean = mean(W04T1.dttChiInner);
W04T2.dttChiInnerMean = mean(W04T2.dttChiInner);
W04T3.dttChiInnerMean = mean(W04T3.dttChiInner);
W04T4.dttChiInnerMean = mean(W04T4.dttChiInner);
W04T5.dttChiInnerMean = mean(W04T5.dttChiInner);
W04T6.dttChiInnerMean = mean(W04T6.dttChiInner);

W04T0.dttChiInnerStd = std(W04T0.dttChiInner);
W04T1.dttChiInnerStd = std(W04T1.dttChiInner);
W04T2.dttChiInnerStd = std(W04T2.dttChiInner);
W04T3.dttChiInnerStd = std(W04T3.dttChiInner);
W04T4.dttChiInnerStd = std(W04T4.dttChiInner);
W04T5.dttChiInnerStd = std(W04T5.dttChiInner);
W04T6.dttChiInnerStd = std(W04T6.dttChiInner);

W08T0.dttChiInnerMean = mean(W08T0.dttChiInner);
W08T1.dttChiInnerMean = mean(W08T1.dttChiInner);
W08T2.dttChiInnerMean = mean(W08T2.dttChiInner);
W08T3.dttChiInnerMean = mean(W08T3.dttChiInner);
W08T4.dttChiInnerMean = mean(W08T4.dttChiInner);
W08T5.dttChiInnerMean = mean(W08T5.dttChiInner);
W08T6.dttChiInnerMean = mean(W08T6.dttChiInner);

W08T0.dttChiInnerStd = std(W08T0.dttChiInner);
W08T1.dttChiInnerStd = std(W08T1.dttChiInner);
W08T2.dttChiInnerStd = std(W08T2.dttChiInner);
W08T3.dttChiInnerStd = std(W08T3.dttChiInner);
W08T4.dttChiInnerStd = std(W08T4.dttChiInner);
W08T5.dttChiInnerStd = std(W08T5.dttChiInner);
W08T6.dttChiInnerStd = std(W08T6.dttChiInner);

W12T0.dttChiInnerMean = mean(W12T0.dttChiInner);
W12T1.dttChiInnerMean = mean(W12T1.dttChiInner);
W12T2.dttChiInnerMean = mean(W12T2.dttChiInner);
W12T3.dttChiInnerMean = mean(W12T3.dttChiInner);
W12T4.dttChiInnerMean = mean(W12T4.dttChiInner);
W12T5.dttChiInnerMean = mean(W12T5.dttChiInner);
W12T6.dttChiInnerMean = mean(W12T6.dttChiInner);

W12T0.dttChiInnerStd = std(W12T0.dttChiInner);
W12T1.dttChiInnerStd = std(W12T1.dttChiInner);
W12T2.dttChiInnerStd = std(W12T2.dttChiInner);
W12T3.dttChiInnerStd = std(W12T3.dttChiInner);
W12T4.dttChiInnerStd = std(W12T4.dttChiInner);
W12T5.dttChiInnerStd = std(W12T5.dttChiInner);
W12T6.dttChiInnerStd = std(W12T6.dttChiInner);

W16T0.dttChiInnerMean = mean(W16T0.dttChiInner);
W16T1.dttChiInnerMean = mean(W16T1.dttChiInner);
W16T2.dttChiInnerMean = mean(W16T2.dttChiInner);
W16T3.dttChiInnerMean = mean(W16T3.dttChiInner);
W16T4.dttChiInnerMean = mean(W16T4.dttChiInner);
W16T5.dttChiInnerMean = mean(W16T5.dttChiInner);
W16T6.dttChiInnerMean = mean(W16T6.dttChiInner);

W16T0.dttChiInnerStd = std(W16T0.dttChiInner);
W16T1.dttChiInnerStd = std(W16T1.dttChiInner);
W16T2.dttChiInnerStd = std(W16T2.dttChiInner);
W16T3.dttChiInnerStd = std(W16T3.dttChiInner);
W16T4.dttChiInnerStd = std(W16T4.dttChiInner);
W16T5.dttChiInnerStd = std(W16T5.dttChiInner);
W16T6.dttChiInnerStd = std(W16T6.dttChiInner);

W2T0.dttChiInnerMean = mean(W2T0.dttChiInner);
W2T1.dttChiInnerMean = mean(W2T1.dttChiInner);
W2T2.dttChiInnerMean = mean(W2T2.dttChiInner);
W2T3.dttChiInnerMean = mean(W2T3.dttChiInner);
W2T4.dttChiInnerMean = mean(W2T4.dttChiInner);
W2T5.dttChiInnerMean = mean(W2T5.dttChiInner);
W2T6.dttChiInnerMean = mean(W2T6.dttChiInner);

W2T0.dttChiInnerStd = std(W2T0.dttChiInner);
W2T1.dttChiInnerStd = std(W2T1.dttChiInner);
W2T2.dttChiInnerStd = std(W2T2.dttChiInner);
W2T3.dttChiInnerStd = std(W2T3.dttChiInner);
W2T4.dttChiInnerStd = std(W2T4.dttChiInner);
W2T5.dttChiInnerStd = std(W2T5.dttChiInner);
W2T6.dttChiInnerStd = std(W2T6.dttChiInner);

% outer
W0T0.dttChiOuterMean = mean(W0T0.dttChiOuter);
W0T05.dttChiOuterMean = mean(W0T05.dttChiOuter);
W0T1.dttChiOuterMean = mean(W0T1.dttChiOuter);
W0T2.dttChiOuterMean = mean(W0T2.dttChiOuter);
W0T3.dttChiOuterMean = mean(W0T3.dttChiOuter);
W0T4.dttChiOuterMean = mean(W0T4.dttChiOuter);
W0T5.dttChiOuterMean = mean(W0T5.dttChiOuter);
W0T6.dttChiOuterMean = mean(W0T6.dttChiOuter);

W0T0.dttChiOuterStd = std(W0T0.dttChiOuter);
W0T05.dttChiOuterStd = std(W0T05.dttChiOuter);
W0T1.dttChiOuterStd = std(W0T1.dttChiOuter);
W0T2.dttChiOuterStd = std(W0T2.dttChiOuter);
W0T3.dttChiOuterStd = std(W0T3.dttChiOuter);
W0T4.dttChiOuterStd = std(W0T4.dttChiOuter);
W0T5.dttChiOuterStd = std(W0T5.dttChiOuter);
W0T6.dttChiOuterStd = std(W0T6.dttChiOuter);

W04T0.dttChiOuterMean = mean(W04T0.dttChiOuter);
W04T1.dttChiOuterMean = mean(W04T1.dttChiOuter);
W04T2.dttChiOuterMean = mean(W04T2.dttChiOuter);
W04T3.dttChiOuterMean = mean(W04T3.dttChiOuter);
W04T4.dttChiOuterMean = mean(W04T4.dttChiOuter);
W04T5.dttChiOuterMean = mean(W04T5.dttChiOuter);
W04T6.dttChiOuterMean = mean(W04T6.dttChiOuter);

W04T0.dttChiOuterStd = std(W04T0.dttChiOuter);
W04T1.dttChiOuterStd = std(W04T1.dttChiOuter);
W04T2.dttChiOuterStd = std(W04T2.dttChiOuter);
W04T3.dttChiOuterStd = std(W04T3.dttChiOuter);
W04T4.dttChiOuterStd = std(W04T4.dttChiOuter);
W04T5.dttChiOuterStd = std(W04T5.dttChiOuter);
W04T6.dttChiOuterStd = std(W04T6.dttChiOuter);

W08T0.dttChiOuterMean = mean(W08T0.dttChiOuter);
W08T1.dttChiOuterMean = mean(W08T1.dttChiOuter);
W08T2.dttChiOuterMean = mean(W08T2.dttChiOuter);
W08T3.dttChiOuterMean = mean(W08T3.dttChiOuter);
W08T4.dttChiOuterMean = mean(W08T4.dttChiOuter);
W08T5.dttChiOuterMean = mean(W08T5.dttChiOuter);
W08T6.dttChiOuterMean = mean(W08T6.dttChiOuter);

W08T0.dttChiOuterStd = std(W08T0.dttChiOuter);
W08T1.dttChiOuterStd = std(W08T1.dttChiOuter);
W08T2.dttChiOuterStd = std(W08T2.dttChiOuter);
W08T3.dttChiOuterStd = std(W08T3.dttChiOuter);
W08T4.dttChiOuterStd = std(W08T4.dttChiOuter);
W08T5.dttChiOuterStd = std(W08T5.dttChiOuter);
W08T6.dttChiOuterStd = std(W08T6.dttChiOuter);

W12T0.dttChiOuterMean = mean(W12T0.dttChiOuter);
W12T1.dttChiOuterMean = mean(W12T1.dttChiOuter);
W12T2.dttChiOuterMean = mean(W12T2.dttChiOuter);
W12T3.dttChiOuterMean = mean(W12T3.dttChiOuter);
W12T4.dttChiOuterMean = mean(W12T4.dttChiOuter);
W12T5.dttChiOuterMean = mean(W12T5.dttChiOuter);
W12T6.dttChiOuterMean = mean(W12T6.dttChiOuter);

W12T0.dttChiOuterStd = std(W12T0.dttChiOuter);
W12T1.dttChiOuterStd = std(W12T1.dttChiOuter);
W12T2.dttChiOuterStd = std(W12T2.dttChiOuter);
W12T3.dttChiOuterStd = std(W12T3.dttChiOuter);
W12T4.dttChiOuterStd = std(W12T4.dttChiOuter);
W12T5.dttChiOuterStd = std(W12T5.dttChiOuter);
W12T6.dttChiOuterStd = std(W12T6.dttChiOuter);

W16T0.dttChiOuterMean = mean(W16T0.dttChiOuter);
W16T1.dttChiOuterMean = mean(W16T1.dttChiOuter);
W16T2.dttChiOuterMean = mean(W16T2.dttChiOuter);
W16T3.dttChiOuterMean = mean(W16T3.dttChiOuter);
W16T4.dttChiOuterMean = mean(W16T4.dttChiOuter);
W16T5.dttChiOuterMean = mean(W16T5.dttChiOuter);
W16T6.dttChiOuterMean = mean(W16T6.dttChiOuter);

W16T0.dttChiOuterStd = std(W16T0.dttChiOuter);
W16T1.dttChiOuterStd = std(W16T1.dttChiOuter);
W16T2.dttChiOuterStd = std(W16T2.dttChiOuter);
W16T3.dttChiOuterStd = std(W16T3.dttChiOuter);
W16T4.dttChiOuterStd = std(W16T4.dttChiOuter);
W16T5.dttChiOuterStd = std(W16T5.dttChiOuter);
W16T6.dttChiOuterStd = std(W16T6.dttChiOuter);

W2T0.dttChiOuterMean = mean(W2T0.dttChiOuter);
W2T1.dttChiOuterMean = mean(W2T1.dttChiOuter);
W2T2.dttChiOuterMean = mean(W2T2.dttChiOuter);
W2T3.dttChiOuterMean = mean(W2T3.dttChiOuter);
W2T4.dttChiOuterMean = mean(W2T4.dttChiOuter);
W2T5.dttChiOuterMean = mean(W2T5.dttChiOuter);
W2T6.dttChiOuterMean = mean(W2T6.dttChiOuter);

W2T0.dttChiOuterStd = std(W2T0.dttChiOuter);
W2T1.dttChiOuterStd = std(W2T1.dttChiOuter);
W2T2.dttChiOuterStd = std(W2T2.dttChiOuter);
W2T3.dttChiOuterStd = std(W2T3.dttChiOuter);
W2T4.dttChiOuterStd = std(W2T4.dttChiOuter);
W2T5.dttChiOuterStd = std(W2T5.dttChiOuter);
W2T6.dttChiOuterStd = std(W2T6.dttChiOuter);

% MATRICES OF MEANS
% dttChiMeanMatrix = [W0T0.dttChiMean W0T1.dttChiMean W0T2.dttChiMean W0T4.dttChiMean W0T6.dttChiMean; ...
% W04T0.dttChiMean W04T1.dttChiMean W04T2.dttChiMean W04T4.dttChiMean W04T6.dttChiMean; ...
% W08T0.dttChiMean W08T1.dttChiMean W08T2.dttChiMean W08T4.dttChiMean W08T6.dttChiMean; ...
% W12T0.dttChiMean W12T1.dttChiMean W12T2.dttChiMean W12T4.dttChiMean W12T6.dttChiMean; ...
% W16T0.dttChiMean W16T1.dttChiMean W16T2.dttChiMean W16T4.dttChiMean W16T6.dttChiMean; ...
% W2T0.dttChiMean W2T1.dttChiMean W2T2.dttChiMean W2T4.dttChiMean W2T6.dttChiMean];

dttChiMeanMatrixFull = [W0T0.dttChiMean W0T05.dttChiMean W0T1.dttChiMean W0T2.dttChiMean W0T3.dttChiMean W0T4.dttChiMean W0T5.dttChiMean W0T6.dttChiMean; ...
W04T0.dttChiMean NaN W04T1.dttChiMean W04T2.dttChiMean W04T3.dttChiMean W04T4.dttChiMean W04T5.dttChiMean W04T6.dttChiMean; ...
W08T0.dttChiMean NaN W08T1.dttChiMean W08T2.dttChiMean W08T3.dttChiMean W08T4.dttChiMean W08T5.dttChiMean W08T6.dttChiMean; ...
W12T0.dttChiMean NaN W12T1.dttChiMean W12T2.dttChiMean W12T3.dttChiMean W12T4.dttChiMean W12T5.dttChiMean W12T6.dttChiMean; ...
W16T0.dttChiMean NaN W16T1.dttChiMean W16T2.dttChiMean W16T3.dttChiMean W16T4.dttChiMean W16T5.dttChiMean W16T6.dttChiMean; ...
W2T0.dttChiMean NaN W2T1.dttChiMean W2T2.dttChiMean W2T3.dttChiMean W2T4.dttChiMean W2T5.dttChiMean W2T6.dttChiMean];

% dttChiInnerMeanMatrix = [W0T0.dttChiInnerMean W0T1.dttChiInnerMean W0T2.dttChiInnerMean W0T4.dttChiInnerMean W0T6.dttChiInnerMean; ...
% W04T0.dttChiInnerMean W04T1.dttChiInnerMean W04T2.dttChiInnerMean W04T4.dttChiInnerMean W04T6.dttChiInnerMean; ...
% W08T0.dttChiInnerMean W08T1.dttChiInnerMean W08T2.dttChiInnerMean W08T4.dttChiInnerMean W08T6.dttChiInnerMean; ...
% W12T0.dttChiInnerMean W12T1.dttChiInnerMean W12T2.dttChiInnerMean W12T4.dttChiInnerMean W12T6.dttChiInnerMean; ...
% W16T0.dttChiInnerMean W16T1.dttChiInnerMean W16T2.dttChiInnerMean W16T4.dttChiInnerMean W16T6.dttChiInnerMean; ...
% W2T0.dttChiInnerMean W2T1.dttChiInnerMean W2T2.dttChiInnerMean W2T4.dttChiInnerMean W2T6.dttChiInnerMean];

dttChiInnerMeanMatrixFull = [W0T0.dttChiInnerMean W0T05.dttChiInnerMean W0T1.dttChiInnerMean W0T2.dttChiInnerMean W0T3.dttChiInnerMean W0T4.dttChiInnerMean W0T5.dttChiInnerMean W0T6.dttChiInnerMean; ...
W04T0.dttChiInnerMean NaN W04T1.dttChiInnerMean W04T2.dttChiInnerMean W04T3.dttChiInnerMean W04T4.dttChiInnerMean W04T5.dttChiInnerMean W04T6.dttChiInnerMean; ...
W08T0.dttChiInnerMean NaN W08T1.dttChiInnerMean W08T2.dttChiInnerMean W08T3.dttChiInnerMean W08T4.dttChiInnerMean W08T5.dttChiInnerMean W08T6.dttChiInnerMean; ...
W12T0.dttChiInnerMean NaN W12T1.dttChiInnerMean W12T2.dttChiInnerMean W12T3.dttChiInnerMean W12T4.dttChiInnerMean W12T5.dttChiInnerMean W12T6.dttChiInnerMean; ...
W16T0.dttChiInnerMean NaN W16T1.dttChiInnerMean W16T2.dttChiInnerMean W16T3.dttChiInnerMean W16T4.dttChiInnerMean W16T5.dttChiInnerMean W16T6.dttChiInnerMean; ...
W2T0.dttChiInnerMean NaN W2T1.dttChiInnerMean W2T2.dttChiInnerMean W2T3.dttChiInnerMean W2T4.dttChiInnerMean W2T5.dttChiInnerMean W2T6.dttChiInnerMean];

% dttChiOuterMeanMatrix = [W0T0.dttChiOuterMean W0T1.dttChiOuterMean W0T2.dttChiOuterMean W0T4.dttChiOuterMean W0T6.dttChiOuterMean; ...
% W04T0.dttChiOuterMean W04T1.dttChiOuterMean W04T2.dttChiOuterMean W04T4.dttChiOuterMean W04T6.dttChiOuterMean; ...
% W08T0.dttChiOuterMean W08T1.dttChiOuterMean W08T2.dttChiOuterMean W08T4.dttChiOuterMean W08T6.dttChiOuterMean; ...
% W12T0.dttChiOuterMean W12T1.dttChiOuterMean W12T2.dttChiOuterMean W12T4.dttChiOuterMean W12T6.dttChiOuterMean; ...
% W16T0.dttChiOuterMean W16T1.dttChiOuterMean W16T2.dttChiOuterMean W16T4.dttChiOuterMean W16T6.dttChiOuterMean; ...
% W2T0.dttChiOuterMean W2T1.dttChiOuterMean W2T2.dttChiOuterMean W2T4.dttChiOuterMean W2T6.dttChiOuterMean];

dttChiOuterMeanMatrixFull = [W0T0.dttChiOuterMean W0T05.dttChiOuterMean W0T1.dttChiOuterMean W0T2.dttChiOuterMean W0T3.dttChiOuterMean W0T4.dttChiOuterMean W0T5.dttChiOuterMean W0T6.dttChiOuterMean; ...
W04T0.dttChiOuterMean NaN W04T1.dttChiOuterMean W04T2.dttChiOuterMean W04T3.dttChiOuterMean W04T4.dttChiOuterMean W04T5.dttChiOuterMean W04T6.dttChiOuterMean; ...
W08T0.dttChiOuterMean NaN W08T1.dttChiOuterMean W08T2.dttChiOuterMean W08T3.dttChiOuterMean W08T4.dttChiOuterMean W08T5.dttChiOuterMean W08T6.dttChiOuterMean; ...
W12T0.dttChiOuterMean NaN W12T1.dttChiOuterMean W12T2.dttChiOuterMean W12T3.dttChiOuterMean W12T4.dttChiOuterMean W12T5.dttChiOuterMean W12T6.dttChiOuterMean; ...
W16T0.dttChiOuterMean NaN W16T1.dttChiOuterMean W16T2.dttChiOuterMean W16T3.dttChiOuterMean W16T4.dttChiOuterMean W16T5.dttChiOuterMean W16T6.dttChiOuterMean; ...
W2T0.dttChiOuterMean NaN W2T1.dttChiOuterMean W2T2.dttChiOuterMean W2T3.dttChiOuterMean W2T4.dttChiOuterMean W2T5.dttChiOuterMean W2T6.dttChiOuterMean];

% MATRICES OF STANDARD DEVIATIONS
dttChiStdMatrixFull = [W0T0.dttChiStd W0T05.dttChiStd W0T1.dttChiStd W0T2.dttChiStd W0T3.dttChiStd W0T4.dttChiStd W0T5.dttChiStd W0T6.dttChiStd; ...
W04T0.dttChiStd NaN W04T1.dttChiStd W04T2.dttChiStd W04T3.dttChiStd W04T4.dttChiStd W04T5.dttChiStd W04T6.dttChiStd; ...
W08T0.dttChiStd NaN W08T1.dttChiStd W08T2.dttChiStd W08T3.dttChiStd W08T4.dttChiStd W08T5.dttChiStd W08T6.dttChiStd; ...
W12T0.dttChiStd NaN W12T1.dttChiStd W12T2.dttChiStd W12T3.dttChiStd W12T4.dttChiStd W12T5.dttChiStd W12T6.dttChiStd; ...
W16T0.dttChiStd NaN W16T1.dttChiStd W16T2.dttChiStd W16T3.dttChiStd W16T4.dttChiStd W16T5.dttChiStd W16T6.dttChiStd; ...
W2T0.dttChiStd NaN W2T1.dttChiStd W2T2.dttChiStd W2T3.dttChiStd W2T4.dttChiStd W2T5.dttChiStd W2T6.dttChiStd];

dttChiInnerStdMatrixFull = [W0T0.dttChiInnerStd W0T05.dttChiInnerStd W0T1.dttChiInnerStd W0T2.dttChiInnerStd W0T3.dttChiInnerStd W0T4.dttChiInnerStd W0T5.dttChiInnerStd W0T6.dttChiInnerStd; ...
W04T0.dttChiInnerStd NaN W04T1.dttChiInnerStd W04T2.dttChiInnerStd W04T3.dttChiInnerStd W04T4.dttChiInnerStd W04T5.dttChiInnerStd W04T6.dttChiInnerStd; ...
W08T0.dttChiInnerStd NaN W08T1.dttChiInnerStd W08T2.dttChiInnerStd W08T3.dttChiInnerStd W08T4.dttChiInnerStd W08T5.dttChiInnerStd W08T6.dttChiInnerStd; ...
W12T0.dttChiInnerStd NaN W12T1.dttChiInnerStd W12T2.dttChiInnerStd W12T3.dttChiInnerStd W12T4.dttChiInnerStd W12T5.dttChiInnerStd W12T6.dttChiInnerStd; ...
W16T0.dttChiInnerStd NaN W16T1.dttChiInnerStd W16T2.dttChiInnerStd W16T3.dttChiInnerStd W16T4.dttChiInnerStd W16T5.dttChiInnerStd W16T6.dttChiInnerStd; ...
W2T0.dttChiInnerStd NaN W2T1.dttChiInnerStd W2T2.dttChiInnerStd W2T3.dttChiInnerStd W2T4.dttChiInnerStd W2T5.dttChiInnerStd W2T6.dttChiInnerStd];

dttChiOuterStdMatrixFull = [W0T0.dttChiOuterStd W0T05.dttChiOuterStd W0T1.dttChiOuterStd W0T2.dttChiOuterStd W0T3.dttChiOuterStd W0T4.dttChiOuterStd W0T5.dttChiOuterStd W0T6.dttChiOuterStd; ...
W04T0.dttChiOuterStd NaN W04T1.dttChiOuterStd W04T2.dttChiOuterStd W04T3.dttChiOuterStd W04T4.dttChiOuterStd W04T5.dttChiOuterStd W04T6.dttChiOuterStd; ...
W08T0.dttChiOuterStd NaN W08T1.dttChiOuterStd W08T2.dttChiOuterStd W08T3.dttChiOuterStd W08T4.dttChiOuterStd W08T5.dttChiOuterStd W08T6.dttChiOuterStd; ...
W12T0.dttChiOuterStd NaN W12T1.dttChiOuterStd W12T2.dttChiOuterStd W12T3.dttChiOuterStd W12T4.dttChiOuterStd W12T5.dttChiOuterStd W12T6.dttChiOuterStd; ...
W16T0.dttChiOuterStd NaN W16T1.dttChiOuterStd W16T2.dttChiOuterStd W16T3.dttChiOuterStd W16T4.dttChiOuterStd W16T5.dttChiOuterStd W16T6.dttChiOuterStd; ...
W2T0.dttChiOuterStd NaN W2T1.dttChiOuterStd W2T2.dttChiOuterStd W2T3.dttChiOuterStd W2T4.dttChiOuterStd W2T5.dttChiOuterStd W2T6.dttChiOuterStd];

%% DETERMINE TEMPORAL MEANS AND STANDARD DEVIATIONS OF CHANNEL SPLIT NUMBERS
% means
% W0T0.dttChannelActiveSplitsMean = mean(W0T0.dttChannelActiveSkeletonNodesCount - (1 - W0T0.dttChannelActiveEulerNumber));
% W0T05.dttChannelActiveSplitsMean = mean(W0T05.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W0T05.dttChannelActiveEulerNumber(2:end-1)));
% W0T1.dttChannelActiveSplitsMean = mean(W0T1.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W0T1.dttChannelActiveEulerNumber(2:end-1)));
% W0T2.dttChannelActiveSplitsMean = mean(W0T2.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W0T2.dttChannelActiveEulerNumber(2:end-1)));
% W0T3.dttChannelActiveSplitsMean = mean(W0T3.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W0T3.dttChannelActiveEulerNumber(2:end-1)));
% W0T4.dttChannelActiveSplitsMean = mean(W0T4.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W0T4.dttChannelActiveEulerNumber(2:end-1)));
% W0T5.dttChannelActiveSplitsMean = mean(W0T5.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W0T5.dttChannelActiveEulerNumber(2:end-1)));
% W0T6.dttChannelActiveSplitsMean = mean(W0T6.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W0T6.dttChannelActiveEulerNumber(2:end-1)));
% 
% W04T0.dttChannelActiveSplitsMean = mean(W04T0.dttChannelActiveSkeletonNodesCount - (1 - W04T0.dttChannelActiveEulerNumber));
% W04T1.dttChannelActiveSplitsMean = mean(W04T1.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W04T1.dttChannelActiveEulerNumber(2:end-1)));
% W04T2.dttChannelActiveSplitsMean = mean(W04T2.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W04T2.dttChannelActiveEulerNumber(2:end-1)));
% W04T4.dttChannelActiveSplitsMean = mean(W04T4.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W04T4.dttChannelActiveEulerNumber(2:end-1)));
% W04T6.dttChannelActiveSplitsMean = mean(W04T6.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W04T6.dttChannelActiveEulerNumber(2:end-1)));
% 
% W08T0.dttChannelActiveSplitsMean = mean(W08T0.dttChannelActiveSkeletonNodesCount - (1 - W08T0.dttChannelActiveEulerNumber));
% W08T1.dttChannelActiveSplitsMean = mean(W08T1.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W08T1.dttChannelActiveEulerNumber(2:end-1)));
% W08T2.dttChannelActiveSplitsMean = mean(W08T2.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W08T2.dttChannelActiveEulerNumber(2:end-1)));
% W08T4.dttChannelActiveSplitsMean = mean(W08T4.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W08T4.dttChannelActiveEulerNumber(2:end-1)));
% W08T6.dttChannelActiveSplitsMean = mean(W08T6.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W08T6.dttChannelActiveEulerNumber(2:end-1)));
% 
% W12T0.dttChannelActiveSplitsMean = mean(W12T0.dttChannelActiveSkeletonNodesCount - (1 - W12T0.dttChannelActiveEulerNumber));
% W12T1.dttChannelActiveSplitsMean = mean(W12T1.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W12T1.dttChannelActiveEulerNumber(2:end-1)));
% W12T2.dttChannelActiveSplitsMean = mean(W12T2.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W12T2.dttChannelActiveEulerNumber(2:end-1)));
% W12T4.dttChannelActiveSplitsMean = mean(W12T4.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W12T4.dttChannelActiveEulerNumber(2:end-1)));
% W12T6.dttChannelActiveSplitsMean = mean(W12T6.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W12T6.dttChannelActiveEulerNumber(2:end-1)));
% 
% W16T0.dttChannelActiveSplitsMean = mean(W16T0.dttChannelActiveSkeletonNodesCount - (1 - W16T0.dttChannelActiveEulerNumber));
% W16T1.dttChannelActiveSplitsMean = mean(W16T1.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W16T1.dttChannelActiveEulerNumber(2:end-1)));
% W16T2.dttChannelActiveSplitsMean = mean(W16T2.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W16T2.dttChannelActiveEulerNumber(2:end-1)));
% W16T4.dttChannelActiveSplitsMean = mean(W16T4.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W16T4.dttChannelActiveEulerNumber(2:end-1)));
% W16T6.dttChannelActiveSplitsMean = mean(W16T6.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W16T6.dttChannelActiveEulerNumber(2:end-1)));
% 
% W2T0.dttChannelActiveSplitsMean = mean(W2T0.dttChannelActiveSkeletonNodesCount - (1 - W2T0.dttChannelActiveEulerNumber));
% W2T1.dttChannelActiveSplitsMean = mean(W2T1.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W2T1.dttChannelActiveEulerNumber(2:end-1)));
% W2T2.dttChannelActiveSplitsMean = mean(W2T2.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W2T2.dttChannelActiveEulerNumber(2:end-1)));
% W2T4.dttChannelActiveSplitsMean = mean(W2T4.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W2T4.dttChannelActiveEulerNumber(2:end-1)));
% W2T6.dttChannelActiveSplitsMean = mean(W2T6.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W2T6.dttChannelActiveEulerNumber(2:end-1)));

% means (alternative - means of instances where morphology is deltaic only)
W0T0.dttChannelActiveSplitsMean = mean(W0T0.dttChannelActiveSkeletonNodesCount(W0T0.dttIsDelta==1) - (1 - W0T0.dttChannelActiveEulerNumber(W0T0.dttIsDelta==1)));
W0T05.dttChannelActiveSplitsMean = mean(W0T05.dttChannelActiveSkeletonNodesCount(W0T05.dttIsDelta==1) - (1 - W0T05.dttChannelActiveEulerNumber(W0T05.dttIsDelta==1)));
W0T1.dttChannelActiveSplitsMean = mean(W0T1.dttChannelActiveSkeletonNodesCount(W0T1.dttIsDelta==1) - (1 - W0T1.dttChannelActiveEulerNumber(W0T1.dttIsDelta==1)));
W0T2.dttChannelActiveSplitsMean = mean(W0T2.dttChannelActiveSkeletonNodesCount(W0T2.dttIsDelta==1) - (1 - W0T2.dttChannelActiveEulerNumber(W0T2.dttIsDelta==1)));
W0T3.dttChannelActiveSplitsMean = mean(W0T3.dttChannelActiveSkeletonNodesCount(W0T3.dttIsDelta==1) - (1 - W0T3.dttChannelActiveEulerNumber(W0T3.dttIsDelta==1)));
W0T4.dttChannelActiveSplitsMean = mean(W0T4.dttChannelActiveSkeletonNodesCount(W0T4.dttIsDelta==1) - (1 - W0T4.dttChannelActiveEulerNumber(W0T4.dttIsDelta==1)));
W0T5.dttChannelActiveSplitsMean = mean(W0T5.dttChannelActiveSkeletonNodesCount(W0T5.dttIsDelta==1) - (1 - W0T5.dttChannelActiveEulerNumber(W0T5.dttIsDelta==1)));
W0T6.dttChannelActiveSplitsMean = mean(W0T6.dttChannelActiveSkeletonNodesCount(W0T6.dttIsDelta==1) - (1 - W0T6.dttChannelActiveEulerNumber(W0T6.dttIsDelta==1)));

W04T0.dttChannelActiveSplitsMean = mean(W04T0.dttChannelActiveSkeletonNodesCount(W04T0.dttIsDelta==1) - (1 - W04T0.dttChannelActiveEulerNumber(W04T0.dttIsDelta==1)));
W04T1.dttChannelActiveSplitsMean = mean(W04T1.dttChannelActiveSkeletonNodesCount(W04T1.dttIsDelta==1) - (1 - W04T1.dttChannelActiveEulerNumber(W04T1.dttIsDelta==1)));
W04T2.dttChannelActiveSplitsMean = mean(W04T2.dttChannelActiveSkeletonNodesCount(W04T2.dttIsDelta==1) - (1 - W04T2.dttChannelActiveEulerNumber(W04T2.dttIsDelta==1)));
W04T3.dttChannelActiveSplitsMean = mean(W04T3.dttChannelActiveSkeletonNodesCount(W04T3.dttIsDelta==1) - (1 - W04T3.dttChannelActiveEulerNumber(W04T3.dttIsDelta==1)));
W04T4.dttChannelActiveSplitsMean = mean(W04T4.dttChannelActiveSkeletonNodesCount(W04T4.dttIsDelta==1) - (1 - W04T4.dttChannelActiveEulerNumber(W04T4.dttIsDelta==1)));
W04T5.dttChannelActiveSplitsMean = mean(W04T5.dttChannelActiveSkeletonNodesCount(W04T5.dttIsDelta==1) - (1 - W04T5.dttChannelActiveEulerNumber(W04T5.dttIsDelta==1)));
W04T6.dttChannelActiveSplitsMean = mean(W04T6.dttChannelActiveSkeletonNodesCount(W04T6.dttIsDelta==1) - (1 - W04T6.dttChannelActiveEulerNumber(W04T6.dttIsDelta==1)));

W08T0.dttChannelActiveSplitsMean = mean(W08T0.dttChannelActiveSkeletonNodesCount(W08T0.dttIsDelta==1) - (1 - W08T0.dttChannelActiveEulerNumber(W08T0.dttIsDelta==1)));
W08T1.dttChannelActiveSplitsMean = mean(W08T1.dttChannelActiveSkeletonNodesCount(W08T1.dttIsDelta==1) - (1 - W08T1.dttChannelActiveEulerNumber(W08T1.dttIsDelta==1)));
W08T2.dttChannelActiveSplitsMean = mean(W08T2.dttChannelActiveSkeletonNodesCount(W08T2.dttIsDelta==1) - (1 - W08T2.dttChannelActiveEulerNumber(W08T2.dttIsDelta==1)));
W08T3.dttChannelActiveSplitsMean = mean(W08T3.dttChannelActiveSkeletonNodesCount(W08T3.dttIsDelta==1) - (1 - W08T3.dttChannelActiveEulerNumber(W08T3.dttIsDelta==1)));
W08T4.dttChannelActiveSplitsMean = mean(W08T4.dttChannelActiveSkeletonNodesCount(W08T4.dttIsDelta==1) - (1 - W08T4.dttChannelActiveEulerNumber(W08T4.dttIsDelta==1)));
W08T5.dttChannelActiveSplitsMean = mean(W08T5.dttChannelActiveSkeletonNodesCount(W08T5.dttIsDelta==1) - (1 - W08T5.dttChannelActiveEulerNumber(W08T5.dttIsDelta==1)));
W08T6.dttChannelActiveSplitsMean = mean(W08T6.dttChannelActiveSkeletonNodesCount(W08T6.dttIsDelta==1) - (1 - W08T6.dttChannelActiveEulerNumber(W08T6.dttIsDelta==1)));

W12T0.dttChannelActiveSplitsMean = mean(W12T0.dttChannelActiveSkeletonNodesCount(W12T0.dttIsDelta==1) - (1 - W12T0.dttChannelActiveEulerNumber(W12T0.dttIsDelta==1)));
W12T1.dttChannelActiveSplitsMean = mean(W12T1.dttChannelActiveSkeletonNodesCount(W12T1.dttIsDelta==1) - (1 - W12T1.dttChannelActiveEulerNumber(W12T1.dttIsDelta==1)));
W12T2.dttChannelActiveSplitsMean = mean(W12T2.dttChannelActiveSkeletonNodesCount(W12T2.dttIsDelta==1) - (1 - W12T2.dttChannelActiveEulerNumber(W12T2.dttIsDelta==1)));
W12T3.dttChannelActiveSplitsMean = mean(W12T3.dttChannelActiveSkeletonNodesCount(W12T3.dttIsDelta==1) - (1 - W12T3.dttChannelActiveEulerNumber(W12T3.dttIsDelta==1)));
W12T4.dttChannelActiveSplitsMean = mean(W12T4.dttChannelActiveSkeletonNodesCount(W12T4.dttIsDelta==1) - (1 - W12T4.dttChannelActiveEulerNumber(W12T4.dttIsDelta==1)));
W12T5.dttChannelActiveSplitsMean = mean(W12T5.dttChannelActiveSkeletonNodesCount(W12T5.dttIsDelta==1) - (1 - W12T5.dttChannelActiveEulerNumber(W12T5.dttIsDelta==1)));
W12T6.dttChannelActiveSplitsMean = mean(W12T6.dttChannelActiveSkeletonNodesCount(W12T6.dttIsDelta==1) - (1 - W12T6.dttChannelActiveEulerNumber(W12T6.dttIsDelta==1)));

W16T0.dttChannelActiveSplitsMean = mean(W16T0.dttChannelActiveSkeletonNodesCount(W16T0.dttIsDelta==1) - (1 - W16T0.dttChannelActiveEulerNumber(W16T0.dttIsDelta==1)));
W16T1.dttChannelActiveSplitsMean = mean(W16T1.dttChannelActiveSkeletonNodesCount(W16T1.dttIsDelta==1) - (1 - W16T1.dttChannelActiveEulerNumber(W16T1.dttIsDelta==1)));
W16T2.dttChannelActiveSplitsMean = mean(W16T2.dttChannelActiveSkeletonNodesCount(W16T2.dttIsDelta==1) - (1 - W16T2.dttChannelActiveEulerNumber(W16T2.dttIsDelta==1)));
W16T3.dttChannelActiveSplitsMean = mean(W16T3.dttChannelActiveSkeletonNodesCount(W16T3.dttIsDelta==1) - (1 - W16T3.dttChannelActiveEulerNumber(W16T3.dttIsDelta==1)));
W16T4.dttChannelActiveSplitsMean = mean(W16T4.dttChannelActiveSkeletonNodesCount(W16T4.dttIsDelta==1) - (1 - W16T4.dttChannelActiveEulerNumber(W16T4.dttIsDelta==1)));
W16T5.dttChannelActiveSplitsMean = mean(W16T5.dttChannelActiveSkeletonNodesCount(W16T5.dttIsDelta==1) - (1 - W16T5.dttChannelActiveEulerNumber(W16T5.dttIsDelta==1)));
W16T6.dttChannelActiveSplitsMean = mean(W16T6.dttChannelActiveSkeletonNodesCount(W16T6.dttIsDelta==1) - (1 - W16T6.dttChannelActiveEulerNumber(W16T6.dttIsDelta==1)));

W2T0.dttChannelActiveSplitsMean = mean(W2T0.dttChannelActiveSkeletonNodesCount(W2T0.dttIsDelta==1) - (1 - W2T0.dttChannelActiveEulerNumber(W2T0.dttIsDelta==1)));
W2T1.dttChannelActiveSplitsMean = mean(W2T1.dttChannelActiveSkeletonNodesCount(W2T1.dttIsDelta==1) - (1 - W2T1.dttChannelActiveEulerNumber(W2T1.dttIsDelta==1)));
W2T2.dttChannelActiveSplitsMean = mean(W2T2.dttChannelActiveSkeletonNodesCount(W2T2.dttIsDelta==1) - (1 - W2T2.dttChannelActiveEulerNumber(W2T2.dttIsDelta==1)));
W2T3.dttChannelActiveSplitsMean = mean(W2T3.dttChannelActiveSkeletonNodesCount(W2T3.dttIsDelta==1) - (1 - W2T3.dttChannelActiveEulerNumber(W2T3.dttIsDelta==1)));
W2T4.dttChannelActiveSplitsMean = mean(W2T4.dttChannelActiveSkeletonNodesCount(W2T4.dttIsDelta==1) - (1 - W2T4.dttChannelActiveEulerNumber(W2T4.dttIsDelta==1)));
W2T5.dttChannelActiveSplitsMean = mean(W2T5.dttChannelActiveSkeletonNodesCount(W2T5.dttIsDelta==1) - (1 - W2T5.dttChannelActiveEulerNumber(W2T5.dttIsDelta==1)));
W2T6.dttChannelActiveSplitsMean = mean(W2T6.dttChannelActiveSkeletonNodesCount(W2T6.dttIsDelta==1) - (1 - W2T6.dttChannelActiveEulerNumber(W2T6.dttIsDelta==1)));

% standard deviations
W0T0.dttChannelActiveSplitsStd = std(W0T0.dttChannelActiveSkeletonNodesCount - (1 - W0T0.dttChannelActiveEulerNumber));
W0T05.dttChannelActiveSplitsStd = std(W0T05.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W0T05.dttChannelActiveEulerNumber(2:end-1)));
W0T1.dttChannelActiveSplitsStd = std(W0T1.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W0T1.dttChannelActiveEulerNumber(2:end-1)));
W0T2.dttChannelActiveSplitsStd = std(W0T2.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W0T2.dttChannelActiveEulerNumber(2:end-1)));
W0T3.dttChannelActiveSplitsStd = std(W0T3.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W0T3.dttChannelActiveEulerNumber(2:end-1)));
W0T4.dttChannelActiveSplitsStd = std(W0T4.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W0T4.dttChannelActiveEulerNumber(2:end-1)));
W0T5.dttChannelActiveSplitsStd = std(W0T5.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W0T5.dttChannelActiveEulerNumber(2:end-1)));
W0T6.dttChannelActiveSplitsStd = std(W0T6.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W0T6.dttChannelActiveEulerNumber(2:end-1)));

W04T0.dttChannelActiveSplitsStd = std(W04T0.dttChannelActiveSkeletonNodesCount - (1 - W04T0.dttChannelActiveEulerNumber));
W04T1.dttChannelActiveSplitsStd = std(W04T1.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W04T1.dttChannelActiveEulerNumber(2:end-1)));
W04T2.dttChannelActiveSplitsStd = std(W04T2.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W04T2.dttChannelActiveEulerNumber(2:end-1)));
W04T3.dttChannelActiveSplitsStd = std(W04T3.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W04T3.dttChannelActiveEulerNumber(2:end-1)));
W04T4.dttChannelActiveSplitsStd = std(W04T4.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W04T4.dttChannelActiveEulerNumber(2:end-1)));
W04T5.dttChannelActiveSplitsStd = std(W04T5.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W04T5.dttChannelActiveEulerNumber(2:end-1)));
W04T6.dttChannelActiveSplitsStd = std(W04T6.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W04T6.dttChannelActiveEulerNumber(2:end-1)));

W08T0.dttChannelActiveSplitsStd = std(W08T0.dttChannelActiveSkeletonNodesCount - (1 - W08T0.dttChannelActiveEulerNumber));
W08T1.dttChannelActiveSplitsStd = std(W08T1.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W08T1.dttChannelActiveEulerNumber(2:end-1)));
W08T2.dttChannelActiveSplitsStd = std(W08T2.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W08T2.dttChannelActiveEulerNumber(2:end-1)));
W08T3.dttChannelActiveSplitsStd = std(W08T3.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W08T3.dttChannelActiveEulerNumber(2:end-1)));
W08T4.dttChannelActiveSplitsStd = std(W08T4.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W08T4.dttChannelActiveEulerNumber(2:end-1)));
W08T5.dttChannelActiveSplitsStd = std(W08T5.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W08T5.dttChannelActiveEulerNumber(2:end-1)));
W08T6.dttChannelActiveSplitsStd = std(W08T6.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W08T6.dttChannelActiveEulerNumber(2:end-1)));

W12T0.dttChannelActiveSplitsStd = std(W12T0.dttChannelActiveSkeletonNodesCount - (1 - W12T0.dttChannelActiveEulerNumber));
W12T1.dttChannelActiveSplitsStd = std(W12T1.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W12T1.dttChannelActiveEulerNumber(2:end-1)));
W12T2.dttChannelActiveSplitsStd = std(W12T2.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W12T2.dttChannelActiveEulerNumber(2:end-1)));
W12T3.dttChannelActiveSplitsStd = std(W12T3.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W12T3.dttChannelActiveEulerNumber(2:end-1)));
W12T4.dttChannelActiveSplitsStd = std(W12T4.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W12T4.dttChannelActiveEulerNumber(2:end-1)));
W12T5.dttChannelActiveSplitsStd = std(W12T5.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W12T5.dttChannelActiveEulerNumber(2:end-1)));
W12T6.dttChannelActiveSplitsStd = std(W12T6.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W12T6.dttChannelActiveEulerNumber(2:end-1)));

W16T0.dttChannelActiveSplitsStd = std(W16T0.dttChannelActiveSkeletonNodesCount - (1 - W16T0.dttChannelActiveEulerNumber));
W16T1.dttChannelActiveSplitsStd = std(W16T1.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W16T1.dttChannelActiveEulerNumber(2:end-1)));
W16T2.dttChannelActiveSplitsStd = std(W16T2.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W16T2.dttChannelActiveEulerNumber(2:end-1)));
W16T3.dttChannelActiveSplitsStd = std(W16T3.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W16T3.dttChannelActiveEulerNumber(2:end-1)));
W16T4.dttChannelActiveSplitsStd = std(W16T4.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W16T4.dttChannelActiveEulerNumber(2:end-1)));
W16T5.dttChannelActiveSplitsStd = std(W16T5.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W16T5.dttChannelActiveEulerNumber(2:end-1)));
W16T6.dttChannelActiveSplitsStd = std(W16T6.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W16T6.dttChannelActiveEulerNumber(2:end-1)));

W2T0.dttChannelActiveSplitsStd = std(W2T0.dttChannelActiveSkeletonNodesCount - (1 - W2T0.dttChannelActiveEulerNumber));
W2T1.dttChannelActiveSplitsStd = std(W2T1.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W2T1.dttChannelActiveEulerNumber(2:end-1)));
W2T2.dttChannelActiveSplitsStd = std(W2T2.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W2T2.dttChannelActiveEulerNumber(2:end-1)));
W2T3.dttChannelActiveSplitsStd = std(W2T3.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W2T3.dttChannelActiveEulerNumber(2:end-1)));
W2T4.dttChannelActiveSplitsStd = std(W2T4.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W2T4.dttChannelActiveEulerNumber(2:end-1)));
W2T5.dttChannelActiveSplitsStd = std(W2T5.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W2T5.dttChannelActiveEulerNumber(2:end-1)));
W2T6.dttChannelActiveSplitsStd = std(W2T6.dttChannelActiveSkeletonNodesCount(2:end-1) - (1 - W2T6.dttChannelActiveEulerNumber(2:end-1)));

% MATRICES OF MEANS AND STANDARD DEVIATIONS
dttChannelActiveSplitsMeanMatrixFull = [W0T0.dttChannelActiveSplitsMean W0T05.dttChannelActiveSplitsMean W0T1.dttChannelActiveSplitsMean W0T2.dttChannelActiveSplitsMean W0T3.dttChannelActiveSplitsMean W0T4.dttChannelActiveSplitsMean W0T5.dttChannelActiveSplitsMean W0T6.dttChannelActiveSplitsMean; ...
W04T0.dttChannelActiveSplitsMean NaN W04T1.dttChannelActiveSplitsMean W04T2.dttChannelActiveSplitsMean W04T3.dttChannelActiveSplitsMean W04T4.dttChannelActiveSplitsMean W04T5.dttChannelActiveSplitsMean W04T6.dttChannelActiveSplitsMean; ...
W08T0.dttChannelActiveSplitsMean NaN W08T1.dttChannelActiveSplitsMean W08T2.dttChannelActiveSplitsMean W08T3.dttChannelActiveSplitsMean W08T4.dttChannelActiveSplitsMean W08T5.dttChannelActiveSplitsMean W08T6.dttChannelActiveSplitsMean; ...
W12T0.dttChannelActiveSplitsMean NaN W12T1.dttChannelActiveSplitsMean W12T2.dttChannelActiveSplitsMean W12T3.dttChannelActiveSplitsMean W12T4.dttChannelActiveSplitsMean W12T5.dttChannelActiveSplitsMean W12T6.dttChannelActiveSplitsMean; ...
W16T0.dttChannelActiveSplitsMean NaN W16T1.dttChannelActiveSplitsMean W16T2.dttChannelActiveSplitsMean W16T3.dttChannelActiveSplitsMean W16T4.dttChannelActiveSplitsMean W16T5.dttChannelActiveSplitsMean W16T6.dttChannelActiveSplitsMean; ...
W2T0.dttChannelActiveSplitsMean NaN W2T1.dttChannelActiveSplitsMean W2T2.dttChannelActiveSplitsMean W2T3.dttChannelActiveSplitsMean W2T4.dttChannelActiveSplitsMean W2T5.dttChannelActiveSplitsMean W2T6.dttChannelActiveSplitsMean];

dttChannelActiveSplitsStdMatrixFull = [W0T0.dttChannelActiveSplitsStd W0T05.dttChannelActiveSplitsStd W0T1.dttChannelActiveSplitsStd W0T2.dttChannelActiveSplitsStd W0T3.dttChannelActiveSplitsStd W0T4.dttChannelActiveSplitsStd W0T5.dttChannelActiveSplitsStd W0T6.dttChannelActiveSplitsStd; ...
W04T0.dttChannelActiveSplitsStd NaN W04T1.dttChannelActiveSplitsStd W04T2.dttChannelActiveSplitsStd W04T3.dttChannelActiveSplitsStd W04T4.dttChannelActiveSplitsStd W04T5.dttChannelActiveSplitsStd W04T6.dttChannelActiveSplitsStd; ...
W08T0.dttChannelActiveSplitsStd NaN W08T1.dttChannelActiveSplitsStd W08T2.dttChannelActiveSplitsStd W08T3.dttChannelActiveSplitsStd W08T4.dttChannelActiveSplitsStd W08T5.dttChannelActiveSplitsStd W08T6.dttChannelActiveSplitsStd; ...
W12T0.dttChannelActiveSplitsStd NaN W12T1.dttChannelActiveSplitsStd W12T2.dttChannelActiveSplitsStd W12T3.dttChannelActiveSplitsStd W12T4.dttChannelActiveSplitsStd W12T5.dttChannelActiveSplitsStd W12T6.dttChannelActiveSplitsStd; ...
W16T0.dttChannelActiveSplitsStd NaN W16T1.dttChannelActiveSplitsStd W16T2.dttChannelActiveSplitsStd W16T3.dttChannelActiveSplitsStd W16T4.dttChannelActiveSplitsStd W16T5.dttChannelActiveSplitsStd W16T6.dttChannelActiveSplitsStd; ...
W2T0.dttChannelActiveSplitsStd NaN W2T1.dttChannelActiveSplitsStd W2T2.dttChannelActiveSplitsStd W2T3.dttChannelActiveSplitsStd W2T4.dttChannelActiveSplitsStd W2T5.dttChannelActiveSplitsStd W2T6.dttChannelActiveSplitsStd];

%% DETERMINE TEMPORAL MEANS AND STANDARD DEVIATIONS OF CHANNEL MOBILITY NUMBERS
W0T0.dttChannelMobilityMean = mean(W0T0.dttChannelMobility, 'omitnan');
W0T05.dttChannelMobilityMean = mean(W0T05.dttChannelMobility(2:end-1), 'omitnan');
W0T1.dttChannelMobilityMean = mean(W0T1.dttChannelMobility(2:end-1), 'omitnan');
W0T2.dttChannelMobilityMean = mean(W0T2.dttChannelMobility(2:end-1), 'omitnan');
W0T3.dttChannelMobilityMean = mean(W0T3.dttChannelMobility(2:end-1), 'omitnan');
W0T4.dttChannelMobilityMean = mean(W0T4.dttChannelMobility(2:end-1), 'omitnan');
W0T5.dttChannelMobilityMean = mean(W0T5.dttChannelMobility(2:end-1), 'omitnan');
W0T6.dttChannelMobilityMean = mean(W0T6.dttChannelMobility(2:end-1), 'omitnan');

W0T0.dttChannelMobilityStd = std(W0T0.dttChannelMobility, 'omitnan');
W0T05.dttChannelMobilityStd = std(W0T05.dttChannelMobility(2:end-1), 'omitnan');
W0T1.dttChannelMobilityStd = std(W0T1.dttChannelMobility(2:end-1), 'omitnan');
W0T2.dttChannelMobilityStd = std(W0T2.dttChannelMobility(2:end-1), 'omitnan');
W0T3.dttChannelMobilityStd = std(W0T3.dttChannelMobility(2:end-1), 'omitnan');
W0T4.dttChannelMobilityStd = std(W0T4.dttChannelMobility(2:end-1), 'omitnan');
W0T5.dttChannelMobilityStd = std(W0T5.dttChannelMobility(2:end-1), 'omitnan');
W0T6.dttChannelMobilityStd = std(W0T6.dttChannelMobility(2:end-1), 'omitnan');

W04T0.dttChannelMobilityMean = mean(W04T0.dttChannelMobility, 'omitnan');
W04T1.dttChannelMobilityMean = mean(W04T1.dttChannelMobility(2:end-1), 'omitnan');
W04T2.dttChannelMobilityMean = mean(W04T2.dttChannelMobility(2:end-1), 'omitnan');
W04T3.dttChannelMobilityMean = mean(W04T3.dttChannelMobility(2:end-1), 'omitnan');
W04T4.dttChannelMobilityMean = mean(W04T4.dttChannelMobility(2:end-1), 'omitnan');
W04T5.dttChannelMobilityMean = mean(W04T5.dttChannelMobility(2:end-1), 'omitnan');
W04T6.dttChannelMobilityMean = mean(W04T6.dttChannelMobility(2:end-1), 'omitnan');

W04T0.dttChannelMobilityStd = std(W04T0.dttChannelMobility, 'omitnan');
W04T1.dttChannelMobilityStd = std(W04T1.dttChannelMobility(2:end-1), 'omitnan');
W04T2.dttChannelMobilityStd = std(W04T2.dttChannelMobility(2:end-1), 'omitnan');
W04T3.dttChannelMobilityStd = std(W04T3.dttChannelMobility(2:end-1), 'omitnan');
W04T4.dttChannelMobilityStd = std(W04T4.dttChannelMobility(2:end-1), 'omitnan');
W04T5.dttChannelMobilityStd = std(W04T5.dttChannelMobility(2:end-1), 'omitnan');
W04T6.dttChannelMobilityStd = std(W04T6.dttChannelMobility(2:end-1), 'omitnan');

W08T0.dttChannelMobilityMean = mean(W08T0.dttChannelMobility, 'omitnan');
W08T1.dttChannelMobilityMean = mean(W08T1.dttChannelMobility(2:end-1), 'omitnan');
W08T2.dttChannelMobilityMean = mean(W08T2.dttChannelMobility(2:end-1), 'omitnan');
W08T3.dttChannelMobilityMean = mean(W08T3.dttChannelMobility(2:end-1), 'omitnan');
W08T4.dttChannelMobilityMean = mean(W08T4.dttChannelMobility(2:end-1), 'omitnan');
W08T5.dttChannelMobilityMean = mean(W08T5.dttChannelMobility(2:end-1), 'omitnan');
W08T6.dttChannelMobilityMean = mean(W08T6.dttChannelMobility(2:end-1), 'omitnan');

W08T0.dttChannelMobilityStd = std(W08T0.dttChannelMobility, 'omitnan');
W08T1.dttChannelMobilityStd = std(W08T1.dttChannelMobility(2:end-1), 'omitnan');
W08T2.dttChannelMobilityStd = std(W08T2.dttChannelMobility(2:end-1), 'omitnan');
W08T3.dttChannelMobilityStd = std(W08T3.dttChannelMobility(2:end-1), 'omitnan');
W08T4.dttChannelMobilityStd = std(W08T4.dttChannelMobility(2:end-1), 'omitnan');
W08T5.dttChannelMobilityStd = std(W08T5.dttChannelMobility(2:end-1), 'omitnan');
W08T6.dttChannelMobilityStd = std(W08T6.dttChannelMobility(2:end-1), 'omitnan');

W12T0.dttChannelMobilityMean = mean(W12T0.dttChannelMobility, 'omitnan');
W12T1.dttChannelMobilityMean = mean(W12T1.dttChannelMobility(2:end-1), 'omitnan');
W12T2.dttChannelMobilityMean = mean(W12T2.dttChannelMobility(2:end-1), 'omitnan');
W12T3.dttChannelMobilityMean = mean(W12T3.dttChannelMobility(2:end-1), 'omitnan');
W12T4.dttChannelMobilityMean = mean(W12T4.dttChannelMobility(2:end-1), 'omitnan');
W12T5.dttChannelMobilityMean = mean(W12T5.dttChannelMobility(2:end-1), 'omitnan');
W12T6.dttChannelMobilityMean = mean(W12T6.dttChannelMobility(2:end-1), 'omitnan');

W12T0.dttChannelMobilityStd = std(W12T0.dttChannelMobility, 'omitnan');
W12T1.dttChannelMobilityStd = std(W12T1.dttChannelMobility(2:end-1), 'omitnan');
W12T2.dttChannelMobilityStd = std(W12T2.dttChannelMobility(2:end-1), 'omitnan');
W12T3.dttChannelMobilityStd = std(W12T3.dttChannelMobility(2:end-1), 'omitnan');
W12T4.dttChannelMobilityStd = std(W12T4.dttChannelMobility(2:end-1), 'omitnan');
W12T5.dttChannelMobilityStd = std(W12T5.dttChannelMobility(2:end-1), 'omitnan');
W12T6.dttChannelMobilityStd = std(W12T6.dttChannelMobility(2:end-1), 'omitnan');

W16T0.dttChannelMobilityMean = mean(W16T0.dttChannelMobility, 'omitnan');
W16T1.dttChannelMobilityMean = mean(W16T1.dttChannelMobility(2:end-1), 'omitnan');
W16T2.dttChannelMobilityMean = mean(W16T2.dttChannelMobility(2:end-1), 'omitnan');
W16T3.dttChannelMobilityMean = mean(W16T3.dttChannelMobility(2:end-1), 'omitnan');
W16T4.dttChannelMobilityMean = mean(W16T4.dttChannelMobility(2:end-1), 'omitnan');
W16T5.dttChannelMobilityMean = mean(W16T5.dttChannelMobility(2:end-1), 'omitnan');
W16T6.dttChannelMobilityMean = mean(W16T6.dttChannelMobility(2:end-1), 'omitnan');

W16T0.dttChannelMobilityStd = std(W16T0.dttChannelMobility, 'omitnan');
W16T1.dttChannelMobilityStd = std(W16T1.dttChannelMobility(2:end-1), 'omitnan');
W16T2.dttChannelMobilityStd = std(W16T2.dttChannelMobility(2:end-1), 'omitnan');
W16T3.dttChannelMobilityStd = std(W16T3.dttChannelMobility(2:end-1), 'omitnan');
W16T4.dttChannelMobilityStd = std(W16T4.dttChannelMobility(2:end-1), 'omitnan');
W16T5.dttChannelMobilityStd = std(W16T5.dttChannelMobility(2:end-1), 'omitnan');
W16T6.dttChannelMobilityStd = std(W16T6.dttChannelMobility(2:end-1), 'omitnan');

W2T0.dttChannelMobilityMean = mean(W2T0.dttChannelMobility, 'omitnan');
W2T1.dttChannelMobilityMean = mean(W2T1.dttChannelMobility(2:end-1), 'omitnan');
W2T2.dttChannelMobilityMean = mean(W2T2.dttChannelMobility(2:end-1), 'omitnan');
W2T3.dttChannelMobilityMean = mean(W2T3.dttChannelMobility(2:end-1), 'omitnan');
W2T4.dttChannelMobilityMean = mean(W2T4.dttChannelMobility(2:end-1), 'omitnan');
W2T5.dttChannelMobilityMean = mean(W2T5.dttChannelMobility(2:end-1), 'omitnan');
W2T6.dttChannelMobilityMean = mean(W2T6.dttChannelMobility(2:end-1), 'omitnan');

W2T0.dttChannelMobilityStd = std(W2T0.dttChannelMobility, 'omitnan');
W2T1.dttChannelMobilityStd = std(W2T1.dttChannelMobility(2:end-1), 'omitnan');
W2T2.dttChannelMobilityStd = std(W2T2.dttChannelMobility(2:end-1), 'omitnan');
W2T3.dttChannelMobilityStd = std(W2T3.dttChannelMobility(2:end-1), 'omitnan');
W2T4.dttChannelMobilityStd = std(W2T4.dttChannelMobility(2:end-1), 'omitnan');
W2T5.dttChannelMobilityStd = std(W2T5.dttChannelMobility(2:end-1), 'omitnan');
W2T6.dttChannelMobilityStd = std(W2T6.dttChannelMobility(2:end-1), 'omitnan');

% MATRIX OF MEANS
% dttChannelMobilityMeanMatrix = [W0T0.dttChannelMobilityMean W0T1.dttChannelMobilityMean W0T2.dttChannelMobilityMean W0T4.dttChannelMobilityMean W0T6.dttChannelMobilityMean; ...
% W04T0.dttChannelMobilityMean W04T1.dttChannelMobilityMean W04T2.dttChannelMobilityMean W04T4.dttChannelMobilityMean W04T6.dttChannelMobilityMean; ...
% W08T0.dttChannelMobilityMean W08T1.dttChannelMobilityMean W08T2.dttChannelMobilityMean W08T4.dttChannelMobilityMean W08T6.dttChannelMobilityMean; ...
% W12T0.dttChannelMobilityMean W12T1.dttChannelMobilityMean W12T2.dttChannelMobilityMean W12T4.dttChannelMobilityMean W12T6.dttChannelMobilityMean; ...
% W16T0.dttChannelMobilityMean W16T1.dttChannelMobilityMean W16T2.dttChannelMobilityMean W16T4.dttChannelMobilityMean W16T6.dttChannelMobilityMean; ...
% W2T0.dttChannelMobilityMean W2T1.dttChannelMobilityMean W2T2.dttChannelMobilityMean W2T4.dttChannelMobilityMean W2T6.dttChannelMobilityMean];

dttChannelMobilityMeanMatrixFull = [W0T0.dttChannelMobilityMean W0T05.dttChannelMobilityMean W0T1.dttChannelMobilityMean W0T2.dttChannelMobilityMean W0T3.dttChannelMobilityMean W0T4.dttChannelMobilityMean W0T5.dttChannelMobilityMean W0T6.dttChannelMobilityMean; ...
W04T0.dttChannelMobilityMean NaN W04T1.dttChannelMobilityMean W04T2.dttChannelMobilityMean W04T3.dttChannelMobilityMean W04T4.dttChannelMobilityMean W04T5.dttChannelMobilityMean W04T6.dttChannelMobilityMean; ...
W08T0.dttChannelMobilityMean NaN W08T1.dttChannelMobilityMean W08T2.dttChannelMobilityMean W08T3.dttChannelMobilityMean W08T4.dttChannelMobilityMean W08T5.dttChannelMobilityMean W08T6.dttChannelMobilityMean; ...
W12T0.dttChannelMobilityMean NaN W12T1.dttChannelMobilityMean W12T2.dttChannelMobilityMean W12T3.dttChannelMobilityMean W12T4.dttChannelMobilityMean W12T5.dttChannelMobilityMean W12T6.dttChannelMobilityMean; ...
W16T0.dttChannelMobilityMean NaN W16T1.dttChannelMobilityMean W16T2.dttChannelMobilityMean W16T3.dttChannelMobilityMean W16T4.dttChannelMobilityMean W16T5.dttChannelMobilityMean W16T6.dttChannelMobilityMean; ...
W2T0.dttChannelMobilityMean NaN W2T1.dttChannelMobilityMean W2T2.dttChannelMobilityMean W2T3.dttChannelMobilityMean W2T4.dttChannelMobilityMean W2T5.dttChannelMobilityMean W2T6.dttChannelMobilityMean];

dttChannelMobilityStdMatrixFull = [W0T0.dttChannelMobilityStd W0T05.dttChannelMobilityStd W0T1.dttChannelMobilityStd W0T2.dttChannelMobilityStd W0T3.dttChannelMobilityStd W0T4.dttChannelMobilityStd W0T5.dttChannelMobilityStd W0T6.dttChannelMobilityStd; ...
W04T0.dttChannelMobilityStd NaN W04T1.dttChannelMobilityStd W04T2.dttChannelMobilityStd W04T3.dttChannelMobilityStd W04T4.dttChannelMobilityStd W04T5.dttChannelMobilityStd W04T6.dttChannelMobilityStd; ...
W08T0.dttChannelMobilityStd NaN W08T1.dttChannelMobilityStd W08T2.dttChannelMobilityStd W08T3.dttChannelMobilityStd W08T4.dttChannelMobilityStd W08T5.dttChannelMobilityStd W08T6.dttChannelMobilityStd; ...
W12T0.dttChannelMobilityStd NaN W12T1.dttChannelMobilityStd W12T2.dttChannelMobilityStd W12T3.dttChannelMobilityStd W12T4.dttChannelMobilityStd W12T5.dttChannelMobilityStd W12T6.dttChannelMobilityStd; ...
W16T0.dttChannelMobilityStd NaN W16T1.dttChannelMobilityStd W16T2.dttChannelMobilityStd W16T3.dttChannelMobilityStd W16T4.dttChannelMobilityStd W16T5.dttChannelMobilityStd W16T6.dttChannelMobilityStd; ...
W2T0.dttChannelMobilityStd NaN W2T1.dttChannelMobilityStd W2T2.dttChannelMobilityStd W2T3.dttChannelMobilityStd W2T4.dttChannelMobilityStd W2T5.dttChannelMobilityStd W2T6.dttChannelMobilityStd];

%% MATRICES OF FINAL SEDIMENT-SPREADING CENTROID LOCATIONS AND SIGMA VALUES
% dttXCentroids = [W0T0.xCentroid(end) W0T1.xCentroid(end) W0T2.xCentroid(end) W0T4.xCentroid(end) W0T6.xCentroid(end); ...
% W04T0.xCentroid(end) W04T1.xCentroid(end) W04T2.xCentroid(end) W04T4.xCentroid(end) W04T6.xCentroid(end); ...
% W08T0.xCentroid(end) W08T1.xCentroid(end) W08T2.xCentroid(end) W08T4.xCentroid(end) W08T6.xCentroid(end); ...
% W12T0.xCentroid(end) W12T1.xCentroid(end) W12T2.xCentroid(end) W12T4.xCentroid(end) W12T6.xCentroid(end); ...
% W16T0.xCentroid(end) W16T1.xCentroid(end) W16T2.xCentroid(end) W16T4.xCentroid(end) W16T6.xCentroid(end); ...
% W2T0.xCentroid(end) W2T1.xCentroid(end) W2T2.xCentroid(end) W2T4.xCentroid(end) W2T6.xCentroid(end)];

dttXCentroidsFull = [W0T0.xCentroid(end) W0T05.xCentroid(end) W0T1.xCentroid(end) W0T2.xCentroid(end) W0T3.xCentroid(end) W0T4.xCentroid(end) W0T5.xCentroid(end) W0T6.xCentroid(end); ...
W04T0.xCentroid(end) NaN W04T1.xCentroid(end) W04T2.xCentroid(end) W04T3.xCentroid(end) W04T4.xCentroid(end) W04T5.xCentroid(end) W04T6.xCentroid(end); ...
W08T0.xCentroid(end) NaN W08T1.xCentroid(end) W08T2.xCentroid(end) W08T3.xCentroid(end) W08T4.xCentroid(end) W08T5.xCentroid(end) W08T6.xCentroid(end); ...
W12T0.xCentroid(end) NaN W12T1.xCentroid(end) W12T2.xCentroid(end) W12T3.xCentroid(end) W12T4.xCentroid(end) W12T5.xCentroid(end) W12T6.xCentroid(end); ...
W16T0.xCentroid(end) NaN W16T1.xCentroid(end) W16T2.xCentroid(end) W16T3.xCentroid(end) W16T4.xCentroid(end) W16T5.xCentroid(end) W16T6.xCentroid(end); ...
W2T0.xCentroid(end) NaN W2T1.xCentroid(end) W2T2.xCentroid(end) W2T3.xCentroid(end) W2T4.xCentroid(end) W2T5.xCentroid(end) W2T6.xCentroid(end)];

% dttXSigmas = [W0T0.xSigma(end) W0T1.xSigma(end) W0T2.xSigma(end) W0T4.xSigma(end) W0T6.xSigma(end); ...
% W04T0.xSigma(end) W04T1.xSigma(end) W04T2.xSigma(end) W04T4.xSigma(end) W04T6.xSigma(end); ...
% W08T0.xSigma(end) W08T1.xSigma(end) W08T2.xSigma(end) W08T4.xSigma(end) W08T6.xSigma(end); ...
% W12T0.xSigma(end) W12T1.xSigma(end) W12T2.xSigma(end) W12T4.xSigma(end) W12T6.xSigma(end); ...
% W16T0.xSigma(end) W16T1.xSigma(end) W16T2.xSigma(end) W16T4.xSigma(end) W16T6.xSigma(end); ...
% W2T0.xSigma(end) W2T1.xSigma(end) W2T2.xSigma(end) W2T4.xSigma(end) W2T6.xSigma(end)];

dttXSigmasFull = [W0T0.xSigma(end) W0T05.xSigma(end) W0T1.xSigma(end) W0T2.xSigma(end) W0T3.xSigma(end) W0T4.xSigma(end) W0T5.xSigma(end) W0T6.xSigma(end); ...
W04T0.xSigma(end) NaN W04T1.xSigma(end) W04T2.xSigma(end) W04T3.xSigma(end) W04T4.xSigma(end) W04T5.xSigma(end) W04T6.xSigma(end); ...
W08T0.xSigma(end) NaN W08T1.xSigma(end) W08T2.xSigma(end) W08T3.xSigma(end) W08T4.xSigma(end) W08T5.xSigma(end) W08T6.xSigma(end); ...
W12T0.xSigma(end) NaN W12T1.xSigma(end) W12T2.xSigma(end) W12T3.xSigma(end) W12T4.xSigma(end) W12T5.xSigma(end) W12T6.xSigma(end); ...
W16T0.xSigma(end) NaN W16T1.xSigma(end) W16T2.xSigma(end) W16T3.xSigma(end) W16T4.xSigma(end) W16T5.xSigma(end) W16T6.xSigma(end); ...
W2T0.xSigma(end) NaN W2T1.xSigma(end) W2T2.xSigma(end) W2T3.xSigma(end) W2T4.xSigma(end) W2T5.xSigma(end) W2T6.xSigma(end)];

% dttYCentroids = [W0T0.yCentroid(end) W0T1.yCentroid(end) W0T2.yCentroid(end) W0T4.yCentroid(end) W0T6.yCentroid(end); ...
% W04T0.yCentroid(end) W04T1.yCentroid(end) W04T2.yCentroid(end) W04T4.yCentroid(end) W04T6.yCentroid(end); ...
% W08T0.yCentroid(end) W08T1.yCentroid(end) W08T2.yCentroid(end) W08T4.yCentroid(end) W08T6.yCentroid(end); ...
% W12T0.yCentroid(end) W12T1.yCentroid(end) W12T2.yCentroid(end) W12T4.yCentroid(end) W12T6.yCentroid(end); ...
% W16T0.yCentroid(end) W16T1.yCentroid(end) W16T2.yCentroid(end) W16T4.yCentroid(end) W16T6.yCentroid(end); ...
% W2T0.yCentroid(end) W2T1.yCentroid(end) W2T2.yCentroid(end) W2T4.yCentroid(end) W2T6.yCentroid(end)];

dttYCentroidsFull = [W0T0.yCentroid(end) W0T05.yCentroid(end) W0T1.yCentroid(end) W0T2.yCentroid(end) W0T3.yCentroid(end) W0T4.yCentroid(end) W0T5.yCentroid(end) W0T6.yCentroid(end); ...
W04T0.yCentroid(end) NaN W04T1.yCentroid(end) W04T2.yCentroid(end) W04T3.yCentroid(end) W04T4.yCentroid(end) W04T5.yCentroid(end) W04T6.yCentroid(end); ...
W08T0.yCentroid(end) NaN W08T1.yCentroid(end) W08T2.yCentroid(end) W08T3.yCentroid(end) W08T4.yCentroid(end) W08T5.yCentroid(end) W08T6.yCentroid(end); ...
W12T0.yCentroid(end) NaN W12T1.yCentroid(end) W12T2.yCentroid(end) W12T3.yCentroid(end) W12T4.yCentroid(end) W12T5.yCentroid(end) W12T6.yCentroid(end); ...
W16T0.yCentroid(end) NaN W16T1.yCentroid(end) W16T2.yCentroid(end) W16T3.yCentroid(end) W16T4.yCentroid(end) W16T5.yCentroid(end) W16T6.yCentroid(end); ...
W2T0.yCentroid(end) NaN W2T1.yCentroid(end) W2T2.yCentroid(end) W2T3.yCentroid(end) W2T4.yCentroid(end) W2T5.yCentroid(end) W2T6.yCentroid(end)];

% dttYSigmas = [W0T0.ySigma(end) W0T1.ySigma(end) W0T2.ySigma(end) W0T4.ySigma(end) W0T6.ySigma(end); ...
% W04T0.ySigma(end) W04T1.ySigma(end) W04T2.ySigma(end) W04T4.ySigma(end) W04T6.ySigma(end); ...
% W08T0.ySigma(end) W08T1.ySigma(end) W08T2.ySigma(end) W08T4.ySigma(end) W08T6.ySigma(end); ...
% W12T0.ySigma(end) W12T1.ySigma(end) W12T2.ySigma(end) W12T4.ySigma(end) W12T6.ySigma(end); ...
% W16T0.ySigma(end) W16T1.ySigma(end) W16T2.ySigma(end) W16T4.ySigma(end) W16T6.ySigma(end); ...
% W2T0.ySigma(end) W2T1.ySigma(end) W2T2.ySigma(end) W2T4.ySigma(end) W2T6.ySigma(end)];

dttYSigmasFull = [W0T0.ySigma(end) W0T05.ySigma(end) W0T1.ySigma(end) W0T2.ySigma(end) W0T3.ySigma(end) W0T4.ySigma(end) W0T5.ySigma(end) W0T6.ySigma(end); ...
W04T0.ySigma(end) NaN W04T1.ySigma(end) W04T2.ySigma(end) W04T3.ySigma(end) W04T4.ySigma(end) W04T5.ySigma(end) W04T6.ySigma(end); ...
W08T0.ySigma(end) NaN W08T1.ySigma(end) W08T2.ySigma(end) W08T3.ySigma(end) W08T4.ySigma(end) W08T5.ySigma(end) W08T6.ySigma(end); ...
W12T0.ySigma(end) NaN W12T1.ySigma(end) W12T2.ySigma(end) W12T3.ySigma(end) W12T4.ySigma(end) W12T5.ySigma(end) W12T6.ySigma(end); ...
W16T0.ySigma(end) NaN W16T1.ySigma(end) W16T2.ySigma(end) W16T3.ySigma(end) W16T4.ySigma(end) W16T5.ySigma(end) W16T6.ySigma(end); ...
W2T0.ySigma(end) NaN W2T1.ySigma(end) W2T2.ySigma(end) W2T3.ySigma(end) W2T4.ySigma(end) W2T5.ySigma(end) W2T6.ySigma(end)];

% dttZCentroids = [W0T0.zCentroid(end) W0T1.zCentroid(end) W0T2.zCentroid(end) W0T4.zCentroid(end) W0T6.zCentroid(end); ...
% W04T0.zCentroid(end) W04T1.zCentroid(end) W04T2.zCentroid(end) W04T4.zCentroid(end) W04T6.zCentroid(end); ...
% W08T0.zCentroid(end) W08T1.zCentroid(end) W08T2.zCentroid(end) W08T4.zCentroid(end) W08T6.zCentroid(end); ...
% W12T0.zCentroid(end) W12T1.zCentroid(end) W12T2.zCentroid(end) W12T4.zCentroid(end) W12T6.zCentroid(end); ...
% W16T0.zCentroid(end) W16T1.zCentroid(end) W16T2.zCentroid(end) W16T4.zCentroid(end) W16T6.zCentroid(end); ...
% W2T0.zCentroid(end) W2T1.zCentroid(end) W2T2.zCentroid(end) W2T4.zCentroid(end) W2T6.zCentroid(end)];

dttZCentroidsFull = [W0T0.zCentroid(end) W0T05.zCentroid(end) W0T1.zCentroid(end) W0T2.zCentroid(end) W0T3.zCentroid(end) W0T4.zCentroid(end) W0T5.zCentroid(end) W0T6.zCentroid(end); ...
W04T0.zCentroid(end) NaN W04T1.zCentroid(end) W04T2.zCentroid(end) W04T3.zCentroid(end) W04T4.zCentroid(end) W04T5.zCentroid(end) W04T6.zCentroid(end); ...
W08T0.zCentroid(end) NaN W08T1.zCentroid(end) W08T2.zCentroid(end) W08T3.zCentroid(end) W08T4.zCentroid(end) W08T5.zCentroid(end) W08T6.zCentroid(end); ...
W12T0.zCentroid(end) NaN W12T1.zCentroid(end) W12T2.zCentroid(end) W12T3.zCentroid(end) W12T4.zCentroid(end) W12T5.zCentroid(end) W12T6.zCentroid(end); ...
W16T0.zCentroid(end) NaN W16T1.zCentroid(end) W16T2.zCentroid(end) W16T3.zCentroid(end) W16T4.zCentroid(end) W16T5.zCentroid(end) W16T6.zCentroid(end); ...
W2T0.zCentroid(end) NaN W2T1.zCentroid(end) W2T2.zCentroid(end) W2T3.zCentroid(end) W2T4.zCentroid(end) W2T5.zCentroid(end) W2T6.zCentroid(end)];

% dttZSigmas = [W0T0.zSigma(end) W0T1.zSigma(end) W0T2.zSigma(end) W0T4.zSigma(end) W0T6.zSigma(end); ...
% W04T0.zSigma(end) W04T1.zSigma(end) W04T2.zSigma(end) W04T4.zSigma(end) W04T6.zSigma(end); ...
% W08T0.zSigma(end) W08T1.zSigma(end) W08T2.zSigma(end) W08T4.zSigma(end) W08T6.zSigma(end); ...
% W12T0.zSigma(end) W12T1.zSigma(end) W12T2.zSigma(end) W12T4.zSigma(end) W12T6.zSigma(end); ...
% W16T0.zSigma(end) W16T1.zSigma(end) W16T2.zSigma(end) W16T4.zSigma(end) W16T6.zSigma(end); ...
% W2T0.zSigma(end) W2T1.zSigma(end) W2T2.zSigma(end) W2T4.zSigma(end) W2T6.zSigma(end)];

dttZSigmasFull = [W0T0.zSigma(end) W0T05.zSigma(end) W0T1.zSigma(end) W0T2.zSigma(end) W0T3.zSigma(end) W0T4.zSigma(end) W0T5.zSigma(end) W0T6.zSigma(end); ...
W04T0.zSigma(end) NaN W04T1.zSigma(end) W04T2.zSigma(end) W04T3.zSigma(end) W04T4.zSigma(end) W04T5.zSigma(end) W04T6.zSigma(end); ...
W08T0.zSigma(end) NaN W08T1.zSigma(end) W08T2.zSigma(end) W08T3.zSigma(end) W08T4.zSigma(end) W08T5.zSigma(end) W08T6.zSigma(end); ...
W12T0.zSigma(end) NaN W12T1.zSigma(end) W12T2.zSigma(end) W12T3.zSigma(end) W12T4.zSigma(end) W12T5.zSigma(end) W12T6.zSigma(end); ...
W16T0.zSigma(end) NaN W16T1.zSigma(end) W16T2.zSigma(end) W16T3.zSigma(end) W16T4.zSigma(end) W16T5.zSigma(end) W16T6.zSigma(end); ...
W2T0.zSigma(end) NaN W2T1.zSigma(end) W2T2.zSigma(end) W2T3.zSigma(end) W2T4.zSigma(end) W2T5.zSigma(end) W2T6.zSigma(end)];

% dttZCentroids = reshape(dttZCentroids, [30, 1]);
% dttZSigmas = reshape(dttZSigmas, [30, 1]);

%% MEANS OF NON-DIMENSIONALISED ONSHORE AREA
W0T0.dttOnshoreAreaFractionMean = 1;
W0T05.dttOnshoreAreaFractionMean = mean(W0T05.dttHighTideAreaOnshore ./ W0T05.dttLowTideAreaOnshore, 'omitnan');
W0T1.dttOnshoreAreaFractionMean = mean(W0T1.dttHighTideAreaOnshore ./ W0T1.dttLowTideAreaOnshore, 'omitnan');
W0T2.dttOnshoreAreaFractionMean = mean(W0T2.dttHighTideAreaOnshore ./ W0T2.dttLowTideAreaOnshore, 'omitnan');
W0T3.dttOnshoreAreaFractionMean = mean(W0T3.dttHighTideAreaOnshore ./ W0T3.dttLowTideAreaOnshore, 'omitnan');
W0T4.dttOnshoreAreaFractionMean = mean(W0T4.dttHighTideAreaOnshore ./ W0T4.dttLowTideAreaOnshore, 'omitnan');
W0T5.dttOnshoreAreaFractionMean = mean(W0T5.dttHighTideAreaOnshore ./ W0T5.dttLowTideAreaOnshore, 'omitnan');
W0T6.dttOnshoreAreaFractionMean = mean(W0T6.dttHighTideAreaOnshore ./ W0T6.dttLowTideAreaOnshore, 'omitnan');

W04T0.dttOnshoreAreaFractionMean = 1;
W04T1.dttOnshoreAreaFractionMean = mean(W04T1.dttHighTideAreaOnshore ./ W04T1.dttLowTideAreaOnshore, 'omitnan');
W04T2.dttOnshoreAreaFractionMean = mean(W04T2.dttHighTideAreaOnshore ./ W04T2.dttLowTideAreaOnshore, 'omitnan');
W04T3.dttOnshoreAreaFractionMean = mean(W04T3.dttHighTideAreaOnshore ./ W04T3.dttLowTideAreaOnshore, 'omitnan');
W04T4.dttOnshoreAreaFractionMean = mean(W04T4.dttHighTideAreaOnshore ./ W04T4.dttLowTideAreaOnshore, 'omitnan');
W04T5.dttOnshoreAreaFractionMean = mean(W04T5.dttHighTideAreaOnshore ./ W04T5.dttLowTideAreaOnshore, 'omitnan');
W04T6.dttOnshoreAreaFractionMean = mean(W04T6.dttHighTideAreaOnshore ./ W04T6.dttLowTideAreaOnshore, 'omitnan');

W08T0.dttOnshoreAreaFractionMean = 1;
W08T1.dttOnshoreAreaFractionMean = mean(W08T1.dttHighTideAreaOnshore ./ W08T1.dttLowTideAreaOnshore, 'omitnan');
W08T2.dttOnshoreAreaFractionMean = mean(W08T2.dttHighTideAreaOnshore ./ W08T2.dttLowTideAreaOnshore, 'omitnan');
W08T3.dttOnshoreAreaFractionMean = mean(W08T3.dttHighTideAreaOnshore ./ W08T3.dttLowTideAreaOnshore, 'omitnan');
W08T4.dttOnshoreAreaFractionMean = mean(W08T4.dttHighTideAreaOnshore ./ W08T4.dttLowTideAreaOnshore, 'omitnan');
W08T5.dttOnshoreAreaFractionMean = mean(W08T5.dttHighTideAreaOnshore ./ W08T5.dttLowTideAreaOnshore, 'omitnan');
W08T6.dttOnshoreAreaFractionMean = mean(W08T6.dttHighTideAreaOnshore ./ W08T6.dttLowTideAreaOnshore, 'omitnan');

W12T0.dttOnshoreAreaFractionMean = 1;
W12T1.dttOnshoreAreaFractionMean = mean(W12T1.dttHighTideAreaOnshore ./ W12T1.dttLowTideAreaOnshore, 'omitnan');
W12T2.dttOnshoreAreaFractionMean = mean(W12T2.dttHighTideAreaOnshore ./ W12T2.dttLowTideAreaOnshore, 'omitnan');
W12T3.dttOnshoreAreaFractionMean = mean(W12T3.dttHighTideAreaOnshore ./ W12T3.dttLowTideAreaOnshore, 'omitnan');
W12T4.dttOnshoreAreaFractionMean = mean(W12T4.dttHighTideAreaOnshore ./ W12T4.dttLowTideAreaOnshore, 'omitnan');
W12T5.dttOnshoreAreaFractionMean = mean(W12T5.dttHighTideAreaOnshore ./ W12T5.dttLowTideAreaOnshore, 'omitnan');
W12T6.dttOnshoreAreaFractionMean = mean(W12T6.dttHighTideAreaOnshore ./ W12T6.dttLowTideAreaOnshore, 'omitnan');

W16T0.dttOnshoreAreaFractionMean = 1;
W16T1.dttOnshoreAreaFractionMean = mean(W16T1.dttHighTideAreaOnshore ./ W16T1.dttLowTideAreaOnshore, 'omitnan');
W16T2.dttOnshoreAreaFractionMean = mean(W16T2.dttHighTideAreaOnshore ./ W16T2.dttLowTideAreaOnshore, 'omitnan');
W16T3.dttOnshoreAreaFractionMean = mean(W16T3.dttHighTideAreaOnshore ./ W16T3.dttLowTideAreaOnshore, 'omitnan');
W16T4.dttOnshoreAreaFractionMean = mean(W16T4.dttHighTideAreaOnshore ./ W16T4.dttLowTideAreaOnshore, 'omitnan');
W16T5.dttOnshoreAreaFractionMean = mean(W16T5.dttHighTideAreaOnshore ./ W16T5.dttLowTideAreaOnshore, 'omitnan');
W16T6.dttOnshoreAreaFractionMean = mean(W16T6.dttHighTideAreaOnshore ./ W16T6.dttLowTideAreaOnshore, 'omitnan');

W2T0.dttOnshoreAreaFractionMean = 1;
W2T1.dttOnshoreAreaFractionMean = mean(W2T1.dttHighTideAreaOnshore ./ W2T1.dttLowTideAreaOnshore, 'omitnan');
W2T2.dttOnshoreAreaFractionMean = mean(W2T2.dttHighTideAreaOnshore ./ W2T2.dttLowTideAreaOnshore, 'omitnan');
W2T3.dttOnshoreAreaFractionMean = mean(W2T3.dttHighTideAreaOnshore ./ W2T3.dttLowTideAreaOnshore, 'omitnan');
W2T4.dttOnshoreAreaFractionMean = mean(W2T4.dttHighTideAreaOnshore ./ W2T4.dttLowTideAreaOnshore, 'omitnan');
W2T5.dttOnshoreAreaFractionMean = mean(W2T5.dttHighTideAreaOnshore ./ W2T5.dttLowTideAreaOnshore, 'omitnan');
W2T6.dttOnshoreAreaFractionMean = mean(W2T6.dttHighTideAreaOnshore ./ W2T6.dttLowTideAreaOnshore, 'omitnan');

dttOnshoreAreaFractionMeanMatrix = [W0T0.dttOnshoreAreaFractionMean W0T05.dttOnshoreAreaFractionMean W0T1.dttOnshoreAreaFractionMean W0T2.dttOnshoreAreaFractionMean W0T3.dttOnshoreAreaFractionMean W0T4.dttOnshoreAreaFractionMean W0T5.dttOnshoreAreaFractionMean W0T6.dttOnshoreAreaFractionMean; ...
W04T0.dttOnshoreAreaFractionMean NaN W04T1.dttOnshoreAreaFractionMean W04T2.dttOnshoreAreaFractionMean W04T3.dttOnshoreAreaFractionMean W04T4.dttOnshoreAreaFractionMean W04T5.dttOnshoreAreaFractionMean W04T6.dttOnshoreAreaFractionMean; ...
W08T0.dttOnshoreAreaFractionMean NaN W08T1.dttOnshoreAreaFractionMean W08T2.dttOnshoreAreaFractionMean W08T3.dttOnshoreAreaFractionMean W08T4.dttOnshoreAreaFractionMean W08T5.dttOnshoreAreaFractionMean W08T6.dttOnshoreAreaFractionMean; ...
W12T0.dttOnshoreAreaFractionMean NaN W12T1.dttOnshoreAreaFractionMean W12T2.dttOnshoreAreaFractionMean W12T3.dttOnshoreAreaFractionMean W12T4.dttOnshoreAreaFractionMean W12T5.dttOnshoreAreaFractionMean W12T6.dttOnshoreAreaFractionMean; ...
W16T0.dttOnshoreAreaFractionMean NaN W16T1.dttOnshoreAreaFractionMean W16T2.dttOnshoreAreaFractionMean W16T3.dttOnshoreAreaFractionMean W16T4.dttOnshoreAreaFractionMean W16T5.dttOnshoreAreaFractionMean W16T6.dttOnshoreAreaFractionMean; ...
W2T0.dttOnshoreAreaFractionMean NaN W2T1.dttOnshoreAreaFractionMean W2T2.dttOnshoreAreaFractionMean W2T3.dttOnshoreAreaFractionMean W2T4.dttOnshoreAreaFractionMean W2T5.dttOnshoreAreaFractionMean W2T6.dttOnshoreAreaFractionMean];

%% PLOTS PREAMBLE
dttColorMap1 = cmocean('thermal');
dttColorMap2 = cmocean('solar');
dttColorMap3 = flipud(cmocean('amp'));
dttColorMap4 = flipud(cmocean('dense'));
dttColorMap5 = flipud(cmocean('deep'));
dttColorMap6 = flipud(cmocean('algae'));

%% test plots
% figure(64500)
% clf reset
% plot([0 0.5 1 2 3 4 5 6], test0)
% hold on
% plot([0 1 2 4 6], test04)
% plot([0 1 2 4 6], test08)
% plot([0 1 2 4 6], test12)
% plot([0 1 2 4 6], test16)
% plot([0 1 2 4 6], test2)
% legend

close all

figure(64501)
plot(W08T0.dttChi)
hold on
plot(W08T1.dttChi)
plot(W08T2.dttChi)
plot(W08T3.dttChi)
plot(W08T4.dttChi)
plot(W08T5.dttChi)
plot(W08T6.dttChi)
legend

figure(645015)
plot(W08T0.dttChiInner)
hold on
plot(W08T1.dttChiInner)
plot(W08T2.dttChiInner)
plot(W08T3.dttChiInner)
plot(W08T4.dttChiInner)
plot(W08T5.dttChiInner)
plot(W08T6.dttChiInner)

figure(645017)
plot(W08T0.dttChannelActiveSkeletonNodesCount +W08T0.dttChannelActiveEulerNumber -1)
hold on
plot(W08T1.dttChannelActiveSkeletonNodesCount(2:end-1) +W08T1.dttChannelActiveEulerNumber(2:end-1) -1)
plot(W08T2.dttChannelActiveSkeletonNodesCount(2:end-1) +W08T2.dttChannelActiveEulerNumber(2:end-1) -1)
plot(W08T3.dttChannelActiveSkeletonNodesCount(2:end-1) +W08T3.dttChannelActiveEulerNumber(2:end-1) -1)
plot(W08T4.dttChannelActiveSkeletonNodesCount(2:end-1) +W08T4.dttChannelActiveEulerNumber(2:end-1) -1)
plot(W08T5.dttChannelActiveSkeletonNodesCount(2:end-1) +W08T5.dttChannelActiveEulerNumber(2:end-1) -1)
plot(W08T6.dttChannelActiveSkeletonNodesCount(2:end-1) +W08T6.dttChannelActiveEulerNumber(2:end-1) -1)

figure(64502)
plot(W08T0.dttChannelMobility)
hold on
plot(W08T1.dttChannelMobility)
plot(W08T2.dttChannelMobility)
plot(W08T3.dttChannelMobility)
plot(W08T4.dttChannelMobility)
plot(W08T5.dttChannelMobility)
plot(W08T6.dttChannelMobility)

figure(64503)
plot(W08T0.zCentroid)
hold on
plot(W08T1.zCentroid)
plot(W08T2.zCentroid)
plot(W08T3.zCentroid)
plot(W08T4.zCentroid)
plot(W08T5.zCentroid)
plot(W08T6.zCentroid)

figure(64504)
plot(W08T0.xSigma)
hold on
plot(W08T1.xSigma)
plot(W08T2.xSigma)
plot(W08T3.xSigma)
plot(W08T4.xSigma)
plot(W08T5.xSigma)
plot(W08T6.xSigma)

%W08

%% PLOTS - BUBBLE PLOTS
allBubblePlot = figure(64605);
allBubblePlot.Position = [0 0 960 1080];
clf reset
allBubbleTiles = tiledlayout(3,1);
allBubbleTiles.Padding = 'compact';
allBubbleTiles.TileSpacing = 'compact';

nexttile
% bubChi_T0 = bubblechart([0 0 0 0 0 0], [0:0.4:2.0], dttChiMeanMatrixFull(1:6), dttChiStdMatrixFull(1:6));
% hold on
% bubChi_T05 = bubblechart(0.5, 0, dttChiMeanMatrixFull(7), dttChiStdMatrixFull(7));
% bubChi_T1 = bubblechart([1 1 1 1 1 1], [0:0.4:2.0], dttChiMeanMatrixFull(13:18), dttChiStdMatrixFull(13:18));
% bubChi_T2 = bubblechart([2 2 2 2 2 2], [0:0.4:2.0], dttChiMeanMatrixFull(19:24), dttChiStdMatrixFull(19:24));
% bubChi_T3 = bubblechart(3, 0, dttChiMeanMatrixFull(25), dttChiStdMatrixFull(25));
% bubChi_T4 = bubblechart([4 4 4 4 4 4], [0:0.4:2.0], dttChiMeanMatrixFull(31:36), dttChiStdMatrixFull(31:36));
% bubChi_T5 = bubblechart(5, 0, dttChiMeanMatrixFull(37), dttChiStdMatrixFull(37));
% bubChi_T6 = bubblechart([6 6 6 6 6 6], [0:0.4:2.0], dttChiMeanMatrixFull(43:48), dttChiStdMatrixFull(43:48));
bubChi_T0 = bubblechart([0 0 0 0 0 0], [0:0.4:2.0], dttChiMeanMatrixFull(1:6), 'b');
hold on
bubChi_T05 = bubblechart(0.5, 0, dttChiMeanMatrixFull(7), 'b');
bubChi_T1 = bubblechart([1 1 1 1 1 1], [0:0.4:2.0], dttChiMeanMatrixFull(13:18), 'b');
bubChi_T2 = bubblechart([2 2 2 2 2 2], [0:0.4:2.0], dttChiMeanMatrixFull(19:24), 'b');
bubChi_T3 = bubblechart(3, 0, dttChiMeanMatrixFull(25), 'b');
bubChi_T4 = bubblechart([4 4 4 4 4 4], [0:0.4:2.0], dttChiMeanMatrixFull(31:36), 'b');
bubChi_T5 = bubblechart(5, 0, dttChiMeanMatrixFull(37), 'b');
bubChi_T6 = bubblechart([6 6 6 6 6 6], [0:0.4:2.0], dttChiMeanMatrixFull(43:48), 'b');
bubChiInner_T0 = bubblechart([0 0 0 0 0 0], [0:0.4:2.0], dttChiInnerMeanMatrixFull(1:6), 'MarkerFaceAlpha', 0, 'MarkerEdgeAlpha', 1.0, 'MarkerEdgeColor', 'k');
bubChiInner_T05 = bubblechart(0.5, 0, dttChiInnerMeanMatrixFull(7), 'MarkerFaceAlpha', 0, 'MarkerEdgeAlpha', 1.0, 'MarkerEdgeColor', 'k');
bubChiInner_T1 = bubblechart([1 1 1 1 1 1], [0:0.4:2.0], dttChiInnerMeanMatrixFull(13:18), 'MarkerFaceAlpha', 0, 'MarkerEdgeAlpha', 1.0, 'MarkerEdgeColor', 'k');
bubChiInner_T2 = bubblechart([2 2 2 2 2 2], [0:0.4:2.0], dttChiInnerMeanMatrixFull(19:24), 'MarkerFaceAlpha', 0, 'MarkerEdgeAlpha', 1.0, 'MarkerEdgeColor', 'k');
bubChiInner_T3 = bubblechart(3, 0, dttChiInnerMeanMatrixFull(25), 'MarkerFaceAlpha', 0, 'MarkerEdgeAlpha', 1.0, 'MarkerEdgeColor', 'k');
bubChiInner_T4 = bubblechart([4 4 4 4 4 4], [0:0.4:2.0], dttChiInnerMeanMatrixFull(31:36), 'MarkerFaceAlpha', 0, 'MarkerEdgeAlpha', 1.0, 'MarkerEdgeColor', 'k');
bubChiInner_T5 = bubblechart(5, 0, dttChiInnerMeanMatrixFull(37), 'MarkerFaceAlpha', 0, 'MarkerEdgeAlpha', 1.0, 'MarkerEdgeColor', 'k');
bubChiInner_T6 = bubblechart([6 6 6 6 6 6], [0:0.4:2.0], dttChiInnerMeanMatrixFull(43:48), 'MarkerFaceAlpha', 0, 'MarkerEdgeAlpha', 1.0, 'MarkerEdgeColor', 'k');

% xline([1.5:1:5.5], 'k-')
% xticklabels(['0.0'; '0.4'; '0.8'; '1.2'; '1.6'; '2.0']);
xticks([0 0.5 1 2 3 4 5 6])
% xlabel('{\itH_t} [m]')
% xtickformat('%.1f')
xticklabels([]);
yticks([0:0.4:2])
% ylabel('{\itH_s} [m]')
ytickformat('%.1f')
grid on
bubblesize([5 35])
bubblelegend('\langle\chi\rangle', 'Location', 'northEastOutside')
% colormap(flipud(bone))
% cb1 = colorbar;
% cb1.Label.String = 'Standard deviation of \chi [-]';
% colormap(summer)
% caxis([0 max(dttChiInnerStdMatrixFull, [], 'all')])
text(-0.75, 2.1, 'a)', 'FontSize', 24);

nexttile
% bubSplit_T0 = bubblechart([0 0 0 0 0 0], [0:0.4:2.0], dttChannelActiveSplitsMeanMatrixFull(1:6), dttChannelActiveSplitsStdMatrixFull(1:6));
% hold on
% bubSplit_T05 = bubblechart(0.5, 0, dttChannelActiveSplitsMeanMatrixFull(7), dttChannelActiveSplitsStdMatrixFull(7));
% bubSplit_T1 = bubblechart([1 1 1 1 1 1], [0:0.4:2.0], dttChannelActiveSplitsMeanMatrixFull(13:18), dttChannelActiveSplitsStdMatrixFull(13:18));
% bubSplit_T2 = bubblechart([2 2 2 2 2 2], [0:0.4:2.0], dttChannelActiveSplitsMeanMatrixFull(19:24), dttChannelActiveSplitsStdMatrixFull(19:24));
% bubSplit_T3 = bubblechart(3, 0, dttChannelActiveSplitsMeanMatrixFull(25), dttChannelActiveSplitsStdMatrixFull(25));
% bubSplit_T4 = bubblechart([4 4 4 4 4 4], [0:0.4:2.0], dttChannelActiveSplitsMeanMatrixFull(31:36), dttChannelActiveSplitsStdMatrixFull(31:36));
% bubSplit_T5 = bubblechart(5, 0, dttChannelActiveSplitsMeanMatrixFull(37), dttChannelActiveSplitsStdMatrixFull(37));
% bubSplit_T6 = bubblechart([6 6 6 6 6 6], [0:0.4:2.0], dttChannelActiveSplitsMeanMatrixFull(43:48), dttChannelActiveSplitsStdMatrixFull(43:48));
bubSplit_T0 = bubblechart([0 0 0 0 0 0], [0:0.4:2.0], dttChannelActiveSplitsMeanMatrixFull(1:6), 'b');
hold on
bubSplit_T05 = bubblechart(0.5, 0, dttChannelActiveSplitsMeanMatrixFull(7), 'b');
bubSplit_T1 = bubblechart([1 1 1 1 1 1], [0:0.4:2.0], dttChannelActiveSplitsMeanMatrixFull(13:18), 'b');
bubSplit_T2 = bubblechart([2 2 2 2 2 2], [0:0.4:2.0], dttChannelActiveSplitsMeanMatrixFull(19:24), 'b');
bubSplit_T3 = bubblechart(3, 0, dttChannelActiveSplitsMeanMatrixFull(25), 'b');
bubSplit_T4 = bubblechart([4 4 4 4 4 4], [0:0.4:2.0], dttChannelActiveSplitsMeanMatrixFull(31:36), 'b');
bubSplit_T5 = bubblechart(5, 0, dttChannelActiveSplitsMeanMatrixFull(37), 'b');
bubSplit_T6 = bubblechart([6 6 6 6 6 6], [0:0.4:2.0], dttChannelActiveSplitsMeanMatrixFull(43:48), 'b');
% xline([1.5:1:5.5], 'k-')
% xticklabels(['0.0'; '0.4'; '0.8'; '1.2'; '1.6'; '2.0']);
xticks([0 0.5 1 2 3 4 5 6])
% xlabel('{\itH_t} [m]')
% xtickformat('%.1f')
xticklabels([]);
yticks([0:0.4:2])
ylabel('{\itH_s} [m]')
ytickformat('%.1f')
grid on
bubblesize([5 35])
bubblelegend([{'Temporal mean number'; 'of channel splits'}], 'Location', 'northEastOutside')
% colormap(flipud(bone))
% cb2 = colorbar;
% cb2.Label.String = 'Standard deviation of channel splits [-]';
% caxis([0 max(dttChannelActiveSplitsStdMatrixFull, [], 'all')])
text(-0.75, 2.1, 'b)', 'FontSize', 24);

nexttile
% bubMobility_T0 = bubblechart([0 0 0 0 0 0], [0:0.4:2.0], dttChannelMobilityMeanMatrixFull(1:6), dttChannelMobilityStdMatrixFull(1:6));
% hold on
% bubMobility_T05 = bubblechart(0.5, 0, dttChannelMobilityMeanMatrixFull(7), dttChannelMobilityStdMatrixFull(7));
% bubMobility_T1 = bubblechart([1 1 1 1 1 1], [0:0.4:2.0], dttChannelMobilityMeanMatrixFull(13:18), dttChannelMobilityStdMatrixFull(13:18));
% bubMobility_T2 = bubblechart([2 2 2 2 2 2], [0:0.4:2.0], dttChannelMobilityMeanMatrixFull(19:24), dttChannelMobilityStdMatrixFull(19:24));
% bubMobility_T3 = bubblechart(3, 0, dttChannelMobilityMeanMatrixFull(25), dttChannelMobilityStdMatrixFull(25));
% bubMobility_T4 = bubblechart([4 4 4 4 4 4], [0:0.4:2.0], dttChannelMobilityMeanMatrixFull(31:36), dttChannelMobilityStdMatrixFull(31:36));
% bubMobility_T5 = bubblechart(5, 0, dttChannelMobilityMeanMatrixFull(37), dttChannelMobilityStdMatrixFull(37));
% bubMobility_T6 = bubblechart([6 6 6 6 6 6], [0:0.4:2.0], dttChannelMobilityMeanMatrixFull(43:48), dttChannelMobilityStdMatrixFull(43:48));
bubMobility_T0 = bubblechart([0 0 0 0 0 0], [0:0.4:2.0], dttChannelMobilityMeanMatrixFull(1:6), 'b');
hold on
bubMobility_T05 = bubblechart(0.5, 0, dttChannelMobilityMeanMatrixFull(7), 'b');
bubMobility_T1 = bubblechart([1 1 1 1 1 1], [0:0.4:2.0], dttChannelMobilityMeanMatrixFull(13:18), 'b');
bubMobility_T2 = bubblechart([2 2 2 2 2 2], [0:0.4:2.0], dttChannelMobilityMeanMatrixFull(19:24), 'b');
bubMobility_T3 = bubblechart(3, 0, dttChannelMobilityMeanMatrixFull(25), 'b');
bubMobility_T4 = bubblechart([4 4 4 4 4 4], [0:0.4:2.0], dttChannelMobilityMeanMatrixFull(31:36), 'b');
bubMobility_T5 = bubblechart(5, 0, dttChannelMobilityMeanMatrixFull(37), 'b');
bubMobility_T6 = bubblechart([6 6 6 6 6 6], [0:0.4:2.0], dttChannelMobilityMeanMatrixFull(43:48), 'b');
% xline([1.5:1:5.5], 'k-')
% xticklabels(['0.0'; '0.4'; '0.8'; '1.2'; '1.6'; '2.0']);
xticks([0 0.5 1 2 3 4 5 6])
xlabel('{\itH_t} [m]')
xtickformat('%.1f')
yticks([0:0.4:2])
% ylabel('{\itH_s} [m]')
ytickformat('%.1f')
grid on
bubblesize([5 35])
bubblelegend([{'Temporal mean'; 'of channel mobility'}], 'Location', 'northEastOutside')
% colormap(flipud(bone))
% cb3 = colorbar;
% cb3.Label.String = 'Standard deviation of channel mobility [-]';
% cb3.Ticks = [0:0.01:max(dttChannelMobilityStdMatrixFull, [], 'all')];
% caxis([0 max(dttChannelMobilityStdMatrixFull, [], 'all')])
text(-0.75, 2.1, 'c)', 'FontSize', 24);

% allSpreadingPlot = figure(64607);
% allSpreadingPlot.Position = [0 0 960 920];
% clf reset
% allSpreadingTiles = tiledlayout(2,1);
% allSpreadingTiles.Padding = 'compact';
% allSpreadingTiles.TileSpacing = 'compact';
% 
% nexttile
% % spreadXY_T0 = bubblechart([0 0 0 0 0 0 0.5 0.5 0.5 0.5 0.5 0.5 1 1 1 1 1 1 2 2 2 2 2 2 3 3 3 3 3 3 4 4 4 4 4 4 5 5 5 5 5 5 6 6 6 6 6 6], [0:0.4:2.0 0:0.4:2.0 0:0.4:2.0 0:0.4:2.0 0:0.4:2.0 0:0.4:2.0 0:0.4:2.0 0:0.4:2.0], reshape(dttXSigmasFull/1000, 1, []) + reshape(dttYSigmasFull/1000, 1, []));
% spreadXY_T0 = bubblechart([0 0 0 0 0 0 0.5 0.5 0.5 0.5 0.5 0.5 1 1 1 1 1 1 2 2 2 2 2 2 3 3 3 3 3 3 4 4 4 4 4 4 5 5 5 5 5 5 6 6 6 6 6 6], [0:0.4:2.0 0:0.4:2.0 0:0.4:2.0 0:0.4:2.0 0:0.4:2.0 0:0.4:2.0 0:0.4:2.0 0:0.4:2.0], reshape(dttXSigmasFull/1000, 1, []));
% xticks([0 0.5 1 2 3 4 5 6])
% % xlabel('{\itH_t} [m]')
% xtickformat('%.1f')
% xticklabels([]);
% yticks([0:0.4:2])
% ylabel('{\itH_s} [m]')
% ytickformat('%.1f')
% grid on
% text(-0.85, 2.1, 'a)', 'FontSize', 24);

%% PLOTS - HEAT MAPS
% x = [0 0.5 1 2 3 4 5 6];
x = 0:6;
y = 0:0.4:2;

allHeatmapPlot = figure(64700);
% allHeatmapPlot.Position = [0 0 1080 540]; % 4 plots
allHeatmapPlot.Position = [100 100 1080 810]; % 6 plots
% allHeatmapPlot.Position = [0 0 1080 1080]; % 8 plots
clf reset
allHeatmapTiles = tiledlayout(3,2);
allHeatmapTiles.Padding = 'compact';
allHeatmapTiles.TileSpacing = 'tight';
% xlabel(allHeatmapTiles, '{\itH_t} [m]', 'FontSize', 16)
% ylabel(allHeatmapTiles, '{\itH_s} [m]', 'FontSize', 16)

nexttile
heatmapChi = heatmap(x, y, dttChiMeanMatrixFull(:,[1 3:end]),'colorMap',dttColorMap1);
heatmapChi.CellLabelFormat = '%.2f';
caxis([0 max(dttChiMeanMatrixFull(:,[1 3:end]), [], 'all')])
% title('a)')
annotation('textarrow',[0.05,0.05],[0.95,0.95],'string','a)', ...
      'fontSize',14,'HeadStyle','none','LineStyle','none','HorizontalAlignment', ...
      'center');
annotation('textarrow',[0.5,0.5],[5/6,5/6],'string','\langle{\it\chi}\rangle [-]', ...
      'fontSize',10,'HeadStyle','none','LineStyle','none','HorizontalAlignment', ...
      'center','TextRotation',90);
ylabel('{\itH_s} [m]')%, 'FontSize', 12)

nexttile
heatmapChiInner = heatmap(x, y, dttChiInnerMeanMatrixFull(:,[1 3:end]),'colorMap',dttColorMap2);
% heatmapChiInner = heatmap(x, y, dttChiInnerMeanMatrixFull(:,[1 3:end])./dttChiMeanMatrixFull(:,[1 3:end]),'colorMap',dttColorMap2);
heatmapChiInner.CellLabelFormat = '%.2f';
% caxis([0 max(dttChiMeanMatrixFull, [], 'all')])
caxis([0 max(dttChiInnerMeanMatrixFull(:,[1 3:end]), [], 'all')])
% title('b)')
annotation('textarrow',[0.52,0.52],[0.95,0.95],'string','b)', ...
      'fontSize',14,'HeadStyle','none','LineStyle','none','HorizontalAlignment', ...
      'center');
annotation('textarrow',[0.997,0.997],[5/6,5/6],'string','\langle{\it\chi_{inner}}\rangle [-]', ...
      'fontSize',10,'HeadStyle','none','LineStyle','none','HorizontalAlignment', ...
      'center','TextRotation',90);

nexttile
heatmapChannelActiveSplits = heatmap(x, y, dttChannelActiveSplitsMeanMatrixFull(:,[1 3:end]),'colorMap',dttColorMap3);
heatmapChannelActiveSplits.CellLabelFormat = '%.1f';
heatmapChannelActiveSplits.MissingDataLabel = 'n/a';
heatmapChannelActiveSplits.MissingDataColor = [0.8 0.8 0.8];
caxis([0 max(dttChannelActiveSplitsMeanMatrixFull(:,[1 3:end]), [], 'all')])
% title('c)')
annotation('textarrow',[0.05,0.05],[0.64,0.64],'string','c)', ...
      'fontSize',14,'HeadStyle','none','LineStyle','none','HorizontalAlignment', ...
      'center');
annotation('textarrow',[0.51,0.51],[3/6,3/6],'string','\langle{\itc_{split}}\rangle [-]', ...
      'fontSize',10,'HeadStyle','none','LineStyle','none','HorizontalAlignment', ...
      'center','TextRotation',90);
ylabel('{\itH_s} [m]')%, 'FontSize', 12)

nexttile
heatmapChannelMobility = heatmap(x, y, dttChannelMobilityMeanMatrixFull(:,[1 3:end]),'colorMap',dttColorMap4);
heatmapChannelMobility.CellLabelFormat = '%.3f';
heatmapChannelMobility.MissingDataLabel = 'n/a';
heatmapChannelMobility.MissingDataColor = [0.8 0.8 0.8];
caxis([0 max(dttChannelMobilityMeanMatrixFull(:,[1 3:end]), [], 'all')])
% title('d)')
annotation('textarrow',[0.52,0.52],[0.64,0.64],'string','d)', ...
      'fontSize',14,'HeadStyle','none','LineStyle','none','HorizontalAlignment', ...
      'center');
annotation('textarrow',[0.997,0.997],[3/6,3/6],'string','\langle{\itc_{mob}}\rangle [-]', ...
      'fontSize',10,'HeadStyle','none','LineStyle','none','HorizontalAlignment', ...
      'center','TextRotation',90);

% nexttile
% heatmapOnshoreArea = heatmap(x, y, dttOnshoreAreaFractionMeanMatrix);
% heatmapOnshoreArea.CellLabelFormat = '%.2f';
% caxis([0 max(dttOnshoreAreaFractionMeanMatrix, [], 'all')])
% title('\langleA_{upper} / A\rangle [-]')
 
nexttile
heatmapZCentroids = heatmap(x, y, -dttZCentroidsFull(:,[1 3:end]),'colorMap',dttColorMap5);
heatmapZCentroids.CellLabelFormat = '%.2f';
caxis([min(-dttZCentroidsFull, [], 'all') 0])
% title('e)')
annotation('textarrow',[0.05,0.05],[0.33,0.33],'string','e)', ...
      'fontSize',14,'HeadStyle','none','LineStyle','none','HorizontalAlignment', ...
      'center');
ylabel('{\itH_s} [m]')%, 'FontSize', 12)
xlabel('{\itH_t} [m]')%, 'FontSize', 12)
annotation('textarrow',[0.58,0.58],[0.2,0.2],'string','{\itz}-centroid elevation ({\itt} \approx 36 yr) [m]', ...
      'fontSize',10,'HeadStyle','none','LineStyle','none','HorizontalAlignment', ...
      'center','TextRotation',90);

% nexttile
% heatmapZSigmas = heatmap(x, y, dttZSigmasFull);
% heatmapZSigmas.CellLabelFormat = '%.2f';
% % caxis([0 max(dttZSigmasFull, [], 'all')])
% title('f) \sigma_z ({\itt} = 36 yr) [m]')

nexttile
heatmapXSigmas = heatmap(x, y, dttXSigmasFull(:,[1 3:end])/1000,'colorMap',dttColorMap6);
heatmapXSigmas.CellLabelFormat = '%.2f';
caxis([0 max(dttXSigmasFull/1000, [], 'all')])
% title('f)')
annotation('textarrow',[0.52,0.52],[0.33,0.33],'string','f)', ...
      'fontSize',14,'HeadStyle','none','LineStyle','none','HorizontalAlignment', ...
      'center');
xlabel('{\itH_t} [m]')%, 'FontSize', 12)
annotation('textarrow',[1.0,1.0],[0.2,0.2],'string',{[''],[''],['{\it\sigma_x} ({\itt} \approx 36 yr) [km]']}, ...
      'fontSize',10,'HeadStyle','none','LineStyle','none','HorizontalAlignment', ...
      'center','TextRotation',90);

% nexttile
% heatmapYSigmas = heatmap(x, y, dttYSigmasFull/1000);
% heatmapYSigmas.CellLabelFormat = '%.2f';
% caxis([0 max(dttYSigmasFull/1000, [], 'all')])
% title('\sigma_y (t = 36 yr) [km]')

%% PLOTS - BAR CHARTS
chiMeanFullPlot = figure(64615);
chiMeanFullPlot.Position = [100 100 920 480];
clf reset
% surf([0 1 2 4 6], [0.0 0.4 0.8 1.2 1.6 2.0], dttChiMeanMatrix)
bChi = bar(dttChiMeanMatrixFull);
bChi(8).FaceColor = 'flat';
bChi(8).CData = [0.1 0.9 0.5];
hold on
bar(dttChiInnerMeanMatrixFull, 'lineStyle', ':', 'faceColor', 'white', 'faceAlpha', 0.5)
xline([1.5:1:5.5], 'k-')
set(gca, 'YGrid', 'on', 'XGrid', 'off')
xticklabels(['0.0'; '0.4'; '0.8'; '1.2'; '1.6'; '2.0']);
xlabel('{\itH_s} [m]')
% xticks([0 1 2 4 6])
ylabel('\langle{\it\chi}\rangle [-]')
% yticks([0:0.4:2])
legend('{\itH_t} = 0.0 m', '{\itH_t} = 0.5 m', '{\itH_t} = 1.0 m', '{\itH_t} = 2.0 m', '{\itH_t} = 3.0 m', '{\itH_t} = 4.0 m', '{\itH_t} = 5.0 m', '{\itH_t} = 6.0 m', 'Location', 'northWest')

channelActiveSplitsMeanFullPlot = figure(64622);
channelActiveSplitsMeanFullPlot.Position = [100 100 920 480];
clf reset
% surf([0 1 2 4 6], [0.0 0.4 0.8 1.2 1.6 2.0], dttChannelActiveSplitsMeanMatrix)
bSplit = bar(dttChannelActiveSplitsMeanMatrixFull);
bSplit(8).FaceColor = 'flat';
bSplit(8).CData = [0.1 0.9 0.5];
hold on
xline([1.5:1:5.5], 'k-')
set(gca, 'YGrid', 'on', 'XGrid', 'off')
xticklabels(['0.0'; '0.4'; '0.8'; '1.2'; '1.6'; '2.0']);
xlabel('{\itH_s} [m]')
% yticks([0:0.4:2])
ylabel('\langleChannel splits\rangle [-]')
% xticks([0 1 2 4 6])
legend('{\itH_t} = 0.0 m', '{\itH_t} = 0.5 m', '{\itH_t} = 1.0 m', '{\itH_t} = 2.0 m', '{\itH_t} = 3.0 m', '{\itH_t} = 4.0 m', '{\itH_t} = 5.0 m', '{\itH_t} = 6.0 m', 'Location', 'northEast')

channelMobilityMeanFullPlot = figure(64627);
channelMobilityMeanFullPlot.Position = [100 100 920 480];
clf reset
% surf([0 1 2 4 6], [0.0 0.4 0.8 1.2 1.6 2.0], dttChannelMobilityMeanMatrix)
bMob = bar(dttChannelMobilityMeanMatrixFull);
bMob(8).FaceColor = 'flat';
bMob(8).CData = [0.1 0.9 0.5];
hold on
xline([1.5:1:5.5], 'k-')
set(gca, 'YGrid', 'on', 'XGrid', 'off')
xticklabels(['0.0'; '0.4'; '0.8'; '1.2'; '1.6'; '2.0']);
xlabel('{\itH_s} [m]')
% yticks([0:0.4:2])
ylabel('\langleChannel mobility\rangle [-]')
% xticks([0 1 2 4 6])
legend('{\itH_t} = 0.0 m', '{\itH_t} = 0.5 m', '{\itH_t} = 1.0 m', '{\itH_t} = 2.0 m', '{\itH_t} = 3.0 m', '{\itH_t} = 4.0 m', '{\itH_t} = 5.0 m', '{\itH_t} = 6.0 m', 'Location', 'northEast')

%% PLOTS - CENTROID PLOTS
% xCentroidsFullPlot = figure(64635);
% xCentroidsFullPlot.Position = [100 100 920 720];
% clf reset
% % surf([0 1 2 4 6], [0.0 0.4 0.8 1.2 1.6 2.0], dttChannelActiveSplitsMeanMatrix)
% errorbar([-0.42:1:4.58], dttXCentroidsFull(1:6)/1000, dttXSigmasFull(1:6)/1000, 'o', 'lineWidth', 1.5)
% hold on
% errorbar(-0.3, dttXCentroidsFull(7)/1000, dttXSigmasFull(7)/1000, 'o', 'lineWidth', 1.5)
% errorbar([-0.18:1:4.82], dttXCentroidsFull(13:18)/1000, dttXSigmasFull(13:18)/1000, 'o', 'lineWidth', 1.5)
% errorbar([-0.06:1:4.94], dttXCentroidsFull(19:24)/1000, dttXSigmasFull(19:24)/1000, 'o', 'lineWidth', 1.5)
% errorbar(0.06, dttXCentroidsFull(25)/1000, dttXSigmasFull(25)/1000, 'o', 'lineWidth', 1.5)
% errorbar([0.18:1:5.18], dttXCentroidsFull(31:36)/1000, dttXSigmasFull(31:36)/1000, 'o', 'lineWidth', 1.5)
% errorbar(0.3, dttXCentroidsFull(37)/1000, dttXSigmasFull(37)/1000, 'o', 'lineWidth', 1.5)
% errorbar([0.42:1:5.42], dttXCentroidsFull(43:48)/1000, dttXSigmasFull(43:48)/1000, 'o', 'lineWidth', 1.5, 'color', [0.1 0.9 0.5])
% xline([0.5:1:5.5], 'k-')
% yline(9.875, 'k:')
% set(gca, 'YGrid', 'on', 'XGrid', 'off')
% xticks([0 1 2 3 4 5])
% xticklabels(['0.0'; '0.4'; '0.8'; '1.2'; '1.6'; '2.0']);
% xlabel('{\itH_s} [m]')
% xlim([-0.5 5.5])
% ylabel('{\itx} [km]')
% ylim([5 14.75])
% view([90 -90])
% legend('{\itH_t} = 0.0 m', '{\itH_t} = 0.5 m', '{\itH_t} = 1.0 m', '{\itH_t} = 2.0 m', '{\itH_t} = 3.0 m', '{\itH_t} = 4.0 m', '{\itH_t} = 5.0 m', '{\itH_t} = 6.0 m', 'Location', 'southWest', 'numColumns', 1)

% yCentroidsFullPlot = figure(64645);
% yCentroidsFullPlot.Position = [100 100 920 480];
% clf reset
% % surf([0 1 2 4 6], [0.0 0.4 0.8 1.2 1.6 2.0], dttChannelActiveSplitsMeanMatrix)
% errorbar([-0.42:1:4.58], dttYCentroidsFull(1:6)/1000, dttYSigmasFull(1:6)/1000, 'o', 'lineWidth', 1.5)
% hold on
% errorbar(-0.3, dttYCentroidsFull(7)/1000, dttYSigmasFull(7)/1000, 'o', 'lineWidth', 1.5)
% errorbar([-0.18:1:4.82], dttYCentroidsFull(13:18)/1000, dttYSigmasFull(13:18)/1000, 'o', 'lineWidth', 1.5)
% errorbar([-0.06:1:4.94], dttYCentroidsFull(19:24)/1000, dttYSigmasFull(19:24)/1000, 'o', 'lineWidth', 1.5)
% errorbar(0.06, dttYCentroidsFull(25)/1000, dttYSigmasFull(25)/1000, 'o', 'lineWidth', 1.5)
% errorbar([0.18:1:5.18], dttYCentroidsFull(31:36)/1000, dttYSigmasFull(31:36)/1000, 'o', 'lineWidth', 1.5)
% errorbar(0.3, dttYCentroidsFull(37)/1000, dttYSigmasFull(37)/1000, 'o', 'lineWidth', 1.5)
% errorbar([0.42:1:5.42], dttYCentroidsFull(43:48)/1000, dttYSigmasFull(43:48)/1000, 'o', 'lineWidth', 1.5, 'color', [0.1 0.9 0.5])
% xline([0.5:1:5.5], 'k-')
% set(gca, 'YGrid', 'on', 'XGrid', 'off')
% xticks([0 1 2 3 4 5])
% xticklabels(['0.0'; '0.4'; '0.8'; '1.2'; '1.6'; '2.0']);
% xlabel('{\itH_s} [m]')
% xlim([-0.5 5.5])
% ylabel('{\ity} [km]')
% ylim([0 4.5])
% % view([90 -90])
% legend('{\itH_t} = 0.0 m', '{\itH_t} = 0.5 m', '{\itH_t} = 1.0 m', '{\itH_t} = 2.0 m', '{\itH_t} = 3.0 m', '{\itH_t} = 4.0 m', '{\itH_t} = 5.0 m', '{\itH_t} = 6.0 m', 'Location', 'northEast', 'numColumns', 4)

% zCentroidsFullPlot = figure(64655);
% zCentroidsFullPlot.Position = [100 100 920 480];
% clf reset
% % surf([0 1 2 4 6], [0.0 0.4 0.8 1.2 1.6 2.0], dttChannelActiveSplitsMeanMatrix)
% errorbar([-0.42:1:4.58], -dttZCentroidsFull(1:6), dttZSigmasFull(1:6), 'o', 'lineWidth', 1.5)
% hold on
% errorbar(-0.3, -dttZCentroidsFull(7), dttZSigmasFull(7), 'o', 'lineWidth', 1.5)
% errorbar([-0.18:1:4.82], -dttZCentroidsFull(13:18), dttZSigmasFull(13:18), 'o', 'lineWidth', 1.5)
% errorbar([-0.06:1:4.94], -dttZCentroidsFull(19:24), dttZSigmasFull(19:24), 'o', 'lineWidth', 1.5)
% errorbar(0.06, -dttZCentroidsFull(25), dttZSigmasFull(25), 'o', 'lineWidth', 1.5)
% errorbar([0.18:1:5.18], -dttZCentroidsFull(31:36), dttZSigmasFull(31:36), 'o', 'lineWidth', 1.5)
% errorbar(0.3, -dttZCentroidsFull(37), dttZSigmasFull(37), 'o', 'lineWidth', 1.5)
% errorbar([0.42:1:5.42], -dttZCentroidsFull(43:48), dttZSigmasFull(43:48), 'o', 'lineWidth', 1.5, 'color', [0.1 0.9 0.5])
% xline([0.5:1:5.5], 'k-')
% set(gca, 'YGrid', 'on', 'XGrid', 'off')
% xticks([0 1 2 3 4 5])
% xticklabels(['0.0'; '0.4'; '0.8'; '1.2'; '1.6'; '2.0']);
% xlabel('{\itH_s} [m]')
% xlim([-0.5 5.5])
% ylabel('{\itz} [m]')
% ylim([-8 0])
% % view([90 -90])
% legend('{\itH_t} = 0.0 m', '{\itH_t} = 0.5 m', '{\itH_t} = 1.0 m', '{\itH_t} = 2.0 m', '{\itH_t} = 3.0 m', '{\itH_t} = 4.0 m', '{\itH_t} = 5.0 m', '{\itH_t} = 6.0 m', 'Location', 'northEast', 'numColumns', 4)

%% EXPORT PLOTS
% exportgraphics(allBubblePlot, ['../MATLAB export/Final/meanMetrics/allBubblePlotNoStd_v2.png'], 'Resolution', 150);

% exportgraphics(allHeatmapPlot, ['../MATLAB export/Final/meanMetrics/allHeatmapPlot_v7.png'], 'Resolution', 150);

% exportgraphics(chiMeanFullPlot, ['../MATLAB export/Final/meanMetrics/dttChiMean_v2.png'], 'Resolution', 150);
% exportgraphics(channelActiveSplitsMeanFullPlot, ['../MATLAB export/Final/meanMetrics/dttChannelActiveSplitsMean_v2.png'], 'Resolution', 150);
% exportgraphics(channelMobilityMeanFullPlot, ['../MATLAB export/Final/meanMetrics/dttChannelMobilityMean_v2.png'], 'Resolution', 150);

% exportgraphics(xCentroidsFullPlot, ['../MATLAB export/Final/sedimentSpreading/xCentroidsAllSims_36yr.png'], 'Resolution', 150);
% exportgraphics(yCentroidsFullPlot, ['../MATLAB export/Final/sedimentSpreading/yCentroidsAllSims_36yr.png'], 'Resolution', 150);
% exportgraphics(zCentroidsFullPlot, ['../MATLAB export/Final/sedimentSpreading/zCentroidsAllSims_36yr.png'], 'Resolution', 150);