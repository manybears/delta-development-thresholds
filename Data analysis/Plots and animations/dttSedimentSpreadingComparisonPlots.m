% Date:     09/08/2023
% Author:   ERS

% This script plots standard deviation comparison plots from values
% determined using dttSedimentSpreading.

%% IMPORT AND ARRANGE DATA
% W0s
load('../MATLAB datastore/dttW0.0T0.0sedimentSpreading.mat');
W0T0.xCentroid = xCentroid;
W0T0.xFirstMoment = xFirstMoment;
W0T0.xSecondMoment = xSecondMoment;
W0T0.xSigma = xSigma;
W0T0.xVol = xVol;
W0T0.xMin = xMin;
W0T0.xMax = xMax;
W0T0.yCentroid = yCentroid;
W0T0.yFirstMoment = yFirstMoment;
W0T0.ySecondMoment = ySecondMoment;
W0T0.ySigma = ySigma;
W0T0.yVol = yVol;
W0T0.yMin = yMin;
W0T0.yMax = yMax;
W0T0.zCentroid = zCentroid;
W0T0.zFirstMoment = zFirstMoment;
W0T0.zSecondMoment = zSecondMoment;
W0T0.zSigma = zSigma;
W0T0.zVol = zVol;
W0T0.zMin = zMin;
W0T0.zMax = zMax;

load('../MATLAB datastore/dttW0.0T0.5sedimentSpreading.mat');
W0T05.xCentroid = xCentroid;
W0T05.xFirstMoment = xFirstMoment;
W0T05.xSecondMoment = xSecondMoment;
W0T05.xSigma = xSigma;
W0T05.xVol = xVol;
W0T05.xMin = xMin;
W0T05.xMax = xMax;
W0T05.yCentroid = yCentroid;
W0T05.yFirstMoment = yFirstMoment;
W0T05.ySecondMoment = ySecondMoment;
W0T05.ySigma = ySigma;
W0T05.yVol = yVol;
W0T05.yMin = yMin;
W0T05.yMax = yMax;
W0T05.zCentroid = zCentroid;
W0T05.zFirstMoment = zFirstMoment;
W0T05.zSecondMoment = zSecondMoment;
W0T05.zSigma = zSigma;
W0T05.zVol = zVol;
W0T05.zMin = zMin;
W0T05.zMax = zMax;

load('../MATLAB datastore/dttW0.0T1.0sedimentSpreading.mat');
W0T1.xCentroid = xCentroid;
W0T1.xFirstMoment = xFirstMoment;
W0T1.xSecondMoment = xSecondMoment;
W0T1.xSigma = xSigma;
W0T1.xVol = xVol;
W0T1.xMin = xMin;
W0T1.xMax = xMax;
W0T1.yCentroid = yCentroid;
W0T1.yFirstMoment = yFirstMoment;
W0T1.ySecondMoment = ySecondMoment;
W0T1.ySigma = ySigma;
W0T1.yVol = yVol;
W0T1.yMin = yMin;
W0T1.yMax = yMax;
W0T1.zCentroid = zCentroid;
W0T1.zFirstMoment = zFirstMoment;
W0T1.zSecondMoment = zSecondMoment;
W0T1.zSigma = zSigma;
W0T1.zVol = zVol;
W0T1.zMin = zMin;
W0T1.zMax = zMax;

load('../MATLAB datastore/dttW0.0T2.0sedimentSpreading.mat');
W0T2.xCentroid = xCentroid;
W0T2.xFirstMoment = xFirstMoment;
W0T2.xSecondMoment = xSecondMoment;
W0T2.xSigma = xSigma;
W0T2.xVol = xVol;
W0T2.xMin = xMin;
W0T2.xMax = xMax;
W0T2.yCentroid = yCentroid;
W0T2.yFirstMoment = yFirstMoment;
W0T2.ySecondMoment = ySecondMoment;
W0T2.ySigma = ySigma;
W0T2.yVol = yVol;
W0T2.yMin = yMin;
W0T2.yMax = yMax;
W0T2.zCentroid = zCentroid;
W0T2.zFirstMoment = zFirstMoment;
W0T2.zSecondMoment = zSecondMoment;
W0T2.zSigma = zSigma;
W0T2.zVol = zVol;
W0T2.zMin = zMin;
W0T2.zMax = zMax;

load('../MATLAB datastore/dttW0.0T3.0sedimentSpreading.mat');
W0T3.xCentroid = xCentroid;
W0T3.xFirstMoment = xFirstMoment;
W0T3.xSecondMoment = xSecondMoment;
W0T3.xSigma = xSigma;
W0T3.xVol = xVol;
W0T3.xMin = xMin;
W0T3.xMax = xMax;
W0T3.yCentroid = yCentroid;
W0T3.yFirstMoment = yFirstMoment;
W0T3.ySecondMoment = ySecondMoment;
W0T3.ySigma = ySigma;
W0T3.yVol = yVol;
W0T3.yMin = yMin;
W0T3.yMax = yMax;
W0T3.zCentroid = zCentroid;
W0T3.zFirstMoment = zFirstMoment;
W0T3.zSecondMoment = zSecondMoment;
W0T3.zSigma = zSigma;
W0T3.zVol = zVol;
W0T3.zMin = zMin;
W0T3.zMax = zMax;

load('../MATLAB datastore/dttW0.0T4.0sedimentSpreading.mat');
W0T4.xCentroid = xCentroid;
W0T4.xFirstMoment = xFirstMoment;
W0T4.xSecondMoment = xSecondMoment;
W0T4.xSigma = xSigma;
W0T4.xVol = xVol;
W0T4.xMin = xMin;
W0T4.xMax = xMax;
W0T4.yCentroid = yCentroid;
W0T4.yFirstMoment = yFirstMoment;
W0T4.ySecondMoment = ySecondMoment;
W0T4.ySigma = ySigma;
W0T4.yVol = yVol;
W0T4.yMin = yMin;
W0T4.yMax = yMax;
W0T4.zCentroid = zCentroid;
W0T4.zFirstMoment = zFirstMoment;
W0T4.zSecondMoment = zSecondMoment;
W0T4.zSigma = zSigma;
W0T4.zVol = zVol;
W0T4.zMin = zMin;
W0T4.zMax = zMax;

load('../MATLAB datastore/dttW0.0T5.0sedimentSpreading.mat');
W0T5.xCentroid = xCentroid;
W0T5.xFirstMoment = xFirstMoment;
W0T5.xSecondMoment = xSecondMoment;
W0T5.xSigma = xSigma;
W0T5.xVol = xVol;
W0T5.xMin = xMin;
W0T5.xMax = xMax;
W0T5.yCentroid = yCentroid;
W0T5.yFirstMoment = yFirstMoment;
W0T5.ySecondMoment = ySecondMoment;
W0T5.ySigma = ySigma;
W0T5.yVol = yVol;
W0T5.yMin = yMin;
W0T5.yMax = yMax;
W0T5.zCentroid = zCentroid;
W0T5.zFirstMoment = zFirstMoment;
W0T5.zSecondMoment = zSecondMoment;
W0T5.zSigma = zSigma;
W0T5.zVol = zVol;
W0T5.zMin = zMin;
W0T5.zMax = zMax;

load('../MATLAB datastore/dttW0.0T6.0sedimentSpreading.mat');
W0T6.xCentroid = xCentroid;
W0T6.xFirstMoment = xFirstMoment;
W0T6.xSecondMoment = xSecondMoment;
W0T6.xSigma = xSigma;
W0T6.xVol = xVol;
W0T6.xMin = xMin;
W0T6.xMax = xMax;
W0T6.yCentroid = yCentroid;
W0T6.yFirstMoment = yFirstMoment;
W0T6.ySecondMoment = ySecondMoment;
W0T6.ySigma = ySigma;
W0T6.yVol = yVol;
W0T6.yMin = yMin;
W0T6.yMax = yMax;
W0T6.zCentroid = zCentroid;
W0T6.zFirstMoment = zFirstMoment;
W0T6.zSecondMoment = zSecondMoment;
W0T6.zSigma = zSigma;
W0T6.zVol = zVol;
W0T6.zMin = zMin;
W0T6.zMax = zMax;

%W0.4s
load('../MATLAB datastore/dttW0.4T0.0sedimentSpreading.mat');
W04T0.xCentroid = xCentroid;
W04T0.xFirstMoment = xFirstMoment;
W04T0.xSecondMoment = xSecondMoment;
W04T0.xSigma = xSigma;
W04T0.xVol = xVol;
W04T0.xMin = xMin;
W04T0.xMax = xMax;
W04T0.yCentroid = yCentroid;
W04T0.yFirstMoment = yFirstMoment;
W04T0.ySecondMoment = ySecondMoment;
W04T0.ySigma = ySigma;
W04T0.yVol = yVol;
W04T0.yMin = yMin;
W04T0.yMax = yMax;
W04T0.zCentroid = zCentroid;
W04T0.zFirstMoment = zFirstMoment;
W04T0.zSecondMoment = zSecondMoment;
W04T0.zSigma = zSigma;
W04T0.zVol = zVol;
W04T0.zMin = zMin;
W04T0.zMax = zMax;

load('../MATLAB datastore/dttW0.4T1.0sedimentSpreading.mat');
W04T1.xCentroid = xCentroid;
W04T1.xFirstMoment = xFirstMoment;
W04T1.xSecondMoment = xSecondMoment;
W04T1.xSigma = xSigma;
W04T1.xVol = xVol;
W04T1.xMin = xMin;
W04T1.xMax = xMax;
W04T1.yCentroid = yCentroid;
W04T1.yFirstMoment = yFirstMoment;
W04T1.ySecondMoment = ySecondMoment;
W04T1.ySigma = ySigma;
W04T1.yVol = yVol;
W04T1.yMin = yMin;
W04T1.yMax = yMax;
W04T1.zCentroid = zCentroid;
W04T1.zFirstMoment = zFirstMoment;
W04T1.zSecondMoment = zSecondMoment;
W04T1.zSigma = zSigma;
W04T1.zVol = zVol;
W04T1.zMin = zMin;
W04T1.zMax = zMax;

load('../MATLAB datastore/dttW0.4T2.0sedimentSpreading.mat');
W04T2.xCentroid = xCentroid;
W04T2.xFirstMoment = xFirstMoment;
W04T2.xSecondMoment = xSecondMoment;
W04T2.xSigma = xSigma;
W04T2.xVol = xVol;
W04T2.xMin = xMin;
W04T2.xMax = xMax;
W04T2.yCentroid = yCentroid;
W04T2.yFirstMoment = yFirstMoment;
W04T2.ySecondMoment = ySecondMoment;
W04T2.ySigma = ySigma;
W04T2.yVol = yVol;
W04T2.yMin = yMin;
W04T2.yMax = yMax;
W04T2.zCentroid = zCentroid;
W04T2.zFirstMoment = zFirstMoment;
W04T2.zSecondMoment = zSecondMoment;
W04T2.zSigma = zSigma;
W04T2.zVol = zVol;
W04T2.zMin = zMin;
W04T2.zMax = zMax;

load('../MATLAB datastore/dttW0.4T4.0sedimentSpreading.mat');
W04T4.xCentroid = xCentroid;
W04T4.xFirstMoment = xFirstMoment;
W04T4.xSecondMoment = xSecondMoment;
W04T4.xSigma = xSigma;
W04T4.xVol = xVol;
W04T4.xMin = xMin;
W04T4.xMax = xMax;
W04T4.yCentroid = yCentroid;
W04T4.yFirstMoment = yFirstMoment;
W04T4.ySecondMoment = ySecondMoment;
W04T4.ySigma = ySigma;
W04T4.yVol = yVol;
W04T4.yMin = yMin;
W04T4.yMax = yMax;
W04T4.zCentroid = zCentroid;
W04T4.zFirstMoment = zFirstMoment;
W04T4.zSecondMoment = zSecondMoment;
W04T4.zSigma = zSigma;
W04T4.zVol = zVol;
W04T4.zMin = zMin;
W04T4.zMax = zMax;

load('../MATLAB datastore/dttW0.4T6.0sedimentSpreading.mat');
W04T6.xCentroid = xCentroid;
W04T6.xFirstMoment = xFirstMoment;
W04T6.xSecondMoment = xSecondMoment;
W04T6.xSigma = xSigma;
W04T6.xVol = xVol;
W04T6.xMin = xMin;
W04T6.xMax = xMax;
W04T6.yCentroid = yCentroid;
W04T6.yFirstMoment = yFirstMoment;
W04T6.ySecondMoment = ySecondMoment;
W04T6.ySigma = ySigma;
W04T6.yVol = yVol;
W04T6.yMin = yMin;
W04T6.yMax = yMax;
W04T6.zCentroid = zCentroid;
W04T6.zFirstMoment = zFirstMoment;
W04T6.zSecondMoment = zSecondMoment;
W04T6.zSigma = zSigma;
W04T6.zVol = zVol;
W04T6.zMin = zMin;
W04T6.zMax = zMax;

%W0.8s
load('../MATLAB datastore/dttW0.8T0.0sedimentSpreading.mat');
W08T0.xCentroid = xCentroid;
W08T0.xFirstMoment = xFirstMoment;
W08T0.xSecondMoment = xSecondMoment;
W08T0.xSigma = xSigma;
W08T0.xVol = xVol;
W08T0.xMin = xMin;
W08T0.xMax = xMax;
W08T0.yCentroid = yCentroid;
W08T0.yFirstMoment = yFirstMoment;
W08T0.ySecondMoment = ySecondMoment;
W08T0.ySigma = ySigma;
W08T0.yVol = yVol;
W08T0.yMin = yMin;
W08T0.yMax = yMax;
W08T0.zCentroid = zCentroid;
W08T0.zFirstMoment = zFirstMoment;
W08T0.zSecondMoment = zSecondMoment;
W08T0.zSigma = zSigma;
W08T0.zVol = zVol;
W08T0.zMin = zMin;
W08T0.zMax = zMax;

load('../MATLAB datastore/dttW0.8T1.0sedimentSpreading.mat');
W08T1.xCentroid = xCentroid;
W08T1.xFirstMoment = xFirstMoment;
W08T1.xSecondMoment = xSecondMoment;
W08T1.xSigma = xSigma;
W08T1.xVol = xVol;
W08T1.xMin = xMin;
W08T1.xMax = xMax;
W08T1.yCentroid = yCentroid;
W08T1.yFirstMoment = yFirstMoment;
W08T1.ySecondMoment = ySecondMoment;
W08T1.ySigma = ySigma;
W08T1.yVol = yVol;
W08T1.yMin = yMin;
W08T1.yMax = yMax;
W08T1.zCentroid = zCentroid;
W08T1.zFirstMoment = zFirstMoment;
W08T1.zSecondMoment = zSecondMoment;
W08T1.zSigma = zSigma;
W08T1.zVol = zVol;
W08T1.zMin = zMin;
W08T1.zMax = zMax;

load('../MATLAB datastore/dttW0.8T2.0sedimentSpreading.mat');
W08T2.xCentroid = xCentroid;
W08T2.xFirstMoment = xFirstMoment;
W08T2.xSecondMoment = xSecondMoment;
W08T2.xSigma = xSigma;
W08T2.xVol = xVol;
W08T2.xMin = xMin;
W08T2.xMax = xMax;
W08T2.yCentroid = yCentroid;
W08T2.yFirstMoment = yFirstMoment;
W08T2.ySecondMoment = ySecondMoment;
W08T2.ySigma = ySigma;
W08T2.yVol = yVol;
W08T2.yMin = yMin;
W08T2.yMax = yMax;
W08T2.zCentroid = zCentroid;
W08T2.zFirstMoment = zFirstMoment;
W08T2.zSecondMoment = zSecondMoment;
W08T2.zSigma = zSigma;
W08T2.zVol = zVol;
W08T2.zMin = zMin;
W08T2.zMax = zMax;

load('../MATLAB datastore/dttW0.8T4.0sedimentSpreading.mat');
W08T4.xCentroid = xCentroid;
W08T4.xFirstMoment = xFirstMoment;
W08T4.xSecondMoment = xSecondMoment;
W08T4.xSigma = xSigma;
W08T4.xVol = xVol;
W08T4.xMin = xMin;
W08T4.xMax = xMax;
W08T4.yCentroid = yCentroid;
W08T4.yFirstMoment = yFirstMoment;
W08T4.ySecondMoment = ySecondMoment;
W08T4.ySigma = ySigma;
W08T4.yVol = yVol;
W08T4.yMin = yMin;
W08T4.yMax = yMax;
W08T4.zCentroid = zCentroid;
W08T4.zFirstMoment = zFirstMoment;
W08T4.zSecondMoment = zSecondMoment;
W08T4.zSigma = zSigma;
W08T4.zVol = zVol;
W08T4.zMin = zMin;
W08T4.zMax = zMax;

load('../MATLAB datastore/dttW0.8T6.0sedimentSpreading.mat');
W08T6.xCentroid = xCentroid;
W08T6.xFirstMoment = xFirstMoment;
W08T6.xSecondMoment = xSecondMoment;
W08T6.xSigma = xSigma;
W08T6.xVol = xVol;
W08T6.xMin = xMin;
W08T6.xMax = xMax;
W08T6.yCentroid = yCentroid;
W08T6.yFirstMoment = yFirstMoment;
W08T6.ySecondMoment = ySecondMoment;
W08T6.ySigma = ySigma;
W08T6.yVol = yVol;
W08T6.yMin = yMin;
W08T6.yMax = yMax;
W08T6.zCentroid = zCentroid;
W08T6.zFirstMoment = zFirstMoment;
W08T6.zSecondMoment = zSecondMoment;
W08T6.zSigma = zSigma;
W08T6.zVol = zVol;
W08T6.zMin = zMin;
W08T6.zMax = zMax;

%W1.2s
load('../MATLAB datastore/dttW1.2T0.0sedimentSpreading.mat');
W12T0.xCentroid = xCentroid;
W12T0.xFirstMoment = xFirstMoment;
W12T0.xSecondMoment = xSecondMoment;
W12T0.xSigma = xSigma;
W12T0.xVol = xVol;
W12T0.xMin = xMin;
W12T0.xMax = xMax;
W12T0.yCentroid = yCentroid;
W12T0.yFirstMoment = yFirstMoment;
W12T0.ySecondMoment = ySecondMoment;
W12T0.ySigma = ySigma;
W12T0.yVol = yVol;
W12T0.yMin = yMin;
W12T0.yMax = yMax;
W12T0.zCentroid = zCentroid;
W12T0.zFirstMoment = zFirstMoment;
W12T0.zSecondMoment = zSecondMoment;
W12T0.zSigma = zSigma;
W12T0.zVol = zVol;
W12T0.zMin = zMin;
W12T0.zMax = zMax;

load('../MATLAB datastore/dttW1.2T1.0sedimentSpreading.mat');
W12T1.xCentroid = xCentroid;
W12T1.xFirstMoment = xFirstMoment;
W12T1.xSecondMoment = xSecondMoment;
W12T1.xSigma = xSigma;
W12T1.xVol = xVol;
W12T1.xMin = xMin;
W12T1.xMax = xMax;
W12T1.yCentroid = yCentroid;
W12T1.yFirstMoment = yFirstMoment;
W12T1.ySecondMoment = ySecondMoment;
W12T1.ySigma = ySigma;
W12T1.yVol = yVol;
W12T1.yMin = yMin;
W12T1.yMax = yMax;
W12T1.zCentroid = zCentroid;
W12T1.zFirstMoment = zFirstMoment;
W12T1.zSecondMoment = zSecondMoment;
W12T1.zSigma = zSigma;
W12T1.zVol = zVol;
W12T1.zMin = zMin;
W12T1.zMax = zMax;

load('../MATLAB datastore/dttW1.2T2.0sedimentSpreading.mat');
W12T2.xCentroid = xCentroid;
W12T2.xFirstMoment = xFirstMoment;
W12T2.xSecondMoment = xSecondMoment;
W12T2.xSigma = xSigma;
W12T2.xVol = xVol;
W12T2.xMin = xMin;
W12T2.xMax = xMax;
W12T2.yCentroid = yCentroid;
W12T2.yFirstMoment = yFirstMoment;
W12T2.ySecondMoment = ySecondMoment;
W12T2.ySigma = ySigma;
W12T2.yVol = yVol;
W12T2.yMin = yMin;
W12T2.yMax = yMax;
W12T2.zCentroid = zCentroid;
W12T2.zFirstMoment = zFirstMoment;
W12T2.zSecondMoment = zSecondMoment;
W12T2.zSigma = zSigma;
W12T2.zVol = zVol;
W12T2.zMin = zMin;
W12T2.zMax = zMax;

load('../MATLAB datastore/dttW1.2T4.0sedimentSpreading.mat');
W12T4.xCentroid = xCentroid;
W12T4.xFirstMoment = xFirstMoment;
W12T4.xSecondMoment = xSecondMoment;
W12T4.xSigma = xSigma;
W12T4.xVol = xVol;
W12T4.xMin = xMin;
W12T4.xMax = xMax;
W12T4.yCentroid = yCentroid;
W12T4.yFirstMoment = yFirstMoment;
W12T4.ySecondMoment = ySecondMoment;
W12T4.ySigma = ySigma;
W12T4.yVol = yVol;
W12T4.yMin = yMin;
W12T4.yMax = yMax;
W12T4.zCentroid = zCentroid;
W12T4.zFirstMoment = zFirstMoment;
W12T4.zSecondMoment = zSecondMoment;
W12T4.zSigma = zSigma;
W12T4.zVol = zVol;
W12T4.zMin = zMin;
W12T4.zMax = zMax;

load('../MATLAB datastore/dttW1.2T6.0sedimentSpreading.mat');
W12T6.xCentroid = xCentroid;
W12T6.xFirstMoment = xFirstMoment;
W12T6.xSecondMoment = xSecondMoment;
W12T6.xSigma = xSigma;
W12T6.xVol = xVol;
W12T6.xMin = xMin;
W12T6.xMax = xMax;
W12T6.yCentroid = yCentroid;
W12T6.yFirstMoment = yFirstMoment;
W12T6.ySecondMoment = ySecondMoment;
W12T6.ySigma = ySigma;
W12T6.yVol = yVol;
W12T6.yMin = yMin;
W12T6.yMax = yMax;
W12T6.zCentroid = zCentroid;
W12T6.zFirstMoment = zFirstMoment;
W12T6.zSecondMoment = zSecondMoment;
W12T6.zSigma = zSigma;
W12T6.zVol = zVol;
W12T6.zMin = zMin;
W12T6.zMax = zMax;

%W1.6s
load('../MATLAB datastore/dttW1.6T0.0sedimentSpreading.mat');
W16T0.xCentroid = xCentroid;
W16T0.xFirstMoment = xFirstMoment;
W16T0.xSecondMoment = xSecondMoment;
W16T0.xSigma = xSigma;
W16T0.xVol = xVol;
W16T0.xMin = xMin;
W16T0.xMax = xMax;
W16T0.yCentroid = yCentroid;
W16T0.yFirstMoment = yFirstMoment;
W16T0.ySecondMoment = ySecondMoment;
W16T0.ySigma = ySigma;
W16T0.yVol = yVol;
W16T0.yMin = yMin;
W16T0.yMax = yMax;
W16T0.zCentroid = zCentroid;
W16T0.zFirstMoment = zFirstMoment;
W16T0.zSecondMoment = zSecondMoment;
W16T0.zSigma = zSigma;
W16T0.zVol = zVol;
W16T0.zMin = zMin;
W16T0.zMax = zMax;

load('../MATLAB datastore/dttW1.6T1.0sedimentSpreading.mat');
W16T1.xCentroid = xCentroid;
W16T1.xFirstMoment = xFirstMoment;
W16T1.xSecondMoment = xSecondMoment;
W16T1.xSigma = xSigma;
W16T1.xVol = xVol;
W16T1.xMin = xMin;
W16T1.xMax = xMax;
W16T1.yCentroid = yCentroid;
W16T1.yFirstMoment = yFirstMoment;
W16T1.ySecondMoment = ySecondMoment;
W16T1.ySigma = ySigma;
W16T1.yVol = yVol;
W16T1.yMin = yMin;
W16T1.yMax = yMax;
W16T1.zCentroid = zCentroid;
W16T1.zFirstMoment = zFirstMoment;
W16T1.zSecondMoment = zSecondMoment;
W16T1.zSigma = zSigma;
W16T1.zVol = zVol;
W16T1.zMin = zMin;
W16T1.zMax = zMax;

load('../MATLAB datastore/dttW1.6T2.0sedimentSpreading.mat');
W16T2.xCentroid = xCentroid;
W16T2.xFirstMoment = xFirstMoment;
W16T2.xSecondMoment = xSecondMoment;
W16T2.xSigma = xSigma;
W16T2.xVol = xVol;
W16T2.xMin = xMin;
W16T2.xMax = xMax;
W16T2.yCentroid = yCentroid;
W16T2.yFirstMoment = yFirstMoment;
W16T2.ySecondMoment = ySecondMoment;
W16T2.ySigma = ySigma;
W16T2.yVol = yVol;
W16T2.yMin = yMin;
W16T2.yMax = yMax;
W16T2.zCentroid = zCentroid;
W16T2.zFirstMoment = zFirstMoment;
W16T2.zSecondMoment = zSecondMoment;
W16T2.zSigma = zSigma;
W16T2.zVol = zVol;
W16T2.zMin = zMin;
W16T2.zMax = zMax;

load('../MATLAB datastore/dttW1.6T4.0sedimentSpreading.mat');
W16T4.xCentroid = xCentroid;
W16T4.xFirstMoment = xFirstMoment;
W16T4.xSecondMoment = xSecondMoment;
W16T4.xSigma = xSigma;
W16T4.xVol = xVol;
W16T4.xMin = xMin;
W16T4.xMax = xMax;
W16T4.yCentroid = yCentroid;
W16T4.yFirstMoment = yFirstMoment;
W16T4.ySecondMoment = ySecondMoment;
W16T4.ySigma = ySigma;
W16T4.yVol = yVol;
W16T4.yMin = yMin;
W16T4.yMax = yMax;
W16T4.zCentroid = zCentroid;
W16T4.zFirstMoment = zFirstMoment;
W16T4.zSecondMoment = zSecondMoment;
W16T4.zSigma = zSigma;
W16T4.zVol = zVol;
W16T4.zMin = zMin;
W16T4.zMax = zMax;

load('../MATLAB datastore/dttW1.6T6.0sedimentSpreading.mat');
W16T6.xCentroid = xCentroid;
W16T6.xFirstMoment = xFirstMoment;
W16T6.xSecondMoment = xSecondMoment;
W16T6.xSigma = xSigma;
W16T6.xVol = xVol;
W16T6.xMin = xMin;
W16T6.xMax = xMax;
W16T6.yCentroid = yCentroid;
W16T6.yFirstMoment = yFirstMoment;
W16T6.ySecondMoment = ySecondMoment;
W16T6.ySigma = ySigma;
W16T6.yVol = yVol;
W16T6.yMin = yMin;
W16T6.yMax = yMax;
W16T6.zCentroid = zCentroid;
W16T6.zFirstMoment = zFirstMoment;
W16T6.zSecondMoment = zSecondMoment;
W16T6.zSigma = zSigma;
W16T6.zVol = zVol;
W16T6.zMin = zMin;
W16T6.zMax = zMax;

%W2.0s
load('../MATLAB datastore/dttW2.0T0.0sedimentSpreading.mat');
W2T0.xCentroid = xCentroid;
W2T0.xFirstMoment = xFirstMoment;
W2T0.xSecondMoment = xSecondMoment;
W2T0.xSigma = xSigma;
W2T0.xVol = xVol;
W2T0.xMin = xMin;
W2T0.xMax = xMax;
W2T0.yCentroid = yCentroid;
W2T0.yFirstMoment = yFirstMoment;
W2T0.ySecondMoment = ySecondMoment;
W2T0.ySigma = ySigma;
W2T0.yVol = yVol;
W2T0.yMin = yMin;
W2T0.yMax = yMax;
W2T0.zCentroid = zCentroid;
W2T0.zFirstMoment = zFirstMoment;
W2T0.zSecondMoment = zSecondMoment;
W2T0.zSigma = zSigma;
W2T0.zVol = zVol;
W2T0.zMin = zMin;
W2T0.zMax = zMax;

load('../MATLAB datastore/dttW2.0T1.0sedimentSpreading.mat');
W2T1.xCentroid = xCentroid;
W2T1.xFirstMoment = xFirstMoment;
W2T1.xSecondMoment = xSecondMoment;
W2T1.xSigma = xSigma;
W2T1.xVol = xVol;
W2T1.xMin = xMin;
W2T1.xMax = xMax;
W2T1.yCentroid = yCentroid;
W2T1.yFirstMoment = yFirstMoment;
W2T1.ySecondMoment = ySecondMoment;
W2T1.ySigma = ySigma;
W2T1.yVol = yVol;
W2T1.yMin = yMin;
W2T1.yMax = yMax;
W2T1.zCentroid = zCentroid;
W2T1.zFirstMoment = zFirstMoment;
W2T1.zSecondMoment = zSecondMoment;
W2T1.zSigma = zSigma;
W2T1.zVol = zVol;
W2T1.zMin = zMin;
W2T1.zMax = zMax;

load('../MATLAB datastore/dttW2.0T2.0sedimentSpreading.mat');
W2T2.xCentroid = xCentroid;
W2T2.xFirstMoment = xFirstMoment;
W2T2.xSecondMoment = xSecondMoment;
W2T2.xSigma = xSigma;
W2T2.xVol = xVol;
W2T2.xMin = xMin;
W2T2.xMax = xMax;
W2T2.yCentroid = yCentroid;
W2T2.yFirstMoment = yFirstMoment;
W2T2.ySecondMoment = ySecondMoment;
W2T2.ySigma = ySigma;
W2T2.yVol = yVol;
W2T2.yMin = yMin;
W2T2.yMax = yMax;
W2T2.zCentroid = zCentroid;
W2T2.zFirstMoment = zFirstMoment;
W2T2.zSecondMoment = zSecondMoment;
W2T2.zSigma = zSigma;
W2T2.zVol = zVol;
W2T2.zMin = zMin;
W2T2.zMax = zMax;

load('../MATLAB datastore/dttW2.0T4.0sedimentSpreading.mat');
W2T4.xCentroid = xCentroid;
W2T4.xFirstMoment = xFirstMoment;
W2T4.xSecondMoment = xSecondMoment;
W2T4.xSigma = xSigma;
W2T4.xVol = xVol;
W2T4.xMin = xMin;
W2T4.xMax = xMax;
W2T4.yCentroid = yCentroid;
W2T4.yFirstMoment = yFirstMoment;
W2T4.ySecondMoment = ySecondMoment;
W2T4.ySigma = ySigma;
W2T4.yVol = yVol;
W2T4.yMin = yMin;
W2T4.yMax = yMax;
W2T4.zCentroid = zCentroid;
W2T4.zFirstMoment = zFirstMoment;
W2T4.zSecondMoment = zSecondMoment;
W2T4.zSigma = zSigma;
W2T4.zVol = zVol;
W2T4.zMin = zMin;
W2T4.zMax = zMax;

load('../MATLAB datastore/dttW2.0T6.0sedimentSpreading.mat');
W2T6.xCentroid = xCentroid;
W2T6.xFirstMoment = xFirstMoment;
W2T6.xSecondMoment = xSecondMoment;
W2T6.xSigma = xSigma;
W2T6.xVol = xVol;
W2T6.xMin = xMin;
W2T6.xMax = xMax;
W2T6.yCentroid = yCentroid;
W2T6.yFirstMoment = yFirstMoment;
W2T6.ySecondMoment = ySecondMoment;
W2T6.ySigma = ySigma;
W2T6.yVol = yVol;
W2T6.yMin = yMin;
W2T6.yMax = yMax;
W2T6.zCentroid = zCentroid;
W2T6.zFirstMoment = zFirstMoment;
W2T6.zSecondMoment = zSecondMoment;
W2T6.zSigma = zSigma;
W2T6.zVol = zVol;
W2T6.zMin = zMin;
W2T6.zMax = zMax;

clear -regexp x y z;

%% PLOTS PREAMBLE
dttColorMap = cmocean('-tempo');
dttColorMap2 = cmocean('topo');
dttColorMap3 = cmocean('balance');

xAxis = [0.0125:0.025:19.7375];
yAxis = [0.0125:0.025:8.9875];
zAxis = [-19.9:0.1:23];
tAxis = [0:3.125*175/(24*365):576*3.125*175/(24*365)];

%% PLOTS
% W0
dttSedimentSpreadingMultiPlot_W0 = figure(2001);
dttSedimentSpreadingMultiPlot_W0.Position = [100 100 1280 640];
clf reset
multiTile_W0 = tiledlayout(1, 3);

nexttile
plot(tAxis, W0T0.xSigma/1000)
hold on
plot(tAxis, W0T05.xSigma/1000)
plot(tAxis, W0T1.xSigma/1000)
plot(tAxis, W0T2.xSigma/1000)
plot(tAxis, W0T3.xSigma/1000)
plot(tAxis, W0T4.xSigma/1000)
plot(tAxis, W0T5.xSigma/1000)
plot(tAxis, W0T6.xSigma/1000)
legend('W0.0T0.0', 'W0.0T0.5', 'W0.0T1.0', 'W0.0T2.0', 'W0.0T3.0', 'W0.0T4.0', 'W0.0T5.0', 'W0.0T6.0', 'Location', 'NorthWest')
grid on
xticks([0:6:36])
xlim([0 36])
xlabel('Time, {\itt} [yr]')
ylabel('{\it\sigma_x} [km]')
ylim([0 4])

nexttile
plot(tAxis, W0T0.ySigma/1000)
hold on
plot(tAxis, W0T05.ySigma/1000)
plot(tAxis, W0T1.ySigma/1000)
plot(tAxis, W0T2.ySigma/1000)
plot(tAxis, W0T3.ySigma/1000)
plot(tAxis, W0T4.ySigma/1000)
plot(tAxis, W0T5.ySigma/1000)
plot(tAxis, W0T6.ySigma/1000)
% legend('W0.0T0.0', 'W0.0T0.5', 'W0.0T1.0', 'W0.0T2.0', 'W0.0T3.0', 'W0.0T4.0', 'W0.0T5.0', 'W0.0T6.0', 'Location', 'NorthWest')
grid on
xticks([0:6:36])
xlim([0 36])
xlabel('Time, {\itt} [yr]')
ylabel('{\it\sigma_y} [km]')
ylim([0 4.0])

nexttile
plot(tAxis, W0T0.zSigma)
hold on
plot(tAxis, W0T05.zSigma)
plot(tAxis, W0T1.zSigma)
plot(tAxis, W0T2.zSigma)
plot(tAxis, W0T3.zSigma)
plot(tAxis, W0T4.zSigma)
plot(tAxis, W0T5.zSigma)
plot(tAxis, W0T6.zSigma)
% legend('W0.0T0.0', 'W0.0T0.5', 'W0.0T1.0', 'W0.0T2.0', 'W0.0T3.0', 'W0.0T4.0', 'W0.0T5.0', 'W0.0T6.0', 'Location', 'NorthWest')
grid on
xticks([0:6:36])
xlim([0 36])
xlabel('Time, {\itt} [yr]')
ylabel('{\it\sigma_z} [m]')
ylim([0 2.5])

% W0.4
dttSedimentSpreadingMultiPlot_W04 = figure(2002);
dttSedimentSpreadingMultiPlot_W04.Position = [100 100 1280 640];
clf reset
multiTile_W04 = tiledlayout(1, 3);

nexttile
plot(tAxis, W04T0.xSigma/1000)
hold on
plot(tAxis, W04T1.xSigma/1000)
plot(tAxis, W04T2.xSigma/1000)
plot(tAxis, W04T4.xSigma/1000)
plot(tAxis, W04T6.xSigma/1000)
legend('W0.4T0.0', 'W0.4T1.0', 'W0.4T2.0', 'W0.4T4.0', 'W0.4T6.0', 'Location', 'NorthWest')
grid on
xticks([0:6:36])
xlim([0 36])
xlabel('Time, {\itt} [yr]')
ylabel('{\it\sigma_x} [km]')
ylim([0 4])

nexttile
plot(tAxis, W04T0.ySigma/1000)
hold on
plot(tAxis, W04T1.ySigma/1000)
plot(tAxis, W04T2.ySigma/1000)
plot(tAxis, W04T4.ySigma/1000)
plot(tAxis, W04T6.ySigma/1000)
% legend('W0.4T0.0', 'W0.4T1.0', 'W0.4T2.0', 'W0.4T4.0', 'W0.4T6.0', 'Location', 'NorthWest')
grid on
xticks([0:6:36])
xlim([0 36])
xlabel('Time, {\itt} [yr]')
ylabel('{\it\sigma_y} [km]')
ylim([0 4.0])

nexttile
plot(tAxis, W04T0.zSigma)
hold on
plot(tAxis, W04T1.zSigma)
plot(tAxis, W04T2.zSigma)
plot(tAxis, W04T4.zSigma)
plot(tAxis, W04T6.zSigma)
% legend('W0.4T0.0', 'W0.4T1.0', 'W0.4T2.0', 'W0.4T4.0', 'W0.4T6.0', 'Location', 'NorthWest')
grid on
xticks([0:6:36])
xlim([0 36])
xlabel('Time, {\itt} [yr]')
ylabel('{\it\sigma_z} [m]')
ylim([0 2.5])

% W0.8
dttSedimentSpreadingMultiPlot_W08 = figure(2003);
dttSedimentSpreadingMultiPlot_W08.Position = [100 100 1280 640];
clf reset
multiTile_W08 = tiledlayout(1, 3);

nexttile
plot(tAxis, W08T0.xSigma/1000)
hold on
plot(tAxis, W08T1.xSigma/1000)
plot(tAxis, W08T2.xSigma/1000)
plot(tAxis, W08T4.xSigma/1000)
plot(tAxis, W08T6.xSigma/1000)
legend('W0.8T0.0', 'W0.8T1.0', 'W0.8T2.0', 'W0.8T4.0', 'W0.8T6.0', 'Location', 'NorthWest')
grid on
xticks([0:6:36])
xlim([0 36])
xlabel('Time, {\itt} [yr]')
ylabel('{\it\sigma_x} [km]')
ylim([0 4])

nexttile
plot(tAxis, W08T0.ySigma/1000)
hold on
plot(tAxis, W08T1.ySigma/1000)
plot(tAxis, W08T2.ySigma/1000)
plot(tAxis, W08T4.ySigma/1000)
plot(tAxis, W08T6.ySigma/1000)
% legend('W0.8T0.0', 'W0.8T1.0', 'W0.8T2.0', 'W0.8T4.0', 'W0.8T6.0', 'Location', 'NorthWest')
grid on
xticks([0:6:36])
xlim([0 36])
xlabel('Time, {\itt} [yr]')
ylabel('{\it\sigma_y} [km]')
ylim([0 4.0])

nexttile
plot(tAxis, W08T0.zSigma)
hold on
plot(tAxis, W08T1.zSigma)
plot(tAxis, W08T2.zSigma)
plot(tAxis, W08T4.zSigma)
plot(tAxis, W08T6.zSigma)
% legend('W0.8T0.0', 'W0.8T1.0', 'W0.8T2.0', 'W0.8T4.0', 'W0.8T6.0', 'Location', 'NorthWest')
grid on
xticks([0:6:36])
xlim([0 36])
xlabel('Time, {\itt} [yr]')
ylabel('{\it\sigma_z} [m]')
ylim([0 2.5])

% W1.2
dttSedimentSpreadingMultiPlot_W12 = figure(2004);
dttSedimentSpreadingMultiPlot_W12.Position = [100 100 1280 640];
clf reset
multiTile_W12 = tiledlayout(1, 3);

nexttile
plot(tAxis, W12T0.xSigma/1000)
hold on
plot(tAxis, W12T1.xSigma/1000)
plot(tAxis, W12T2.xSigma/1000)
plot(tAxis, W12T4.xSigma/1000)
plot(tAxis, W12T6.xSigma/1000)
legend('W1.2T0.0', 'W1.2T1.0', 'W1.2T2.0', 'W1.2T4.0', 'W1.2T6.0', 'Location', 'NorthWest')
grid on
xticks([0:6:36])
xlim([0 36])
xlabel('Time, {\itt} [yr]')
ylabel('{\it\sigma_x} [km]')
ylim([0 4])

nexttile
plot(tAxis, W12T0.ySigma/1000)
hold on
plot(tAxis, W12T1.ySigma/1000)
plot(tAxis, W12T2.ySigma/1000)
plot(tAxis, W12T4.ySigma/1000)
plot(tAxis, W12T6.ySigma/1000)
% legend('W1.2T0.0', 'W1.2T1.0', 'W1.2T2.0', 'W1.2T4.0', 'W1.2T6.0', 'Location', 'NorthWest')
grid on
xticks([0:6:36])
xlim([0 36])
xlabel('Time, {\itt} [yr]')
ylabel('{\it\sigma_y} [km]')
ylim([0 4.0])

nexttile
plot(tAxis, W12T0.zSigma)
hold on
plot(tAxis, W12T1.zSigma)
plot(tAxis, W12T2.zSigma)
plot(tAxis, W12T4.zSigma)
plot(tAxis, W12T6.zSigma)
% legend('W1.2T0.0', 'W1.2T1.0', 'W1.2T2.0', 'W1.2T4.0', 'W1.2T6.0', 'Location', 'NorthWest')
grid on
xticks([0:6:36])
xlim([0 36])
xlabel('Time, {\itt} [yr]')
ylabel('{\it\sigma_z} [m]')
ylim([0 2.5])

% W1.6
dttSedimentSpreadingMultiPlot_W16 = figure(2005);
dttSedimentSpreadingMultiPlot_W16.Position = [100 100 1280 640];
clf reset
multiTile_W16 = tiledlayout(1, 3);

nexttile
plot(tAxis, W16T0.xSigma/1000)
hold on
plot(tAxis, W16T1.xSigma/1000)
plot(tAxis, W16T2.xSigma/1000)
plot(tAxis, W16T4.xSigma/1000)
plot(tAxis, W16T6.xSigma/1000)
legend('W1.6T0.0', 'W1.6T1.0', 'W1.6T2.0', 'W1.6T4.0', 'W1.6T6.0', 'Location', 'NorthWest')
grid on
xticks([0:6:36])
xlim([0 36])
xlabel('Time, {\itt} [yr]')
ylabel('{\it\sigma_x} [km]')
ylim([0 4])

nexttile
plot(tAxis, W16T0.ySigma/1000)
hold on
plot(tAxis, W16T1.ySigma/1000)
plot(tAxis, W16T2.ySigma/1000)
plot(tAxis, W16T4.ySigma/1000)
plot(tAxis, W16T6.ySigma/1000)
% legend('W1.6T0.0', 'W1.6T1.0', 'W1.6T2.0', 'W1.6T4.0', 'W1.6T6.0', 'Location', 'NorthWest')
grid on
xticks([0:6:36])
xlim([0 36])
xlabel('Time, {\itt} [yr]')
ylabel('{\it\sigma_y} [km]')
ylim([0 4.0])

nexttile
plot(tAxis, W16T0.zSigma)
hold on
plot(tAxis, W16T1.zSigma)
plot(tAxis, W16T2.zSigma)
plot(tAxis, W16T4.zSigma)
plot(tAxis, W16T6.zSigma)
% legend('W1.6T0.0', 'W1.6T1.0', 'W1.6T2.0', 'W1.6T4.0', 'W1.6T6.0', 'Location', 'NorthWest')
grid on
xticks([0:6:36])
xlim([0 36])
xlabel('Time, {\itt} [yr]')
ylabel('{\it\sigma_z} [m]')
ylim([0 2.5])

% W2.0
dttSedimentSpreadingMultiPlot_W2 = figure(2006);
dttSedimentSpreadingMultiPlot_W2.Position = [100 100 1280 640];
clf reset
multiTile_W2 = tiledlayout(1, 3);

nexttile
plot(tAxis, W2T0.xSigma/1000)
hold on
plot(tAxis, W2T1.xSigma/1000)
plot(tAxis, W2T2.xSigma/1000)
plot(tAxis, W2T4.xSigma/1000)
plot(tAxis, W2T6.xSigma/1000)
legend('W2.0T0.0', 'W2.0T1.0', 'W2.0T2.0', 'W2.0T4.0', 'W2.0T6.0', 'Location', 'NorthWest')
grid on
xticks([0:6:36])
xlim([0 36])
xlabel('Time, {\itt} [yr]')
ylabel('{\it\sigma_x} [km]')
ylim([0 4])

nexttile
plot(tAxis, W2T0.ySigma/1000)
hold on
plot(tAxis, W2T1.ySigma/1000)
plot(tAxis, W2T2.ySigma/1000)
plot(tAxis, W2T4.ySigma/1000)
plot(tAxis, W2T6.ySigma/1000)
% legend('W2.0T0.0', 'W2.0T1.0', 'W2.0T2.0', 'W2.0T4.0', 'W2.0T6.0', 'Location', 'NorthWest')
grid on
xticks([0:6:36])
xlim([0 36])
xlabel('Time, {\itt} [yr]')
ylabel('{\it\sigma_y} [km]')
ylim([0 4.0])

nexttile
plot(tAxis, W2T0.zSigma)
hold on
plot(tAxis, W2T1.zSigma)
plot(tAxis, W2T2.zSigma)
plot(tAxis, W2T4.zSigma)
plot(tAxis, W2T6.zSigma)
% legend('W2.0T0.0', 'W2.0T1.0', 'W2.0T2.0', 'W2.0T4.0', 'W2.0T6.0', 'Location', 'NorthWest')
grid on
xticks([0:6:36])
xlim([0 36])
xlabel('Time, {\itt} [yr]')
ylabel('{\it\sigma_z} [m]')
ylim([0 2.5])

% T0
dttSedimentSpreadingMultiPlot_T0 = figure(2101);
dttSedimentSpreadingMultiPlot_T0.Position = [100 100 1280 640];
clf reset
multiTile_T0 = tiledlayout(1, 3);

nexttile
plot(tAxis, W0T0.xSigma/1000)
hold on
plot(tAxis, W04T0.xSigma/1000)
plot(tAxis, W08T0.xSigma/1000)
plot(tAxis, W12T0.xSigma/1000)
plot(tAxis, W16T0.xSigma/1000)
plot(tAxis, W2T0.xSigma/1000)
legend('W0.0T0.0', 'W0.4T0.0', 'W0.8T0.0', 'W1.2T0.0', 'W1.6T0.0', 'W2.0T0.0', 'Location', 'NorthWest')
grid on
xticks([0:6:36])
xlim([0 36])
xlabel('Time, {\itt} [yr]')
ylabel('{\it\sigma_x} [km]')
ylim([0 4])

nexttile
plot(tAxis, W0T0.ySigma/1000)
hold on
plot(tAxis, W04T0.ySigma/1000)
plot(tAxis, W08T0.ySigma/1000)
plot(tAxis, W12T0.ySigma/1000)
plot(tAxis, W16T0.ySigma/1000)
plot(tAxis, W2T0.ySigma/1000)
% legend('W0.0T0.0', 'W0.4T0.0', 'W0.8T0.0', 'W1.2T0.0', 'W1.6T0.0', 'W2.0T0.0', 'Location', 'NorthWest')
grid on
xticks([0:6:36])
xlim([0 36])
xlabel('Time, {\itt} [yr]')
ylabel('{\it\sigma_y} [km]')
ylim([0 4.0])

nexttile
plot(tAxis, W0T0.zSigma)
hold on
plot(tAxis, W04T0.zSigma)
plot(tAxis, W08T0.zSigma)
plot(tAxis, W12T0.zSigma)
plot(tAxis, W16T0.zSigma)
plot(tAxis, W2T0.zSigma)
% legend('W0.0T0.0', 'W0.4T0.0', 'W0.8T0.0', 'W1.2T0.0', 'W1.6T0.0', 'W2.0T0.0', 'Location', 'NorthWest')
grid on
xticks([0:6:36])
xlim([0 36])
xlabel('Time, {\itt} [yr]')
ylabel('{\it\sigma_z} [m]')
ylim([0 2.5])

% T1
dttSedimentSpreadingMultiPlot_T1 = figure(2102);
dttSedimentSpreadingMultiPlot_T1.Position = [100 100 1280 640];
clf reset
multiTile_T1 = tiledlayout(1, 3);

nexttile
plot(tAxis, W0T1.xSigma/1000)
hold on
plot(tAxis, W04T1.xSigma/1000)
plot(tAxis, W08T1.xSigma/1000)
plot(tAxis, W12T1.xSigma/1000)
plot(tAxis, W16T1.xSigma/1000)
plot(tAxis, W2T1.xSigma/1000)
legend('W0.0T1.0', 'W0.4T1.0', 'W0.8T1.0', 'W1.2T1.0', 'W1.6T1.0', 'W2.0T1.0', 'Location', 'NorthWest')
grid on
xticks([0:6:36])
xlim([0 36])
xlabel('Time, {\itt} [yr]')
ylabel('{\it\sigma_x} [km]')
ylim([0 4])

nexttile
plot(tAxis, W0T1.ySigma/1000)
hold on
plot(tAxis, W04T1.ySigma/1000)
plot(tAxis, W08T1.ySigma/1000)
plot(tAxis, W12T1.ySigma/1000)
plot(tAxis, W16T1.ySigma/1000)
plot(tAxis, W2T1.ySigma/1000)
% legend('W0.0T1.0', 'W0.4T1.0', 'W0.8T1.0', 'W1.2T1.0', 'W1.6T1.0', 'W2.0T1.0', 'Location', 'NorthWest')
grid on
xticks([0:6:36])
xlim([0 36])
xlabel('Time, {\itt} [yr]')
ylabel('{\it\sigma_y} [km]')
ylim([0 4.0])

nexttile
plot(tAxis, W0T1.zSigma)
hold on
plot(tAxis, W04T1.zSigma)
plot(tAxis, W08T1.zSigma)
plot(tAxis, W12T1.zSigma)
plot(tAxis, W16T1.zSigma)
plot(tAxis, W2T1.zSigma)
% legend('W0.0T1.0', 'W0.4T1.0', 'W0.8T1.0', 'W1.2T1.0', 'W1.6T1.0', 'W2.0T1.0', 'Location', 'NorthWest')
grid on
xticks([0:6:36])
xlim([0 36])
xlabel('Time, {\itt} [yr]')
ylabel('{\it\sigma_z} [m]')
ylim([0 2.5])

% T2
dttSedimentSpreadingMultiPlot_T2 = figure(2103);
dttSedimentSpreadingMultiPlot_T2.Position = [100 100 1280 640];
clf reset
multiTile_T2 = tiledlayout(1, 3);

nexttile
plot(tAxis, W0T2.xSigma/1000)
hold on
plot(tAxis, W04T2.xSigma/1000)
plot(tAxis, W08T2.xSigma/1000)
plot(tAxis, W12T2.xSigma/1000)
plot(tAxis, W16T2.xSigma/1000)
plot(tAxis, W2T2.xSigma/1000)
legend('W0.0T2.0', 'W0.4T2.0', 'W0.8T2.0', 'W1.2T2.0', 'W1.6T2.0', 'W2.0T2.0', 'Location', 'NorthWest')
grid on
xticks([0:6:36])
xlim([0 36])
xlabel('Time, {\itt} [yr]')
ylabel('{\it\sigma_x} [km]')
ylim([0 4])

nexttile
plot(tAxis, W0T2.ySigma/1000)
hold on
plot(tAxis, W04T2.ySigma/1000)
plot(tAxis, W08T2.ySigma/1000)
plot(tAxis, W12T2.ySigma/1000)
plot(tAxis, W16T2.ySigma/1000)
plot(tAxis, W2T2.ySigma/1000)
% legend('W0.0T2.0', 'W0.4T2.0', 'W0.8T2.0', 'W1.2T2.0', 'W1.6T2.0', 'W2.0T2.0', 'Location', 'NorthWest')
grid on
xticks([0:6:36])
xlim([0 36])
xlabel('Time, {\itt} [yr]')
ylabel('{\it\sigma_y} [km]')
ylim([0 4.0])

nexttile
plot(tAxis, W0T2.zSigma)
hold on
plot(tAxis, W04T2.zSigma)
plot(tAxis, W08T2.zSigma)
plot(tAxis, W12T2.zSigma)
plot(tAxis, W16T2.zSigma)
plot(tAxis, W2T2.zSigma)
% legend('W0.0T2.0', 'W0.4T2.0', 'W0.8T2.0', 'W1.2T2.0', 'W1.6T2.0', 'W2.0T2.0', 'Location', 'NorthWest')
grid on
xticks([0:6:36])
xlim([0 36])
xlabel('Time, {\itt} [yr]')
ylabel('{\it\sigma_z} [m]')
ylim([0 2.5])

% T4
dttSedimentSpreadingMultiPlot_T4 = figure(2104);
dttSedimentSpreadingMultiPlot_T4.Position = [100 100 1280 640];
clf reset
multiTile_T4 = tiledlayout(1, 3);

nexttile
plot(tAxis, W0T4.xSigma/1000)
hold on
plot(tAxis, W04T4.xSigma/1000)
plot(tAxis, W08T4.xSigma/1000)
plot(tAxis, W12T4.xSigma/1000)
plot(tAxis, W16T4.xSigma/1000)
plot(tAxis, W2T4.xSigma/1000)
legend('W0.0T4.0', 'W0.4T4.0', 'W0.8T4.0', 'W1.2T4.0', 'W1.6T4.0', 'W2.0T4.0', 'Location', 'NorthWest')
grid on
xticks([0:6:36])
xlim([0 36])
xlabel('Time, {\itt} [yr]')
ylabel('{\it\sigma_x} [km]')
ylim([0 4])

nexttile
plot(tAxis, W0T4.ySigma/1000)
hold on
plot(tAxis, W04T4.ySigma/1000)
plot(tAxis, W08T4.ySigma/1000)
plot(tAxis, W12T4.ySigma/1000)
plot(tAxis, W16T4.ySigma/1000)
plot(tAxis, W2T4.ySigma/1000)
% legend('W0.0T4.0', 'W0.4T4.0', 'W0.8T4.0', 'W1.2T4.0', 'W1.6T4.0', 'W2.0T4.0', 'Location', 'NorthWest')
grid on
xticks([0:6:36])
xlim([0 36])
xlabel('Time, {\itt} [yr]')
ylabel('{\it\sigma_y} [km]')
ylim([0 4.0])

nexttile
plot(tAxis, W0T4.zSigma)
hold on
plot(tAxis, W04T4.zSigma)
plot(tAxis, W08T4.zSigma)
plot(tAxis, W12T4.zSigma)
plot(tAxis, W16T4.zSigma)
plot(tAxis, W2T4.zSigma)
% legend('W0.0T4.0', 'W0.4T4.0', 'W0.8T4.0', 'W1.2T4.0', 'W1.6T4.0', 'W2.0T4.0', 'Location', 'NorthWest')
grid on
xticks([0:6:36])
xlim([0 36])
xlabel('Time, {\itt} [yr]')
ylabel('{\it\sigma_z} [m]')
ylim([0 2.5])

% T6
dttSedimentSpreadingMultiPlot_T6 = figure(2105);
dttSedimentSpreadingMultiPlot_T6.Position = [100 100 1280 640];
clf reset
multiTile_T6 = tiledlayout(1, 3);

nexttile
plot(tAxis, W0T6.xSigma/1000)
hold on
plot(tAxis, W04T6.xSigma/1000)
plot(tAxis, W08T6.xSigma/1000)
plot(tAxis, W12T6.xSigma/1000)
plot(tAxis, W16T6.xSigma/1000)
plot(tAxis, W2T6.xSigma/1000)
legend('W0.0T6.0', 'W0.4T6.0', 'W0.8T6.0', 'W1.2T6.0', 'W1.6T6.0', 'W2.0T6.0', 'Location', 'NorthWest')
grid on
xticks([0:6:36])
xlim([0 36])
xlabel('Time, {\itt} [yr]')
ylabel('{\it\sigma_x} [km]')
ylim([0 4])

nexttile
plot(tAxis, W0T6.ySigma/1000)
hold on
plot(tAxis, W04T6.ySigma/1000)
plot(tAxis, W08T6.ySigma/1000)
plot(tAxis, W12T6.ySigma/1000)
plot(tAxis, W16T6.ySigma/1000)
plot(tAxis, W2T6.ySigma/1000)
% legend('W0.0T6.0', 'W0.4T6.0', 'W0.8T6.0', 'W1.2T6.0', 'W1.6T6.0', 'W2.0T6.0', 'Location', 'NorthWest')
grid on
xticks([0:6:36])
xlim([0 36])
xlabel('Time, {\itt} [yr]')
ylabel('{\it\sigma_y} [km]')
ylim([0 4.0])

nexttile
plot(tAxis, W0T6.zSigma)
hold on
plot(tAxis, W04T6.zSigma)
plot(tAxis, W08T6.zSigma)
plot(tAxis, W12T6.zSigma)
plot(tAxis, W16T6.zSigma)
plot(tAxis, W2T6.zSigma)
% legend('W0.0T6.0', 'W0.4T6.0', 'W0.8T6.0', 'W1.2T6.0', 'W1.6T6.0', 'W2.0T6.0', 'Location', 'NorthWest')
grid on
xticks([0:6:36])
xlim([0 36])
xlabel('Time, {\itt} [yr]')
ylabel('{\it\sigma_z} [m]')
ylim([0 2.5])

%% multitile plots showing all (most) sims
dttColorMapMaxX = 1e6;
dttColorMapMaxY = 2e6;
dttColorMapMaxZ = 3e6;

% x
dttSedimentSpreadingMultiPlot_allX = figure(2200);
dttSedimentSpreadingMultiPlot_allX.Position = [100 100 1280 920];
clf reset
multiTile_allX = tiledlayout(6, 5);
multiTile_allX.Padding = 'compact';
multiTile_allX.TileSpacing = 'none';
xlabel(multiTile_allX, '{\itx} [m]', 'FontSize', 16)
ylabel(multiTile_allX, '{\itt} [yr]', 'FontSize', 16)

nexttile
imagesc(xAxis, tAxis, W0T0.xVol, [-dttColorMapMaxX dttColorMapMaxX])
hold on
plot(W0T0.xCentroid/1000, tAxis, 'k--')
plot(W0T0.xCentroid/1000 + W0T0.xSigma/1000, tAxis, 'k-.')
% plot(W0T0.xCentroid/1000 + 2*W0T0.xSigma/1000, tAxis, 'k-.')
plot(W0T0.xMin/1000, tAxis, 'k:')
plot(W0T0.xCentroid/1000 - W0T0.xSigma/1000, tAxis, 'k-.')
% plot(W0T0.xCentroid/1000 - 2*W0T0.xSigma/1000, tAxis, 'k-.')
plot(W0T0.xMax/1000, tAxis, 'k:')
set(gca, 'xticklabel', '', 'yDir', 'Normal')
xticks([0:2:19])
% xlim([0 8.5])
yticks([0:6:36])
grid on
text(0.5, 3, 'W0.0T0.0')

nexttile
imagesc(xAxis, tAxis, W0T1.xVol, [-dttColorMapMaxX dttColorMapMaxX])
hold on
plot(W0T1.xCentroid/1000, tAxis, 'k--')
plot(W0T1.xCentroid/1000 + W0T1.xSigma/1000, tAxis, 'k-.')
% plot(W0T1.xCentroid/1000 + 2*W0T1.xSigma/1000, tAxis, 'k-.')
plot(W0T1.xMin/1000, tAxis, 'k:')
plot(W0T1.xCentroid/1000 - W0T1.xSigma/1000, tAxis, 'k-.')
% plot(W0T1.xCentroid/1000 - 2*W0T1.xSigma/1000, tAxis, 'k-.')
plot(W0T1.xMax/1000, tAxis, 'k:')
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
xticks([0:2:19])
% xlim([0 8.5])
yticks([0:6:36])
grid on
text(0.5, 3, 'W0.0T1.0')

nexttile
imagesc(xAxis, tAxis, W0T2.xVol, [-dttColorMapMaxX dttColorMapMaxX])
hold on
plot(W0T2.xCentroid/1000, tAxis, 'k--')
plot(W0T2.xCentroid/1000 + W0T2.xSigma/1000, tAxis, 'k-.')
% plot(W0T2.xCentroid/1000 + 2*W0T2.xSigma/1000, tAxis, 'k-.')
plot(W0T2.xMin/1000, tAxis, 'k:')
plot(W0T2.xCentroid/1000 - W0T2.xSigma/1000, tAxis, 'k-.')
% plot(W0T2.xCentroid/1000 - 2*W0T2.xSigma/1000, tAxis, 'k-.')
plot(W0T2.xMax/1000, tAxis, 'k:')
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
xticks([0:2:19])
% xlim([0 8.5])
yticks([0:6:36])
grid on
text(0.5, 3, 'W0.0T2.0')

nexttile
imagesc(xAxis, tAxis, W0T4.xVol, [-dttColorMapMaxX dttColorMapMaxX])
hold on
plot(W0T4.xCentroid/1000, tAxis, 'k--')
plot(W0T4.xCentroid/1000 + W0T4.xSigma/1000, tAxis, 'k-.')
% plot(W0T4.xCentroid/1000 + 2*W0T4.xSigma/1000, tAxis, 'k-.')
plot(W0T4.xMin/1000, tAxis, 'k:')
plot(W0T4.xCentroid/1000 - W0T4.xSigma/1000, tAxis, 'k-.')
% plot(W0T4.xCentroid/1000 - 2*W0T4.xSigma/1000, tAxis, 'k-.')
plot(W0T4.xMax/1000, tAxis, 'k:')
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
xticks([0:2:19])
% xlim([0 8.5])
yticks([0:6:36])
grid on
text(0.5, 3, 'W0.0T4.0')

nexttile
imagesc(xAxis, tAxis, W0T6.xVol, [-dttColorMapMaxX dttColorMapMaxX])
hold on
plot(W0T6.xCentroid/1000, tAxis, 'k--')
plot(W0T6.xCentroid/1000 + W0T6.xSigma/1000, tAxis, 'k-.')
% plot(W0T6.xCentroid/1000 + 2*W0T6.xSigma/1000, tAxis, 'k-.')
plot(W0T6.xMin/1000, tAxis, 'k:')
plot(W0T6.xCentroid/1000 - W0T6.xSigma/1000, tAxis, 'k-.')
% plot(W0T6.xCentroid/1000 - 2*W0T6.xSigma/1000, tAxis, 'k-.')
plot(W0T6.xMax/1000, tAxis, 'k:')
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
xticks([0:2:19])
% xlim([0 8.5])
yticks([0:6:36])
grid on
text(0.5, 3, 'W0.0T6.0')

nexttile
imagesc(xAxis, tAxis, W04T0.xVol, [-dttColorMapMaxX dttColorMapMaxX])
hold on
plot(W04T0.xCentroid/1000, tAxis, 'k--')
plot(W04T0.xCentroid/1000 + W04T0.xSigma/1000, tAxis, 'k-.')
% plot(W04T0.xCentroid/1000 + 2*W04T0.xSigma/1000, tAxis, 'k-.')
plot(W04T0.xMin/1000, tAxis, 'k:')
plot(W04T0.xCentroid/1000 - W04T0.xSigma/1000, tAxis, 'k-.')
% plot(W04T0.xCentroid/1000 - 2*W04T0.xSigma/1000, tAxis, 'k-.')
plot(W04T0.xMax/1000, tAxis, 'k:')
set(gca, 'xticklabel', '', 'yDir', 'Normal')
xticks([0:2:19])
% xlim([0 8.5])
yticks([0:6:36])
grid on
text(0.5, 3, 'W0.4T0.0')

nexttile
imagesc(xAxis, tAxis, W04T1.xVol, [-dttColorMapMaxX dttColorMapMaxX])
hold on
plot(W04T1.xCentroid/1000, tAxis, 'k--')
plot(W04T1.xCentroid/1000 + W04T1.xSigma/1000, tAxis, 'k-.')
% plot(W04T1.xCentroid/1000 + 2*W04T1.xSigma/1000, tAxis, 'k-.')
plot(W04T1.xMin/1000, tAxis, 'k:')
plot(W04T1.xCentroid/1000 - W04T1.xSigma/1000, tAxis, 'k-.')
% plot(W04T1.xCentroid/1000 - 2*W04T1.xSigma/1000, tAxis, 'k-.')
plot(W04T1.xMax/1000, tAxis, 'k:')
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
xticks([0:2:19])
% xlim([0 8.5])
yticks([0:6:36])
grid on
text(0.5, 3, 'W1.4T1.0')

nexttile
imagesc(xAxis, tAxis, W04T2.xVol, [-dttColorMapMaxX dttColorMapMaxX])
hold on
plot(W04T2.xCentroid/1000, tAxis, 'k--')
plot(W04T2.xCentroid/1000 + W04T2.xSigma/1000, tAxis, 'k-.')
% plot(W04T2.xCentroid/1000 + 2*W04T2.xSigma/1000, tAxis, 'k-.')
plot(W04T2.xMin/1000, tAxis, 'k:')
plot(W04T2.xCentroid/1000 - W04T2.xSigma/1000, tAxis, 'k-.')
% plot(W04T2.xCentroid/1000 - 2*W04T2.xSigma/1000, tAxis, 'k-.')
plot(W04T2.xMax/1000, tAxis, 'k:')
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
xticks([0:2:19])
% xlim([0 8.5])
yticks([0:6:36])
grid on
text(0.5, 3, 'W0.4T2.0')

nexttile
imagesc(xAxis, tAxis, W04T4.xVol, [-dttColorMapMaxX dttColorMapMaxX])
hold on
plot(W04T4.xCentroid/1000, tAxis, 'k--')
plot(W04T4.xCentroid/1000 + W04T4.xSigma/1000, tAxis, 'k-.')
% plot(W04T4.xCentroid/1000 + 2*W04T4.xSigma/1000, tAxis, 'k-.')
plot(W04T4.xMin/1000, tAxis, 'k:')
plot(W04T4.xCentroid/1000 - W04T4.xSigma/1000, tAxis, 'k-.')
% plot(W04T4.xCentroid/1000 - 2*W04T4.xSigma/1000, tAxis, 'k-.')
plot(W04T4.xMax/1000, tAxis, 'k:')
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
xticks([0:2:19])
% xlim([0 8.5])
yticks([0:6:36])
grid on
text(0.5, 3, 'W0.4T4.0')

nexttile
imagesc(xAxis, tAxis, W04T6.xVol, [-dttColorMapMaxX dttColorMapMaxX])
hold on
plot(W04T6.xCentroid/1000, tAxis, 'k--')
plot(W04T6.xCentroid/1000 + W04T6.xSigma/1000, tAxis, 'k-.')
% plot(W04T6.xCentroid/1000 + 2*W04T6.xSigma/1000, tAxis, 'k-.')
plot(W04T6.xMin/1000, tAxis, 'k:')
plot(W04T6.xCentroid/1000 - W04T6.xSigma/1000, tAxis, 'k-.')
% plot(W04T6.xCentroid/1000 - 2*W04T6.xSigma/1000, tAxis, 'k-.')
plot(W04T6.xMax/1000, tAxis, 'k:')
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
xticks([0:2:19])
% xlim([0 8.5])
yticks([0:6:36])
grid on
text(0.5, 3, 'W0.4T6.0')

nexttile
imagesc(xAxis, tAxis, W08T0.xVol, [-dttColorMapMaxX dttColorMapMaxX])
hold on
plot(W08T0.xCentroid/1000, tAxis, 'k--')
plot(W08T0.xCentroid/1000 + W08T0.xSigma/1000, tAxis, 'k-.')
% plot(W08T0.xCentroid/1000 + 2*W08T0.xSigma/1000, tAxis, 'k-.')
plot(W08T0.xMin/1000, tAxis, 'k:')
plot(W08T0.xCentroid/1000 - W08T0.xSigma/1000, tAxis, 'k-.')
% plot(W08T0.xCentroid/1000 - 2*W08T0.xSigma/1000, tAxis, 'k-.')
plot(W08T0.xMax/1000, tAxis, 'k:')
set(gca, 'xticklabel', '', 'yDir', 'Normal')
xticks([0:2:19])
% xlim([0 8.5])
yticks([0:6:36])
grid on
text(0.5, 3, 'W0.8T0.0')

nexttile
imagesc(xAxis, tAxis, W08T1.xVol, [-dttColorMapMaxX dttColorMapMaxX])
hold on
plot(W08T1.xCentroid/1000, tAxis, 'k--')
plot(W08T1.xCentroid/1000 + W08T1.xSigma/1000, tAxis, 'k-.')
% plot(W08T1.xCentroid/1000 + 2*W08T1.xSigma/1000, tAxis, 'k-.')
plot(W08T1.xMin/1000, tAxis, 'k:')
plot(W08T1.xCentroid/1000 - W08T1.xSigma/1000, tAxis, 'k-.')
% plot(W08T1.xCentroid/1000 - 2*W08T1.xSigma/1000, tAxis, 'k-.')
plot(W08T1.xMax/1000, tAxis, 'k:')
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
xticks([0:2:19])
% xlim([0 8.5])
yticks([0:6:36])
grid on
text(0.5, 3, 'W0.8T1.0')

nexttile
imagesc(xAxis, tAxis, W08T2.xVol, [-dttColorMapMaxX dttColorMapMaxX])
hold on
plot(W08T2.xCentroid/1000, tAxis, 'k--')
plot(W08T2.xCentroid/1000 + W08T2.xSigma/1000, tAxis, 'k-.')
% plot(W08T2.xCentroid/1000 + 2*W08T2.xSigma/1000, tAxis, 'k-.')
plot(W08T2.xMin/1000, tAxis, 'k:')
plot(W08T2.xCentroid/1000 - W08T2.xSigma/1000, tAxis, 'k-.')
% plot(W08T2.xCentroid/1000 - 2*W08T2.xSigma/1000, tAxis, 'k-.')
plot(W08T2.xMax/1000, tAxis, 'k:')
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
xticks([0:2:19])
% xlim([0 8.5])
yticks([0:6:36])
grid on
text(0.5, 3, 'W0.8T2.0')

nexttile
imagesc(xAxis, tAxis, W08T4.xVol, [-dttColorMapMaxX dttColorMapMaxX])
hold on
plot(W08T4.xCentroid/1000, tAxis, 'k--')
plot(W08T4.xCentroid/1000 + W08T4.xSigma/1000, tAxis, 'k-.')
% plot(W08T4.xCentroid/1000 + 2*W08T4.xSigma/1000, tAxis, 'k-.')
plot(W08T4.xMin/1000, tAxis, 'k:')
plot(W08T4.xCentroid/1000 - W08T4.xSigma/1000, tAxis, 'k-.')
% plot(W08T4.xCentroid/1000 - 2*W08T4.xSigma/1000, tAxis, 'k-.')
plot(W08T4.xMax/1000, tAxis, 'k:')
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
xticks([0:2:19])
% xlim([0 8.5])
yticks([0:6:36])
grid on
text(0.5, 3, 'W0.8T4.0')

nexttile
imagesc(xAxis, tAxis, W08T6.xVol, [-dttColorMapMaxX dttColorMapMaxX])
hold on
plot(W08T6.xCentroid/1000, tAxis, 'k--')
plot(W08T6.xCentroid/1000 + W08T6.xSigma/1000, tAxis, 'k-.')
% plot(W08T6.xCentroid/1000 + 2*W08T6.xSigma/1000, tAxis, 'k-.')
plot(W08T6.xMin/1000, tAxis, 'k:')
plot(W08T6.xCentroid/1000 - W08T6.xSigma/1000, tAxis, 'k-.')
% plot(W08T6.xCentroid/1000 - 2*W08T6.xSigma/1000, tAxis, 'k-.')
plot(W08T6.xMax/1000, tAxis, 'k:')
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
xticks([0:2:19])
% xlim([0 8.5])
yticks([0:6:36])
grid on
text(0.5, 3, 'W0.8T6.0')

nexttile
imagesc(xAxis, tAxis, W12T0.xVol, [-dttColorMapMaxX dttColorMapMaxX])
hold on
plot(W12T0.xCentroid/1000, tAxis, 'k--')
plot(W12T0.xCentroid/1000 + W12T0.xSigma/1000, tAxis, 'k-.')
% plot(W12T0.xCentroid/1000 + 2*W12T0.xSigma/1000, tAxis, 'k-.')
plot(W12T0.xMin/1000, tAxis, 'k:')
plot(W12T0.xCentroid/1000 - W12T0.xSigma/1000, tAxis, 'k-.')
% plot(W12T0.xCentroid/1000 - 2*W12T0.xSigma/1000, tAxis, 'k-.')
plot(W12T0.xMax/1000, tAxis, 'k:')
set(gca, 'xticklabel', '', 'yDir', 'Normal')
xticks([0:2:19])
% xlim([0 8.5])
yticks([0:6:36])
grid on
text(0.5, 3, 'W1.2T0.0')

nexttile
imagesc(xAxis, tAxis, W12T1.xVol, [-dttColorMapMaxX dttColorMapMaxX])
hold on
plot(W12T1.xCentroid/1000, tAxis, 'k--')
plot(W12T1.xCentroid/1000 + W12T1.xSigma/1000, tAxis, 'k-.')
% plot(W12T1.xCentroid/1000 + 2*W12T1.xSigma/1000, tAxis, 'k-.')
plot(W12T1.xMin/1000, tAxis, 'k:')
plot(W12T1.xCentroid/1000 - W12T1.xSigma/1000, tAxis, 'k-.')
% plot(W12T1.xCentroid/1000 - 2*W12T1.xSigma/1000, tAxis, 'k-.')
plot(W12T1.xMax/1000, tAxis, 'k:')
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
xticks([0:2:19])
% xlim([0 8.5])
yticks([0:6:36])
grid on
text(0.5, 3, 'W1.2T1.0')

nexttile
imagesc(xAxis, tAxis, W12T2.xVol, [-dttColorMapMaxX dttColorMapMaxX])
hold on
plot(W12T2.xCentroid/1000, tAxis, 'k--')
plot(W12T2.xCentroid/1000 + W12T2.xSigma/1000, tAxis, 'k-.')
% plot(W12T2.xCentroid/1000 + 2*W12T2.xSigma/1000, tAxis, 'k-.')
plot(W12T2.xMin/1000, tAxis, 'k:')
plot(W12T2.xCentroid/1000 - W12T2.xSigma/1000, tAxis, 'k-.')
% plot(W12T2.xCentroid/1000 - 2*W12T2.xSigma/1000, tAxis, 'k-.')
plot(W12T2.xMax/1000, tAxis, 'k:')
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
xticks([0:2:19])
% xlim([0 8.5])
yticks([0:6:36])
grid on
text(0.5, 3, 'W1.2T2.0')

nexttile
imagesc(xAxis, tAxis, W12T4.xVol, [-dttColorMapMaxX dttColorMapMaxX])
hold on
plot(W12T4.xCentroid/1000, tAxis, 'k--')
plot(W12T4.xCentroid/1000 + W12T4.xSigma/1000, tAxis, 'k-.')
% plot(W12T4.xCentroid/1000 + 2*W12T4.xSigma/1000, tAxis, 'k-.')
plot(W12T4.xMin/1000, tAxis, 'k:')
plot(W12T4.xCentroid/1000 - W12T4.xSigma/1000, tAxis, 'k-.')
% plot(W12T4.xCentroid/1000 - 2*W12T4.xSigma/1000, tAxis, 'k-.')
plot(W12T4.xMax/1000, tAxis, 'k:')
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
xticks([0:2:19])
% xlim([0 8.5])
yticks([0:6:36])
grid on
text(0.5, 3, 'W1.2T4.0')

nexttile
imagesc(xAxis, tAxis, W12T6.xVol, [-dttColorMapMaxX dttColorMapMaxX])
hold on
plot(W12T6.xCentroid/1000, tAxis, 'k--')
plot(W12T6.xCentroid/1000 + W12T6.xSigma/1000, tAxis, 'k-.')
% plot(W12T6.xCentroid/1000 + 2*W12T6.xSigma/1000, tAxis, 'k-.')
plot(W12T6.xMin/1000, tAxis, 'k:')
plot(W12T6.xCentroid/1000 - W12T6.xSigma/1000, tAxis, 'k-.')
% plot(W12T6.xCentroid/1000 - 2*W12T6.xSigma/1000, tAxis, 'k-.')
plot(W12T6.xMax/1000, tAxis, 'k:')
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
xticks([0:2:19])
% xlim([0 8.5])
yticks([0:6:36])
grid on
text(0.5, 3, 'W1.2T6.0')

nexttile
imagesc(xAxis, tAxis, W16T0.xVol, [-dttColorMapMaxX dttColorMapMaxX])
hold on
plot(W16T0.xCentroid/1000, tAxis, 'k--')
plot(W16T0.xCentroid/1000 + W16T0.xSigma/1000, tAxis, 'k-.')
% plot(W16T0.xCentroid/1000 + 2*W16T0.xSigma/1000, tAxis, 'k-.')
plot(W16T0.xMin/1000, tAxis, 'k:')
plot(W16T0.xCentroid/1000 - W16T0.xSigma/1000, tAxis, 'k-.')
% plot(W16T0.xCentroid/1000 - 2*W16T0.xSigma/1000, tAxis, 'k-.')
plot(W16T0.xMax/1000, tAxis, 'k:')
set(gca, 'xticklabel', '', 'yDir', 'Normal')
xticks([0:2:19])
% xlim([0 8.5])
yticks([0:6:36])
grid on
text(0.5, 3, 'W1.6T0.0')

nexttile
imagesc(xAxis, tAxis, W16T1.xVol, [-dttColorMapMaxX dttColorMapMaxX])
hold on
plot(W16T1.xCentroid/1000, tAxis, 'k--')
plot(W16T1.xCentroid/1000 + W16T1.xSigma/1000, tAxis, 'k-.')
% plot(W16T1.xCentroid/1000 + 2*W16T1.xSigma/1000, tAxis, 'k-.')
plot(W16T1.xMin/1000, tAxis, 'k:')
plot(W16T1.xCentroid/1000 - W16T1.xSigma/1000, tAxis, 'k-.')
% plot(W16T1.xCentroid/1000 - 2*W16T1.xSigma/1000, tAxis, 'k-.')
plot(W16T1.xMax/1000, tAxis, 'k:')
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
xticks([0:2:19])
% xlim([0 8.5])
yticks([0:6:36])
grid on
text(0.5, 3, 'W1.6T1.0')

nexttile
imagesc(xAxis, tAxis, W16T2.xVol, [-dttColorMapMaxX dttColorMapMaxX])
hold on
plot(W16T2.xCentroid/1000, tAxis, 'k--')
plot(W16T2.xCentroid/1000 + W16T2.xSigma/1000, tAxis, 'k-.')
% plot(W16T2.xCentroid/1000 + 2*W16T2.xSigma/1000, tAxis, 'k-.')
plot(W16T2.xMin/1000, tAxis, 'k:')
plot(W16T2.xCentroid/1000 - W16T2.xSigma/1000, tAxis, 'k-.')
% plot(W16T2.xCentroid/1000 - 2*W16T2.xSigma/1000, tAxis, 'k-.')
plot(W16T2.xMax/1000, tAxis, 'k:')
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
xticks([0:2:19])
% xlim([0 8.5])
yticks([0:6:36])
grid on
text(0.5, 3, 'W1.6T2.0')

nexttile
imagesc(xAxis, tAxis, W16T4.xVol, [-dttColorMapMaxX dttColorMapMaxX])
hold on
plot(W16T4.xCentroid/1000, tAxis, 'k--')
plot(W16T4.xCentroid/1000 + W16T4.xSigma/1000, tAxis, 'k-.')
% plot(W16T4.xCentroid/1000 + 2*W16T4.xSigma/1000, tAxis, 'k-.')
plot(W16T4.xMin/1000, tAxis, 'k:')
plot(W16T4.xCentroid/1000 - W16T4.xSigma/1000, tAxis, 'k-.')
% plot(W16T4.xCentroid/1000 - 2*W16T4.xSigma/1000, tAxis, 'k-.')
plot(W16T4.xMax/1000, tAxis, 'k:')
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
xticks([0:2:19])
% xlim([0 8.5])
yticks([0:6:36])
grid on
text(0.5, 3, 'W1.6T4.0')

nexttile
imagesc(xAxis, tAxis, W16T6.xVol, [-dttColorMapMaxX dttColorMapMaxX])
hold on
plot(W16T6.xCentroid/1000, tAxis, 'k--')
plot(W16T6.xCentroid/1000 + W16T6.xSigma/1000, tAxis, 'k-.')
% plot(W16T6.xCentroid/1000 + 2*W16T6.xSigma/1000, tAxis, 'k-.')
plot(W16T6.xMin/1000, tAxis, 'k:')
plot(W16T6.xCentroid/1000 - W16T6.xSigma/1000, tAxis, 'k-.')
% plot(W16T6.xCentroid/1000 - 2*W16T6.xSigma/1000, tAxis, 'k-.')
plot(W16T6.xMax/1000, tAxis, 'k:')
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
xticks([0:2:19])
% xlim([0 8.5])
yticks([0:6:36])
grid on
text(0.5, 3, 'W1.6T6.0')

nexttile
imagesc(xAxis, tAxis, W2T0.xVol, [-dttColorMapMaxX dttColorMapMaxX])
hold on
plot(W2T0.xCentroid/1000, tAxis, 'k--')
plot(W2T0.xCentroid/1000 + W2T0.xSigma/1000, tAxis, 'k-.')
% plot(W2T0.xCentroid/1000 + 2*W2T0.xSigma/1000, tAxis, 'k-.')
plot(W2T0.xMin/1000, tAxis, 'k:')
plot(W2T0.xCentroid/1000 - W2T0.xSigma/1000, tAxis, 'k-.')
% plot(W2T0.xCentroid/1000 - 2*W2T0.xSigma/1000, tAxis, 'k-.')
plot(W2T0.xMax/1000, tAxis, 'k:')
set(gca, 'yDir', 'Normal')
xticks([0:2:19])
% xlim([0 8.5])
yticks([0:6:36])
grid on
text(0.5, 3, 'W2.0T0.0')

nexttile
imagesc(xAxis, tAxis, W2T1.xVol, [-dttColorMapMaxX dttColorMapMaxX])
hold on
plot(W2T1.xCentroid/1000, tAxis, 'k--')
plot(W2T1.xCentroid/1000 + W2T1.xSigma/1000, tAxis, 'k-.')
% plot(W2T1.xCentroid/1000 + 2*W2T1.xSigma/1000, tAxis, 'k-.')
plot(W2T1.xMin/1000, tAxis, 'k:')
plot(W2T1.xCentroid/1000 - W2T1.xSigma/1000, tAxis, 'k-.')
% plot(W2T1.xCentroid/1000 - 2*W2T1.xSigma/1000, tAxis, 'k-.')
plot(W2T1.xMax/1000, tAxis, 'k:')
set(gca, 'yticklabel', '', 'yDir', 'Normal')
xticks([0:2:19])
% xlim([0 8.5])
yticks([0:6:36])
grid on
text(0.5, 3, 'W2.0T1.0')

nexttile
imagesc(xAxis, tAxis, W2T2.xVol, [-dttColorMapMaxX dttColorMapMaxX])
hold on
plot(W2T2.xCentroid/1000, tAxis, 'k--')
plot(W2T2.xCentroid/1000 + W2T2.xSigma/1000, tAxis, 'k-.')
% plot(W2T2.xCentroid/1000 + 2*W2T2.xSigma/1000, tAxis, 'k-.')
plot(W2T2.xMin/1000, tAxis, 'k:')
plot(W2T2.xCentroid/1000 - W2T2.xSigma/1000, tAxis, 'k-.')
% plot(W2T2.xCentroid/1000 - 2*W2T2.xSigma/1000, tAxis, 'k-.')
plot(W2T2.xMax/1000, tAxis, 'k:')
set(gca, 'yticklabel', '', 'yDir', 'Normal')
xticks([0:2:19])
% xlim([0 8.5])
yticks([0:6:36])
grid on
text(0.5, 3, 'W2.0T2.0')

nexttile
imagesc(xAxis, tAxis, W2T4.xVol, [-dttColorMapMaxX dttColorMapMaxX])
hold on
plot(W2T4.xCentroid/1000, tAxis, 'k--')
plot(W2T4.xCentroid/1000 + W2T4.xSigma/1000, tAxis, 'k-.')
% plot(W2T4.xCentroid/1000 + 2*W2T4.xSigma/1000, tAxis, 'k-.')
plot(W2T4.xMin/1000, tAxis, 'k:')
plot(W2T4.xCentroid/1000 - W2T4.xSigma/1000, tAxis, 'k-.')
% plot(W2T4.xCentroid/1000 - 2*W2T4.xSigma/1000, tAxis, 'k-.')
plot(W2T4.xMax/1000, tAxis, 'k:')
set(gca, 'yticklabel', '', 'yDir', 'Normal')
xticks([0:2:19])
% xlim([0 8.5])
yticks([0:6:36])
grid on
text(0.5, 3, 'W2.0T4.0')

nexttile
imagesc(xAxis, tAxis, W2T6.xVol, [-dttColorMapMaxX dttColorMapMaxX])
hold on
plot(W2T6.xCentroid/1000, tAxis, 'k--')
plot(W2T6.xCentroid/1000 + W2T6.xSigma/1000, tAxis, 'k-.')
% plot(W2T6.xCentroid/1000 + 2*W2T6.xSigma/1000, tAxis, 'k-.')
plot(W2T6.xMin/1000, tAxis, 'k:')
plot(W2T6.xCentroid/1000 - W2T6.xSigma/1000, tAxis, 'k-.')
% plot(W2T6.xCentroid/1000 - 2*W2T6.xSigma/1000, tAxis, 'k-.')
plot(W2T6.xMax/1000, tAxis, 'k:')
set(gca, 'yticklabel', '', 'yDir', 'Normal')
xticks([0:2:19])
% xlim([0 8.5])
yticks([0:6:36])
grid on
text(0.5, 3, 'W2.0T6.0')

colormap(dttColorMap3)
cx = colorbar;
cx.Layout.Tile = 'east';
cx.Label.String = 'Net volume change per meter [m^3 m^{-1}]';
cx.FontSize = 10;
% cx.TickLabels = [-dttColorMapMaxX, -dttColorMapMaxX *0.8, -dttColorMapMaxX *0.6, -dttColorMapMaxX *0.4, -dttColorMapMaxX *0.2, 0, dttColorMapMaxX *0.2, dttColorMapMaxX *0.4, dttColorMapMaxX *0.6, dttColorMapMaxX *0.8, dttColorMapMaxX]/25;
cx.TickLabels = {'-4.0\cdot10^4', '-3.2\cdot10^4', '-2.4\cdot10^4', '-1.6\cdot10^4', '-0.8\cdot10^4', '0.0', '0.8\cdot10^4', '1.6\cdot10^4', '2.4\cdot10^4', '3.2\cdot10^4', '4.0\cdot10^4'};

% y
% need to offset these 500 m or make sure axis labels are otherwise correct
dttSedimentSpreadingMultiPlot_allY = figure(2201);
dttSedimentSpreadingMultiPlot_allY.Position = [100 100 1280 920];
clf reset
multiTile_allY = tiledlayout(6, 5);
multiTile_allY.Padding = 'compact';
multiTile_allY.TileSpacing = 'none';
xlabel(multiTile_allY, '{\ity} [m]', 'FontSize', 16)
ylabel(multiTile_allY, '{\itt} [yr]', 'FontSize', 16)

nexttile
imagesc(yAxis, tAxis, W0T0.yVol, [-dttColorMapMaxY dttColorMapMaxY])
hold on
plot(W0T0.yCentroid/1000, tAxis, 'k--')
plot(W0T0.yCentroid/1000 + W0T0.ySigma/1000, tAxis, 'k-.')
% plot(W0T0.yCentroid/1000 + 2*W0T0.ySigma/1000, tAxis, 'k-.')
plot(W0T0.yMin/1000, tAxis, 'k:')
plot(W0T0.yCentroid/1000 - W0T0.ySigma/1000, tAxis, 'k-.')
% plot(W0T0.yCentroid/1000 - 2*W0T0.ySigma/1000, tAxis, 'k-.')
plot(W0T0.yMax/1000, tAxis, 'k:')
set(gca, 'xticklabel', '', 'yDir', 'Normal')
xticks([0.5:1:8.5])
xlim([0 8.5])
yticks([0:6:36])
grid on
text(6, 33.2, 'W0.0T0.0')

nexttile
imagesc(yAxis, tAxis, W0T1.yVol, [-dttColorMapMaxY dttColorMapMaxY])
hold on
plot(W0T1.yCentroid/1000, tAxis, 'k--')
plot(W0T1.yCentroid/1000 + W0T1.ySigma/1000, tAxis, 'k-.')
% plot(W0T1.yCentroid/1000 + 2*W0T1.ySigma/1000, tAxis, 'k-.')
plot(W0T1.yMin/1000, tAxis, 'k:')
plot(W0T1.yCentroid/1000 - W0T1.ySigma/1000, tAxis, 'k-.')
% plot(W0T1.yCentroid/1000 - 2*W0T1.ySigma/1000, tAxis, 'k-.')
plot(W0T1.yMax/1000, tAxis, 'k:')
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
xticks([0.5:1:8.5])
xlim([0 8.5])
yticks([0:6:36])
grid on
text(6, 33.2, 'W0.0T1.0')

nexttile
imagesc(yAxis, tAxis, W0T2.yVol, [-dttColorMapMaxY dttColorMapMaxY])
hold on
plot(W0T2.yCentroid/1000, tAxis, 'k--')
plot(W0T2.yCentroid/1000 + W0T2.ySigma/1000, tAxis, 'k-.')
% plot(W0T2.yCentroid/1000 + 2*W0T2.ySigma/1000, tAxis, 'k-.')
plot(W0T2.yMin/1000, tAxis, 'k:')
plot(W0T2.yCentroid/1000 - W0T2.ySigma/1000, tAxis, 'k-.')
% plot(W0T2.yCentroid/1000 - 2*W0T2.ySigma/1000, tAxis, 'k-.')
plot(W0T2.yMax/1000, tAxis, 'k:')
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
xticks([0.5:1:8.5])
xlim([0 8.5])
yticks([0:6:36])
grid on
text(6, 33.2, 'W0.0T2.0')

nexttile
imagesc(yAxis, tAxis, W0T4.yVol, [-dttColorMapMaxY dttColorMapMaxY])
hold on
plot(W0T4.yCentroid/1000, tAxis, 'k--')
plot(W0T4.yCentroid/1000 + W0T4.ySigma/1000, tAxis, 'k-.')
% plot(W0T4.yCentroid/1000 + 2*W0T4.ySigma/1000, tAxis, 'k-.')
plot(W0T4.yMin/1000, tAxis, 'k:')
plot(W0T4.yCentroid/1000 - W0T4.ySigma/1000, tAxis, 'k-.')
% plot(W0T4.yCentroid/1000 - 2*W0T4.ySigma/1000, tAxis, 'k-.')
plot(W0T4.yMax/1000, tAxis, 'k:')
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
xticks([0.5:1:8.5])
xlim([0 8.5])
yticks([0:6:36])
grid on
text(6, 33.2, 'W0.0T4.0')

nexttile
imagesc(yAxis, tAxis, W0T6.yVol, [-dttColorMapMaxY dttColorMapMaxY])
hold on
plot(W0T6.yCentroid/1000, tAxis, 'k--')
plot(W0T6.yCentroid/1000 + W0T6.ySigma/1000, tAxis, 'k-.')
% plot(W0T6.yCentroid/1000 + 2*W0T6.ySigma/1000, tAxis, 'k-.')
plot(W0T6.yMin/1000, tAxis, 'k:')
plot(W0T6.yCentroid/1000 - W0T6.ySigma/1000, tAxis, 'k-.')
% plot(W0T6.yCentroid/1000 - 2*W0T6.ySigma/1000, tAxis, 'k-.')
plot(W0T6.yMax/1000, tAxis, 'k:')
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
xticks([0.5:1:8.5])
xlim([0 8.5])
yticks([0:6:36])
grid on
text(6, 33.2, 'W0.0T6.0')

nexttile
imagesc(yAxis, tAxis, W04T0.yVol, [-dttColorMapMaxY dttColorMapMaxY])
hold on
plot(W04T0.yCentroid/1000, tAxis, 'k--')
plot(W04T0.yCentroid/1000 + W04T0.ySigma/1000, tAxis, 'k-.')
% plot(W04T0.yCentroid/1000 + 2*W04T0.ySigma/1000, tAxis, 'k-.')
plot(W04T0.yMin/1000, tAxis, 'k:')
plot(W04T0.yCentroid/1000 - W04T0.ySigma/1000, tAxis, 'k-.')
% plot(W04T0.yCentroid/1000 - 2*W04T0.ySigma/1000, tAxis, 'k-.')
plot(W04T0.yMax/1000, tAxis, 'k:')
set(gca, 'xticklabel', '', 'yDir', 'Normal')
xticks([0.5:1:8.5])
xlim([0 8.5])
yticks([0:6:36])
grid on
text(6, 33.2, 'W0.4T0.0')

nexttile
imagesc(yAxis, tAxis, W04T1.yVol, [-dttColorMapMaxY dttColorMapMaxY])
hold on
plot(W04T1.yCentroid/1000, tAxis, 'k--')
plot(W04T1.yCentroid/1000 + W04T1.ySigma/1000, tAxis, 'k-.')
% plot(W04T1.yCentroid/1000 + 2*W04T1.ySigma/1000, tAxis, 'k-.')
plot(W04T1.yMin/1000, tAxis, 'k:')
plot(W04T1.yCentroid/1000 - W04T1.ySigma/1000, tAxis, 'k-.')
% plot(W04T1.yCentroid/1000 - 2*W04T1.ySigma/1000, tAxis, 'k-.')
plot(W04T1.yMax/1000, tAxis, 'k:')
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
xticks([0.5:1:8.5])
xlim([0 8.5])
yticks([0:6:36])
grid on
text(6, 33.2, 'W0.4T1.0')

nexttile
imagesc(yAxis, tAxis, W04T2.yVol, [-dttColorMapMaxY dttColorMapMaxY])
hold on
plot(W04T2.yCentroid/1000, tAxis, 'k--')
plot(W04T2.yCentroid/1000 + W04T2.ySigma/1000, tAxis, 'k-.')
% plot(W04T2.yCentroid/1000 + 2*W04T2.ySigma/1000, tAxis, 'k-.')
plot(W04T2.yMin/1000, tAxis, 'k:')
plot(W04T2.yCentroid/1000 - W04T2.ySigma/1000, tAxis, 'k-.')
% plot(W04T2.yCentroid/1000 - 2*W04T2.ySigma/1000, tAxis, 'k-.')
plot(W04T2.yMax/1000, tAxis, 'k:')
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
xticks([0.5:1:8.5])
xlim([0 8.5])
yticks([0:6:36])
grid on
text(6, 33.2, 'W0.4T2.0')

nexttile
imagesc(yAxis, tAxis, W04T4.yVol, [-dttColorMapMaxY dttColorMapMaxY])
hold on
plot(W04T4.yCentroid/1000, tAxis, 'k--')
plot(W04T4.yCentroid/1000 + W04T4.ySigma/1000, tAxis, 'k-.')
% plot(W04T4.yCentroid/1000 + 2*W04T4.ySigma/1000, tAxis, 'k-.')
plot(W04T4.yMin/1000, tAxis, 'k:')
plot(W04T4.yCentroid/1000 - W04T4.ySigma/1000, tAxis, 'k-.')
% plot(W04T4.yCentroid/1000 - 2*W04T4.ySigma/1000, tAxis, 'k-.')
plot(W04T4.yMax/1000, tAxis, 'k:')
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
xticks([0.5:1:8.5])
xlim([0 8.5])
yticks([0:6:36])
grid on
text(6, 33.2, 'W0.4T4.0')

nexttile
imagesc(yAxis, tAxis, W04T6.yVol, [-dttColorMapMaxY dttColorMapMaxY])
hold on
plot(W04T6.yCentroid/1000, tAxis, 'k--')
plot(W04T6.yCentroid/1000 + W04T6.ySigma/1000, tAxis, 'k-.')
% plot(W04T6.yCentroid/1000 + 2*W04T6.ySigma/1000, tAxis, 'k-.')
plot(W04T6.yMin/1000, tAxis, 'k:')
plot(W04T6.yCentroid/1000 - W04T6.ySigma/1000, tAxis, 'k-.')
% plot(W04T6.yCentroid/1000 - 2*W04T6.ySigma/1000, tAxis, 'k-.')
plot(W04T6.yMax/1000, tAxis, 'k:')
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
xticks([0.5:1:8.5])
xlim([0 8.5])
yticks([0:6:36])
grid on
text(6, 33.2, 'W0.4T6.0')

nexttile
imagesc(yAxis, tAxis, W08T0.yVol, [-dttColorMapMaxY dttColorMapMaxY])
hold on
plot(W08T0.yCentroid/1000, tAxis, 'k--')
plot(W08T0.yCentroid/1000 + W08T0.ySigma/1000, tAxis, 'k-.')
% plot(W08T0.yCentroid/1000 + 2*W08T0.ySigma/1000, tAxis, 'k-.')
plot(W08T0.yMin/1000, tAxis, 'k:')
plot(W08T0.yCentroid/1000 - W08T0.ySigma/1000, tAxis, 'k-.')
% plot(W08T0.yCentroid/1000 - 2*W08T0.ySigma/1000, tAxis, 'k-.')
plot(W08T0.yMax/1000, tAxis, 'k:')
set(gca, 'xticklabel', '', 'yDir', 'Normal')
xticks([0.5:1:8.5])
xlim([0 8.5])
yticks([0:6:36])
grid on
text(6, 33.2, 'W0.8T0.0')

nexttile
imagesc(yAxis, tAxis, W08T1.yVol, [-dttColorMapMaxY dttColorMapMaxY])
hold on
plot(W08T1.yCentroid/1000, tAxis, 'k--')
plot(W08T1.yCentroid/1000 + W08T1.ySigma/1000, tAxis, 'k-.')
% plot(W08T1.yCentroid/1000 + 2*W08T1.ySigma/1000, tAxis, 'k-.')
plot(W08T1.yMin/1000, tAxis, 'k:')
plot(W08T1.yCentroid/1000 - W08T1.ySigma/1000, tAxis, 'k-.')
% plot(W08T1.yCentroid/1000 - 2*W08T1.ySigma/1000, tAxis, 'k-.')
plot(W08T1.yMax/1000, tAxis, 'k:')
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
xticks([0.5:1:8.5])
xlim([0 8.5])
yticks([0:6:36])
grid on
text(6, 33.2, 'W0.8T1.0')

nexttile
imagesc(yAxis, tAxis, W08T2.yVol, [-dttColorMapMaxY dttColorMapMaxY])
hold on
plot(W08T2.yCentroid/1000, tAxis, 'k--')
plot(W08T2.yCentroid/1000 + W08T2.ySigma/1000, tAxis, 'k-.')
% plot(W08T2.yCentroid/1000 + 2*W08T2.ySigma/1000, tAxis, 'k-.')
plot(W08T2.yMin/1000, tAxis, 'k:')
plot(W08T2.yCentroid/1000 - W08T2.ySigma/1000, tAxis, 'k-.')
% plot(W08T2.yCentroid/1000 - 2*W08T2.ySigma/1000, tAxis, 'k-.')
plot(W08T2.yMax/1000, tAxis, 'k:')
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
xticks([0.5:1:8.5])
xlim([0 8.5])
yticks([0:6:36])
grid on
text(6, 33.2, 'W0.8T2.0')

nexttile
imagesc(yAxis, tAxis, W08T4.yVol, [-dttColorMapMaxY dttColorMapMaxY])
hold on
plot(W08T4.yCentroid/1000, tAxis, 'k--')
plot(W08T4.yCentroid/1000 + W08T4.ySigma/1000, tAxis, 'k-.')
% plot(W08T4.yCentroid/1000 + 2*W08T4.ySigma/1000, tAxis, 'k-.')
plot(W08T4.yMin/1000, tAxis, 'k:')
plot(W08T4.yCentroid/1000 - W08T4.ySigma/1000, tAxis, 'k-.')
% plot(W08T4.yCentroid/1000 - 2*W08T4.ySigma/1000, tAxis, 'k-.')
plot(W08T4.yMax/1000, tAxis, 'k:')
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
xticks([0.5:1:8.5])
xlim([0 8.5])
yticks([0:6:36])
grid on
text(6, 33.2, 'W0.8T4.0')

nexttile
imagesc(yAxis, tAxis, W08T6.yVol, [-dttColorMapMaxY dttColorMapMaxY])
hold on
plot(W08T6.yCentroid/1000, tAxis, 'k--')
plot(W08T6.yCentroid/1000 + W08T6.ySigma/1000, tAxis, 'k-.')
% plot(W08T6.yCentroid/1000 + 2*W08T6.ySigma/1000, tAxis, 'k-.')
plot(W08T6.yMin/1000, tAxis, 'k:')
plot(W08T6.yCentroid/1000 - W08T6.ySigma/1000, tAxis, 'k-.')
% plot(W08T6.yCentroid/1000 - 2*W08T6.ySigma/1000, tAxis, 'k-.')
plot(W08T6.yMax/1000, tAxis, 'k:')
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
xticks([0.5:1:8.5])
xlim([0 8.5])
yticks([0:6:36])
grid on
text(6, 33.2, 'W0.8T6.0')

nexttile
imagesc(yAxis, tAxis, W12T0.yVol, [-dttColorMapMaxY dttColorMapMaxY])
hold on
plot(W12T0.yCentroid/1000, tAxis, 'k--')
plot(W12T0.yCentroid/1000 + W12T0.ySigma/1000, tAxis, 'k-.')
% plot(W12T0.yCentroid/1000 + 2*W12T0.ySigma/1000, tAxis, 'k-.')
plot(W12T0.yMin/1000, tAxis, 'k:')
plot(W12T0.yCentroid/1000 - W12T0.ySigma/1000, tAxis, 'k-.')
% plot(W12T0.yCentroid/1000 - 2*W12T0.ySigma/1000, tAxis, 'k-.')
plot(W12T0.yMax/1000, tAxis, 'k:')
set(gca, 'xticklabel', '', 'yDir', 'Normal')
xticks([0.5:1:8.5])
xlim([0 8.5])
yticks([0:6:36])
grid on
text(6, 33.2, 'W1.2T0.0')

nexttile
imagesc(yAxis, tAxis, W12T1.yVol, [-dttColorMapMaxY dttColorMapMaxY])
hold on
plot(W12T1.yCentroid/1000, tAxis, 'k--')
plot(W12T1.yCentroid/1000 + W12T1.ySigma/1000, tAxis, 'k-.')
% plot(W12T1.yCentroid/1000 + 2*W12T1.ySigma/1000, tAxis, 'k-.')
plot(W12T1.yMin/1000, tAxis, 'k:')
plot(W12T1.yCentroid/1000 - W12T1.ySigma/1000, tAxis, 'k-.')
% plot(W12T1.yCentroid/1000 - 2*W12T1.ySigma/1000, tAxis, 'k-.')
plot(W12T1.yMax/1000, tAxis, 'k:')
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
xticks([0.5:1:8.5])
xlim([0 8.5])
yticks([0:6:36])
grid on
text(6, 33.2, 'W1.2T1.0')

nexttile
imagesc(yAxis, tAxis, W12T2.yVol, [-dttColorMapMaxY dttColorMapMaxY])
hold on
plot(W12T2.yCentroid/1000, tAxis, 'k--')
plot(W12T2.yCentroid/1000 + W12T2.ySigma/1000, tAxis, 'k-.')
% plot(W12T2.yCentroid/1000 + 2*W12T2.ySigma/1000, tAxis, 'k-.')
plot(W12T2.yMin/1000, tAxis, 'k:')
plot(W12T2.yCentroid/1000 - W12T2.ySigma/1000, tAxis, 'k-.')
% plot(W12T2.yCentroid/1000 - 2*W12T2.ySigma/1000, tAxis, 'k-.')
plot(W12T2.yMax/1000, tAxis, 'k:')
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
xticks([0.5:1:8.5])
xlim([0 8.5])
yticks([0:6:36])
grid on
text(6, 33.2, 'W1.2T2.0')

nexttile
imagesc(yAxis, tAxis, W12T4.yVol, [-dttColorMapMaxY dttColorMapMaxY])
hold on
plot(W12T4.yCentroid/1000, tAxis, 'k--')
plot(W12T4.yCentroid/1000 + W12T4.ySigma/1000, tAxis, 'k-.')
% plot(W12T4.yCentroid/1000 + 2*W12T4.ySigma/1000, tAxis, 'k-.')
plot(W12T4.yMin/1000, tAxis, 'k:')
plot(W12T4.yCentroid/1000 - W12T4.ySigma/1000, tAxis, 'k-.')
% plot(W12T4.yCentroid/1000 - 2*W12T4.ySigma/1000, tAxis, 'k-.')
plot(W12T4.yMax/1000, tAxis, 'k:')
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
xticks([0.5:1:8.5])
xlim([0 8.5])
yticks([0:6:36])
grid on
text(6, 33.2, 'W1.2T4.0')

nexttile
imagesc(yAxis, tAxis, W12T6.yVol, [-dttColorMapMaxY dttColorMapMaxY])
hold on
plot(W12T6.yCentroid/1000, tAxis, 'k--')
plot(W12T6.yCentroid/1000 + W12T6.ySigma/1000, tAxis, 'k-.')
% plot(W12T6.yCentroid/1000 + 2*W12T6.ySigma/1000, tAxis, 'k-.')
plot(W12T6.yMin/1000, tAxis, 'k:')
plot(W12T6.yCentroid/1000 - W12T6.ySigma/1000, tAxis, 'k-.')
% plot(W12T6.yCentroid/1000 - 2*W12T6.ySigma/1000, tAxis, 'k-.')
plot(W12T6.yMax/1000, tAxis, 'k:')
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
xticks([0.5:1:8.5])
xlim([0 8.5])
yticks([0:6:36])
grid on
text(6, 33.2, 'W1.2T6.0')

nexttile
imagesc(yAxis, tAxis, W16T0.yVol, [-dttColorMapMaxY dttColorMapMaxY])
hold on
plot(W16T0.yCentroid/1000, tAxis, 'k--')
plot(W16T0.yCentroid/1000 + W16T0.ySigma/1000, tAxis, 'k-.')
% plot(W16T0.yCentroid/1000 + 2*W16T0.ySigma/1000, tAxis, 'k-.')
plot(W16T0.yMin/1000, tAxis, 'k:')
plot(W16T0.yCentroid/1000 - W16T0.ySigma/1000, tAxis, 'k-.')
% plot(W16T0.yCentroid/1000 - 2*W16T0.ySigma/1000, tAxis, 'k-.')
plot(W16T0.yMax/1000, tAxis, 'k:')
set(gca, 'xticklabel', '', 'yDir', 'Normal')
xticks([0.5:1:8.5])
xlim([0 8.5])
yticks([0:6:36])
grid on
text(6, 33.2, 'W1.6T0.0')

nexttile
imagesc(yAxis, tAxis, W16T1.yVol, [-dttColorMapMaxY dttColorMapMaxY])
hold on
plot(W16T1.yCentroid/1000, tAxis, 'k--')
plot(W16T1.yCentroid/1000 + W16T1.ySigma/1000, tAxis, 'k-.')
% plot(W16T1.yCentroid/1000 + 2*W16T1.ySigma/1000, tAxis, 'k-.')
plot(W16T1.yMin/1000, tAxis, 'k:')
plot(W16T1.yCentroid/1000 - W16T1.ySigma/1000, tAxis, 'k-.')
% plot(W16T1.yCentroid/1000 - 2*W16T1.ySigma/1000, tAxis, 'k-.')
plot(W16T1.yMax/1000, tAxis, 'k:')
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
xticks([0.5:1:8.5])
xlim([0 8.5])
yticks([0:6:36])
grid on
text(6, 33.2, 'W1.6T1.0')

nexttile
imagesc(yAxis, tAxis, W16T2.yVol, [-dttColorMapMaxY dttColorMapMaxY])
hold on
plot(W16T2.yCentroid/1000, tAxis, 'k--')
plot(W16T2.yCentroid/1000 + W16T2.ySigma/1000, tAxis, 'k-.')
% plot(W16T2.yCentroid/1000 + 2*W16T2.ySigma/1000, tAxis, 'k-.')
plot(W16T2.yMin/1000, tAxis, 'k:')
plot(W16T2.yCentroid/1000 - W16T2.ySigma/1000, tAxis, 'k-.')
% plot(W16T2.yCentroid/1000 - 2*W16T2.ySigma/1000, tAxis, 'k-.')
plot(W16T2.yMax/1000, tAxis, 'k:')
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
xticks([0.5:1:8.5])
xlim([0 8.5])
yticks([0:6:36])
grid on
text(6, 33.2, 'W1.6T2.0')

nexttile
imagesc(yAxis, tAxis, W16T4.yVol, [-dttColorMapMaxY dttColorMapMaxY])
hold on
plot(W16T4.yCentroid/1000, tAxis, 'k--')
plot(W16T4.yCentroid/1000 + W16T4.ySigma/1000, tAxis, 'k-.')
% plot(W16T4.yCentroid/1000 + 2*W16T4.ySigma/1000, tAxis, 'k-.')
plot(W16T4.yMin/1000, tAxis, 'k:')
plot(W16T4.yCentroid/1000 - W16T4.ySigma/1000, tAxis, 'k-.')
% plot(W16T4.yCentroid/1000 - 2*W16T4.ySigma/1000, tAxis, 'k-.')
plot(W16T4.yMax/1000, tAxis, 'k:')
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
xticks([0.5:1:8.5])
xlim([0 8.5])
yticks([0:6:36])
grid on
text(6, 33.2, 'W1.6T4.0')

nexttile
imagesc(yAxis, tAxis, W16T6.yVol, [-dttColorMapMaxY dttColorMapMaxY])
hold on
plot(W16T6.yCentroid/1000, tAxis, 'k--')
plot(W16T6.yCentroid/1000 + W16T6.ySigma/1000, tAxis, 'k-.')
% plot(W16T6.yCentroid/1000 + 2*W16T6.ySigma/1000, tAxis, 'k-.')
plot(W16T6.yMin/1000, tAxis, 'k:')
plot(W16T6.yCentroid/1000 - W16T6.ySigma/1000, tAxis, 'k-.')
% plot(W16T6.yCentroid/1000 - 2*W16T6.ySigma/1000, tAxis, 'k-.')
plot(W16T6.yMax/1000, tAxis, 'k:')
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
xticks([0.5:1:8.5])
xlim([0 8.5])
yticks([0:6:36])
grid on
text(6, 33.2, 'W1.6T6.0')

nexttile
imagesc(yAxis, tAxis, W2T0.yVol, [-dttColorMapMaxY dttColorMapMaxY])
hold on
plot(W2T0.yCentroid/1000, tAxis, 'k--')
plot(W2T0.yCentroid/1000 + W2T0.ySigma/1000, tAxis, 'k-.')
% plot(W2T0.yCentroid/1000 + 2*W2T0.ySigma/1000, tAxis, 'k-.')
plot(W2T0.yMin/1000, tAxis, 'k:')
plot(W2T0.yCentroid/1000 - W2T0.ySigma/1000, tAxis, 'k-.')
% plot(W2T0.yCentroid/1000 - 2*W2T0.ySigma/1000, tAxis, 'k-.')
plot(W2T0.yMax/1000, tAxis, 'k:')
set(gca, 'yDir', 'Normal')
xticks([0.5:1:8.5])
xlim([0 8.5])
xticklabels([1:1:9])
yticks([0:6:36])
grid on
text(6, 33.2, 'W2.0T0.0')

nexttile
imagesc(yAxis, tAxis, W2T1.yVol, [-dttColorMapMaxY dttColorMapMaxY])
hold on
plot(W2T1.yCentroid/1000, tAxis, 'k--')
plot(W2T1.yCentroid/1000 + W2T1.ySigma/1000, tAxis, 'k-.')
% plot(W2T1.yCentroid/1000 + 2*W2T1.ySigma/1000, tAxis, 'k-.')
plot(W2T1.yMin/1000, tAxis, 'k:')
plot(W2T1.yCentroid/1000 - W2T1.ySigma/1000, tAxis, 'k-.')
% plot(W2T1.yCentroid/1000 - 2*W2T1.ySigma/1000, tAxis, 'k-.')
plot(W2T1.yMax/1000, tAxis, 'k:')
set(gca, 'yticklabel', '', 'yDir', 'Normal')
xticks([0.5:1:8.5])
xlim([0 8.5])
xticklabels([1:1:9])
yticks([0:6:36])
grid on
text(6, 33.2, 'W2.0T1.0')

nexttile
imagesc(yAxis, tAxis, W2T2.yVol, [-dttColorMapMaxY dttColorMapMaxY])
hold on
plot(W2T2.yCentroid/1000, tAxis, 'k--')
plot(W2T2.yCentroid/1000 + W2T2.ySigma/1000, tAxis, 'k-.')
% plot(W2T2.yCentroid/1000 + 2*W2T2.ySigma/1000, tAxis, 'k-.')
plot(W2T2.yMin/1000, tAxis, 'k:')
plot(W2T2.yCentroid/1000 - W2T2.ySigma/1000, tAxis, 'k-.')
% plot(W2T2.yCentroid/1000 - 2*W2T2.ySigma/1000, tAxis, 'k-.')
plot(W2T2.yMax/1000, tAxis, 'k:')
set(gca, 'yticklabel', '', 'yDir', 'Normal')
xticks([0.5:1:8.5])
xlim([0 8.5])
xticklabels([1:1:9])
yticks([0:6:36])
grid on
text(6, 33.2, 'W2.0T2.0')

nexttile
imagesc(yAxis, tAxis, W2T4.yVol, [-dttColorMapMaxY dttColorMapMaxY])
hold on
plot(W2T4.yCentroid/1000, tAxis, 'k--')
plot(W2T4.yCentroid/1000 + W2T4.ySigma/1000, tAxis, 'k-.')
% plot(W2T4.yCentroid/1000 + 2*W2T4.ySigma/1000, tAxis, 'k-.')
plot(W2T4.yMin/1000, tAxis, 'k:')
plot(W2T4.yCentroid/1000 - W2T4.ySigma/1000, tAxis, 'k-.')
% plot(W2T4.yCentroid/1000 - 2*W2T4.ySigma/1000, tAxis, 'k-.')
plot(W2T4.yMax/1000, tAxis, 'k:')
set(gca, 'yticklabel', '', 'yDir', 'Normal')
xticks([0.5:1:8.5])
xlim([0 8.5])
xticklabels([1:1:9])
yticks([0:6:36])
grid on
text(6, 33.2, 'W2.0T4.0')

nexttile
imagesc(yAxis, tAxis, W2T6.yVol, [-dttColorMapMaxY dttColorMapMaxY])
hold on
plot(W2T6.yCentroid/1000, tAxis, 'k--')
plot(W2T6.yCentroid/1000 + W2T6.ySigma/1000, tAxis, 'k-.')
% plot(W2T6.yCentroid/1000 + 2*W2T6.ySigma/1000, tAxis, 'k-.')
plot(W2T6.yMin/1000, tAxis, 'k:')
plot(W2T6.yCentroid/1000 - W2T6.ySigma/1000, tAxis, 'k-.')
% plot(W2T6.yCentroid/1000 - 2*W2T6.ySigma/1000, tAxis, 'k-.')
plot(W2T6.yMax/1000, tAxis, 'k:')
set(gca, 'yticklabel', '', 'yDir', 'Normal')
xticks([0.5:1:8.5])
xlim([0 8.5])
xticklabels([1:1:9])
yticks([0:6:36])
grid on
text(6, 33.2, 'W2.0T6.0')

colormap(dttColorMap3)
cy = colorbar;
cy.Layout.Tile = 'east';
cy.Label.String = 'Net volume change per meter [m^3 m^{-1}]';
cy.FontSize = 10;
cy.TickLabels = {'-8\cdot10^4', '-6\cdot10^4', '-4\cdot10^4', '-2\cdot10^4', '0', '2\cdot10^4', '4\cdot10^4', '6\cdot10^4', '8\cdot10^4'};

% z
dttSedimentSpreadingMultiPlot_allZ = figure(2202);
dttSedimentSpreadingMultiPlot_allZ.Position = [100 100 1280 920];
clf reset
multiTile_allZ = tiledlayout(6, 5);
multiTile_allZ.Padding = 'compact';
multiTile_allZ.TileSpacing = 'none';
xlabel(multiTile_allZ, '{\itt} [yr]', 'FontSize', 16)
ylabel(multiTile_allZ, '{\itz} [m]', 'FontSize', 16)

nexttile
imagesc(zAxis, tAxis, W0T0.zVol, [-dttColorMapMaxZ dttColorMapMaxZ])
view(90, 90)
xlim([-5 10])
hold on
plot(W0T0.zCentroid, tAxis, 'k--')
plot(W0T0.zCentroid + W0T0.zSigma, tAxis, 'k-.')
% plot(W0T0.zCentroid + 2*W0T0.zSigma, tAxis, 'k-.')
plot(W0T0.zMin, tAxis, 'k:');
plot(W0T0.zCentroid - W0T0.zSigma, tAxis, 'k-.')
% plot(W0T0.zCentroid - 2*W0T0.zSigma, tAxis, 'k-.')
plot(W0T0.zMax, tAxis, 'k:');
xline(0, '-', 'Color', [0 0.3 0.6])
xticks([-12:4:12])
xticklabels([12:-4:-12])
yticks([0:6:36])
set(gca, 'yticklabel', '', 'yDir', 'Normal')
grid on
text(-4, 1, 'W0.0T0.0')

nexttile
imagesc(zAxis, tAxis, W0T1.zVol, [-dttColorMapMaxZ dttColorMapMaxZ])
view(90, 90)
xlim([-5 10])
hold on
plot(W0T1.zCentroid, tAxis, 'k--')
plot(W0T1.zCentroid + W0T1.zSigma, tAxis, 'k-.')
% plot(W0T1.zCentroid + 2*W0T1.zSigma, tAxis, 'k-.')
plot(W0T1.zMin, tAxis, 'k:');
plot(W0T1.zCentroid - W0T1.zSigma, tAxis, 'k-.')
% plot(W0T1.zCentroid - 2*W0T1.zSigma, tAxis, 'k-.')
plot(W0T1.zMax, tAxis, 'k:');
xline(0.5, '-', 'Color', [0 0.3 0.6])
xline(-0.5, '-', 'Color', [0 0.3 0.6])
xticks([-12:4:12])
yticks([0:6:36])
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
grid on
text(-4, 1, 'W0.0T1.0')

nexttile
imagesc(zAxis, tAxis, W0T2.zVol, [-dttColorMapMaxZ dttColorMapMaxZ])
view(90, 90)
xlim([-5 10])
hold on
plot(W0T2.zCentroid, tAxis, 'k--')
plot(W0T2.zCentroid + W0T2.zSigma, tAxis, 'k-.')
% plot(W0T2.zCentroid + 2*W0T2.zSigma, tAxis, 'k-.')
plot(W0T2.zMin, tAxis, 'k:');
plot(W0T2.zCentroid - W0T2.zSigma, tAxis, 'k-.')
% plot(W0T2.zCentroid - 2*W0T2.zSigma, tAxis, 'k-.')
plot(W0T2.zMax, tAxis, 'k:');
xline(1, '-', 'Color', [0 0.3 0.6])
xline(-1, '-', 'Color', [0 0.3 0.6])
xticks([-12:4:12])
yticks([0:6:36])
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
grid on
text(-4, 1, 'W0.0T2.0')

nexttile
imagesc(zAxis, tAxis, W0T4.zVol, [-dttColorMapMaxZ dttColorMapMaxZ])
view(90, 90)
xlim([-5 10])
hold on
plot(W0T4.zCentroid, tAxis, 'k--')
plot(W0T4.zCentroid + W0T4.zSigma, tAxis, 'k-.')
% plot(W0T4.zCentroid + 2*W0T4.zSigma, tAxis, 'k-.')
plot(W0T4.zMin, tAxis, 'k:');
plot(W0T4.zCentroid - W0T4.zSigma, tAxis, 'k-.')
% plot(W0T4.zCentroid - 2*W0T4.zSigma, tAxis, 'k-.')
plot(W0T4.zMax, tAxis, 'k:');
xline(2, '-', 'Color', [0 0.3 0.6])
xline(-2, '-', 'Color', [0 0.3 0.6])
xticks([-12:4:12])
yticks([0:6:36])
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
grid on
text(-4, 1, 'W0.0T4.0')

nexttile
imagesc(zAxis, tAxis, W0T6.zVol, [-dttColorMapMaxZ dttColorMapMaxZ])
view(90, 90)
xlim([-5 10])
hold on
plot(W0T6.zCentroid, tAxis, 'k--')
plot(W0T6.zCentroid + W0T6.zSigma, tAxis, 'k-.')
% plot(W0T6.zCentroid + 2*W0T6.zSigma, tAxis, 'k-.')
plot(W0T6.zMin, tAxis, 'k:');
plot(W0T6.zCentroid - W0T6.zSigma, tAxis, 'k-.')
% plot(W0T6.zCentroid - 2*W0T6.zSigma, tAxis, 'k-.')
plot(W0T6.zMax, tAxis, 'k:');
xline(3, '-', 'Color', [0 0.3 0.6])
xline(-3, '-', 'Color', [0 0.3 0.6])
xticks([-12:4:12])
yticks([0:6:36])
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
grid on
text(-4, 1, 'W0.0T6.0')

nexttile
imagesc(zAxis, tAxis, W04T0.zVol, [-dttColorMapMaxZ dttColorMapMaxZ])
view(90, 90)
xlim([-5 10])
hold on
plot(W04T0.zCentroid, tAxis, 'k--')
plot(W04T0.zCentroid + W04T0.zSigma, tAxis, 'k-.')
% plot(W04T0.zCentroid + 2*W04T0.zSigma, tAxis, 'k-.')
plot(W04T0.zMin, tAxis, 'k:');
plot(W04T0.zCentroid - W04T0.zSigma, tAxis, 'k-.')
% plot(W04T0.zCentroid - 2*W04T0.zSigma, tAxis, 'k-.')
plot(W04T0.zMax, tAxis, 'k:');
xline(0, '-', 'Color', [0 0.3 0.6])
xticks([-12:4:12])
xticklabels([12:-4:-12])
yticks([0:6:36])
set(gca, 'yticklabel', '', 'yDir', 'Normal')
grid on
text(-4, 1, 'W0.4T0.0')

nexttile
imagesc(zAxis, tAxis, W04T1.zVol, [-dttColorMapMaxZ dttColorMapMaxZ])
view(90, 90)
xlim([-5 10])
hold on
plot(W04T1.zCentroid, tAxis, 'k--')
plot(W04T1.zCentroid + W04T1.zSigma, tAxis, 'k-.')
% plot(W04T1.zCentroid + 2*W04T1.zSigma, tAxis, 'k-.')
plot(W04T1.zMin, tAxis, 'k:');
plot(W04T1.zCentroid - W04T1.zSigma, tAxis, 'k-.')
% plot(W04T1.zCentroid - 2*W04T1.zSigma, tAxis, 'k-.')
plot(W04T1.zMax, tAxis, 'k:');
xline(0.5, '-', 'Color', [0 0.3 0.6])
xline(-0.5, '-', 'Color', [0 0.3 0.6])
xticks([-12:4:12])
yticks([0:6:36])
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
grid on
text(-4, 1, 'W0.4T1.0')

nexttile
imagesc(zAxis, tAxis, W04T2.zVol, [-dttColorMapMaxZ dttColorMapMaxZ])
view(90, 90)
xlim([-5 10])
hold on
plot(W04T2.zCentroid, tAxis, 'k--')
plot(W04T2.zCentroid + W04T2.zSigma, tAxis, 'k-.')
% plot(W04T2.zCentroid + 2*W04T2.zSigma, tAxis, 'k-.')
plot(W04T2.zMin, tAxis, 'k:');
plot(W04T2.zCentroid - W04T2.zSigma, tAxis, 'k-.')
% plot(W04T2.zCentroid - 2*W04T2.zSigma, tAxis, 'k-.')
plot(W04T2.zMax, tAxis, 'k:');
xline(1, '-', 'Color', [0 0.3 0.6])
xline(-1, '-', 'Color', [0 0.3 0.6])
xticks([-12:4:12])
yticks([0:6:36])
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
grid on
text(-4, 1, 'W0.4T2.0')

nexttile
imagesc(zAxis, tAxis, W04T4.zVol, [-dttColorMapMaxZ dttColorMapMaxZ])
view(90, 90)
xlim([-5 10])
hold on
plot(W04T4.zCentroid, tAxis, 'k--')
plot(W04T4.zCentroid + W04T4.zSigma, tAxis, 'k-.')
% plot(W04T4.zCentroid + 2*W04T4.zSigma, tAxis, 'k-.')
plot(W04T4.zMin, tAxis, 'k:');
plot(W04T4.zCentroid - W04T4.zSigma, tAxis, 'k-.')
% plot(W04T4.zCentroid - 2*W04T4.zSigma, tAxis, 'k-.')
plot(W04T4.zMax, tAxis, 'k:');
xline(2, '-', 'Color', [0 0.3 0.6])
xline(-2, '-', 'Color', [0 0.3 0.6])
xticks([-12:4:12])
yticks([0:6:36])
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
grid on
text(-4, 1, 'W0.4T4.0')

nexttile
imagesc(zAxis, tAxis, W04T6.zVol, [-dttColorMapMaxZ dttColorMapMaxZ])
view(90, 90)
xlim([-5 10])
hold on
plot(W04T6.zCentroid, tAxis, 'k--')
plot(W04T6.zCentroid + W04T6.zSigma, tAxis, 'k-.')
% plot(W04T6.zCentroid + 2*W04T6.zSigma, tAxis, 'k-.')
plot(W04T6.zMin, tAxis, 'k:');
plot(W04T6.zCentroid - W04T6.zSigma, tAxis, 'k-.')
% plot(W04T6.zCentroid - 2*W04T6.zSigma, tAxis, 'k-.')
plot(W04T6.zMax, tAxis, 'k:');
xline(3, '-', 'Color', [0 0.3 0.6])
xline(-3, '-', 'Color', [0 0.3 0.6])
xticks([-12:4:12])
yticks([0:6:36])
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
grid on
text(-4, 1, 'W0.4T6.0')

nexttile
imagesc(zAxis, tAxis, W08T0.zVol, [-dttColorMapMaxZ dttColorMapMaxZ])
view(90, 90)
xlim([-5 10])
hold on
plot(W08T0.zCentroid, tAxis, 'k--')
plot(W08T0.zCentroid + W08T0.zSigma, tAxis, 'k-.')
% plot(W08T0.zCentroid + 2*W08T0.zSigma, tAxis, 'k-.')
plot(W08T0.zMin, tAxis, 'k:');
plot(W08T0.zCentroid - W08T0.zSigma, tAxis, 'k-.')
% plot(W08T0.zCentroid - 2*W08T0.zSigma, tAxis, 'k-.')
plot(W08T0.zMax, tAxis, 'k:');
xline(0, '-', 'Color', [0 0.3 0.6])
xticks([-12:4:12])
xticklabels([12:-4:-12])
yticks([0:6:36])
set(gca, 'yticklabel', '', 'yDir', 'Normal')
grid on
text(-4, 1, 'W0.8T0.0')

nexttile
imagesc(zAxis, tAxis, W08T1.zVol, [-dttColorMapMaxZ dttColorMapMaxZ])
view(90, 90)
xlim([-5 10])
hold on
plot(W08T1.zCentroid, tAxis, 'k--')
plot(W08T1.zCentroid + W08T1.zSigma, tAxis, 'k-.')
% plot(W08T1.zCentroid + 2*W08T1.zSigma, tAxis, 'k-.')
plot(W08T1.zMin, tAxis, 'k:');
plot(W08T1.zCentroid - W08T1.zSigma, tAxis, 'k-.')
% plot(W08T1.zCentroid - 2*W08T1.zSigma, tAxis, 'k-.')
plot(W08T1.zMax, tAxis, 'k:');
xline(0.5, '-', 'Color', [0 0.3 0.6])
xline(-0.5, '-', 'Color', [0 0.3 0.6])
xticks([-12:4:12])
yticks([0:6:36])
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
grid on
text(-4, 1, 'W0.8T1.0')

nexttile
imagesc(zAxis, tAxis, W08T2.zVol, [-dttColorMapMaxZ dttColorMapMaxZ])
view(90, 90)
xlim([-5 10])
hold on
plot(W08T2.zCentroid, tAxis, 'k--')
plot(W08T2.zCentroid + W08T2.zSigma, tAxis, 'k-.')
% plot(W08T2.zCentroid + 2*W08T2.zSigma, tAxis, 'k-.')
plot(W08T2.zMin, tAxis, 'k:');
plot(W08T2.zCentroid - W08T2.zSigma, tAxis, 'k-.')
% plot(W08T2.zCentroid - 2*W08T2.zSigma, tAxis, 'k-.')
plot(W08T2.zMax, tAxis, 'k:');
xline(1, '-', 'Color', [0 0.3 0.6])
xline(-1, '-', 'Color', [0 0.3 0.6])
xticks([-12:4:12])
yticks([0:6:36])
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
grid on
text(-4, 1, 'W0.8T2.0')

nexttile
imagesc(zAxis, tAxis, W08T4.zVol, [-dttColorMapMaxZ dttColorMapMaxZ])
view(90, 90)
xlim([-5 10])
hold on
plot(W08T4.zCentroid, tAxis, 'k--')
plot(W08T4.zCentroid + W08T4.zSigma, tAxis, 'k-.')
% plot(W08T4.zCentroid + 2*W08T4.zSigma, tAxis, 'k-.')
plot(W08T4.zMin, tAxis, 'k:');
plot(W08T4.zCentroid - W08T4.zSigma, tAxis, 'k-.')
% plot(W08T4.zCentroid - 2*W08T4.zSigma, tAxis, 'k-.')
plot(W08T4.zMax, tAxis, 'k:');
xline(2, '-', 'Color', [0 0.3 0.6])
xline(-2, '-', 'Color', [0 0.3 0.6])
xticks([-12:4:12])
yticks([0:6:36])
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
grid on
text(-4, 1, 'W0.8T4.0')

nexttile
imagesc(zAxis, tAxis, W08T6.zVol, [-dttColorMapMaxZ dttColorMapMaxZ])
view(90, 90)
xlim([-5 10])
hold on
plot(W08T6.zCentroid, tAxis, 'k--')
plot(W08T6.zCentroid + W08T6.zSigma, tAxis, 'k-.')
% plot(W08T6.zCentroid + 2*W08T6.zSigma, tAxis, 'k-.')
plot(W08T6.zMin, tAxis, 'k:');
plot(W08T6.zCentroid - W08T6.zSigma, tAxis, 'k-.')
% plot(W08T6.zCentroid - 2*W08T6.zSigma, tAxis, 'k-.')
plot(W08T6.zMax, tAxis, 'k:');
xline(3, '-', 'Color', [0 0.3 0.6])
xline(-3, '-', 'Color', [0 0.3 0.6])
xticks([-12:4:12])
yticks([0:6:36])
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
grid on
text(-4, 1, 'W0.8T6.0')

nexttile
imagesc(zAxis, tAxis, W12T0.zVol, [-dttColorMapMaxZ dttColorMapMaxZ])
view(90, 90)
xlim([-5 10])
hold on
plot(W12T0.zCentroid, tAxis, 'k--')
plot(W12T0.zCentroid + W12T0.zSigma, tAxis, 'k-.')
% plot(W12T0.zCentroid + 2*W12T0.zSigma, tAxis, 'k-.')
plot(W12T0.zMin, tAxis, 'k:');
plot(W12T0.zCentroid - W12T0.zSigma, tAxis, 'k-.')
% plot(W12T0.zCentroid - 2*W12T0.zSigma, tAxis, 'k-.')
plot(W12T0.zMax, tAxis, 'k:');
xline(0, '-', 'Color', [0 0.3 0.6])
xticks([-12:4:12])
xticklabels([12:-4:-12])
yticks([0:6:36])
set(gca, 'yticklabel', '', 'yDir', 'Normal')
grid on
text(-4, 1, 'W1.2T0.0')

nexttile
imagesc(zAxis, tAxis, W12T1.zVol, [-dttColorMapMaxZ dttColorMapMaxZ])
view(90, 90)
xlim([-5 10])
hold on
plot(W12T1.zCentroid, tAxis, 'k--')
plot(W12T1.zCentroid + W12T1.zSigma, tAxis, 'k-.')
% plot(W12T1.zCentroid + 2*W12T1.zSigma, tAxis, 'k-.')
plot(W12T1.zMin, tAxis, 'k:');
plot(W12T1.zCentroid - W12T1.zSigma, tAxis, 'k-.')
% plot(W12T1.zCentroid - 2*W12T1.zSigma, tAxis, 'k-.')
plot(W12T1.zMax, tAxis, 'k:');
xline(0.5, '-', 'Color', [0 0.3 0.6])
xline(-0.5, '-', 'Color', [0 0.3 0.6])
xticks([-12:4:12])
yticks([0:6:36])
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
grid on
text(-4, 1, 'W1.2T1.0')

nexttile
imagesc(zAxis, tAxis, W12T2.zVol, [-dttColorMapMaxZ dttColorMapMaxZ])
view(90, 90)
xlim([-5 10])
hold on
plot(W12T2.zCentroid, tAxis, 'k--')
plot(W12T2.zCentroid + W12T2.zSigma, tAxis, 'k-.')
% plot(W12T2.zCentroid + 2*W12T2.zSigma, tAxis, 'k-.')
plot(W12T2.zMin, tAxis, 'k:');
plot(W12T2.zCentroid - W12T2.zSigma, tAxis, 'k-.')
% plot(W12T2.zCentroid - 2*W12T2.zSigma, tAxis, 'k-.')
plot(W12T2.zMax, tAxis, 'k:');
xline(1, '-', 'Color', [0 0.3 0.6])
xline(-1, '-', 'Color', [0 0.3 0.6])
xticks([-12:4:12])
yticks([0:6:36])
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
grid on
text(-4, 1, 'W1.2T2.0')

nexttile
imagesc(zAxis, tAxis, W12T4.zVol, [-dttColorMapMaxZ dttColorMapMaxZ])
view(90, 90)
xlim([-5 10])
hold on
plot(W12T4.zCentroid, tAxis, 'k--')
plot(W12T4.zCentroid + W12T4.zSigma, tAxis, 'k-.')
% plot(W12T4.zCentroid + 2*W12T4.zSigma, tAxis, 'k-.')
plot(W12T4.zMin, tAxis, 'k:');
plot(W12T4.zCentroid - W12T4.zSigma, tAxis, 'k-.')
% plot(W12T4.zCentroid - 2*W12T4.zSigma, tAxis, 'k-.')
plot(W12T4.zMax, tAxis, 'k:');
xline(2, '-', 'Color', [0 0.3 0.6])
xline(-2, '-', 'Color', [0 0.3 0.6])
xticks([-12:4:12])
yticks([0:6:36])
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
grid on
text(-4, 1, 'W1.2T4.0')

nexttile
imagesc(zAxis, tAxis, W12T6.zVol, [-dttColorMapMaxZ dttColorMapMaxZ])
view(90, 90)
xlim([-5 10])
hold on
plot(W12T6.zCentroid, tAxis, 'k--')
plot(W12T6.zCentroid + W12T6.zSigma, tAxis, 'k-.')
% plot(W12T6.zCentroid + 2*W12T6.zSigma, tAxis, 'k-.')
plot(W12T6.zMin, tAxis, 'k:');
plot(W12T6.zCentroid - W12T6.zSigma, tAxis, 'k-.')
% plot(W12T6.zCentroid - 2*W12T6.zSigma, tAxis, 'k-.')
plot(W12T6.zMax, tAxis, 'k:');
xline(3, '-', 'Color', [0 0.3 0.6])
xline(-3, '-', 'Color', [0 0.3 0.6])
xticks([-12:4:12])
yticks([0:6:36])
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
grid on
text(-4, 1, 'W1.2T6.0')

nexttile
imagesc(zAxis, tAxis, W16T0.zVol, [-dttColorMapMaxZ dttColorMapMaxZ])
view(90, 90)
xlim([-5 10])
hold on
plot(W16T0.zCentroid, tAxis, 'k--')
plot(W16T0.zCentroid + W16T0.zSigma, tAxis, 'k-.')
% plot(W16T0.zCentroid + 2*W16T0.zSigma, tAxis, 'k-.')
plot(W16T0.zMin, tAxis, 'k:');
plot(W16T0.zCentroid - W16T0.zSigma, tAxis, 'k-.')
% plot(W16T0.zCentroid - 2*W16T0.zSigma, tAxis, 'k-.')
plot(W16T0.zMax, tAxis, 'k:');
xline(0, '-', 'Color', [0 0.3 0.6])
xticks([-12:4:12])
xticklabels([12:-4:-12])
yticks([0:6:36])
set(gca, 'yticklabel', '', 'yDir', 'Normal')
grid on
text(-4, 1, 'W1.6T0.0')

nexttile
imagesc(zAxis, tAxis, W16T1.zVol, [-dttColorMapMaxZ dttColorMapMaxZ])
view(90, 90)
xlim([-5 10])
hold on
plot(W16T1.zCentroid, tAxis, 'k--')
plot(W16T1.zCentroid + W16T1.zSigma, tAxis, 'k-.')
% plot(W16T1.zCentroid + 2*W16T1.zSigma, tAxis, 'k-.')
plot(W16T1.zMin, tAxis, 'k:');
plot(W16T1.zCentroid - W16T1.zSigma, tAxis, 'k-.')
% plot(W16T1.zCentroid - 2*W16T1.zSigma, tAxis, 'k-.')
plot(W16T1.zMax, tAxis, 'k:');
xline(0.5, '-', 'Color', [0 0.3 0.6])
xline(-0.5, '-', 'Color', [0 0.3 0.6])
xticks([-12:4:12])
yticks([0:6:36])
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
grid on
text(-4, 1, 'W1.6T1.0')

nexttile
imagesc(zAxis, tAxis, W16T2.zVol, [-dttColorMapMaxZ dttColorMapMaxZ])
view(90, 90)
xlim([-5 10])
hold on
plot(W16T2.zCentroid, tAxis, 'k--')
plot(W16T2.zCentroid + W16T2.zSigma, tAxis, 'k-.')
% plot(W16T2.zCentroid + 2*W16T2.zSigma, tAxis, 'k-.')
plot(W16T2.zMin, tAxis, 'k:');
plot(W16T2.zCentroid - W16T2.zSigma, tAxis, 'k-.')
% plot(W16T2.zCentroid - 2*W16T2.zSigma, tAxis, 'k-.')
plot(W16T2.zMax, tAxis, 'k:');
xline(1, '-', 'Color', [0 0.3 0.6])
xline(-1, '-', 'Color', [0 0.3 0.6])
xticks([-12:4:12])
yticks([0:6:36])
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
grid on
text(-4, 1, 'W1.6T2.0')

nexttile
imagesc(zAxis, tAxis, W16T4.zVol, [-dttColorMapMaxZ dttColorMapMaxZ])
view(90, 90)
xlim([-5 10])
hold on
plot(W16T4.zCentroid, tAxis, 'k--')
plot(W16T4.zCentroid + W16T4.zSigma, tAxis, 'k-.')
% plot(W16T4.zCentroid + 2*W16T4.zSigma, tAxis, 'k-.')
plot(W16T4.zMin, tAxis, 'k:');
plot(W16T4.zCentroid - W16T4.zSigma, tAxis, 'k-.')
% plot(W16T4.zCentroid - 2*W16T4.zSigma, tAxis, 'k-.')
plot(W16T4.zMax, tAxis, 'k:');
xline(2, '-', 'Color', [0 0.3 0.6])
xline(-2, '-', 'Color', [0 0.3 0.6])
xticks([-12:4:12])
yticks([0:6:36])
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
grid on
text(-4, 1, 'W1.6T4.0')

nexttile
imagesc(zAxis, tAxis, W16T6.zVol, [-dttColorMapMaxZ dttColorMapMaxZ])
view(90, 90)
xlim([-5 10])
hold on
plot(W16T6.zCentroid, tAxis, 'k--')
plot(W16T6.zCentroid + W16T6.zSigma, tAxis, 'k-.')
% plot(W16T6.zCentroid + 2*W16T6.zSigma, tAxis, 'k-.')
plot(W16T6.zMin, tAxis, 'k:');
plot(W16T6.zCentroid - W16T6.zSigma, tAxis, 'k-.')
% plot(W16T6.zCentroid - 2*W16T6.zSigma, tAxis, 'k-.')
plot(W16T6.zMax, tAxis, 'k:');
xline(3, '-', 'Color', [0 0.3 0.6])
xline(-3, '-', 'Color', [0 0.3 0.6])
xticks([-12:4:12])
yticks([0:6:36])
set(gca, 'xticklabel', '', 'yticklabel', '', 'yDir', 'Normal')
grid on
text(-4, 1, 'W1.6T6.0')

nexttile
imagesc(zAxis, tAxis, W2T0.zVol, [-dttColorMapMaxZ dttColorMapMaxZ])
view(90, 90)
xlim([-5 10])
hold on
plot(W2T0.zCentroid, tAxis, 'k--')
plot(W2T0.zCentroid + W2T0.zSigma, tAxis, 'k-.')
% plot(W2T0.zCentroid + 2*W2T0.zSigma, tAxis, 'k-.')
plot(W2T0.zMin, tAxis, 'k:');
plot(W2T0.zCentroid - W2T0.zSigma, tAxis, 'k-.')
% plot(W2T0.zCentroid - 2*W2T0.zSigma, tAxis, 'k-.')
plot(W2T0.zMax, tAxis, 'k:');
xline(0, '-', 'Color', [0 0.3 0.6])
xticks([-12:4:12])
xticklabels([12:-4:-12])
yticks([0:6:36])
set(gca, 'yDir', 'Normal')
grid on
text(-4, 1, 'W2.0T0.0')

nexttile
imagesc(zAxis, tAxis, W2T1.zVol, [-dttColorMapMaxZ dttColorMapMaxZ])
view(90, 90)
xlim([-5 10])
hold on
plot(W2T1.zCentroid, tAxis, 'k--')
plot(W2T1.zCentroid + W2T1.zSigma, tAxis, 'k-.')
% plot(W2T1.zCentroid + 2*W2T1.zSigma, tAxis, 'k-.')
plot(W2T1.zMin, tAxis, 'k:');
plot(W2T1.zCentroid - W2T1.zSigma, tAxis, 'k-.')
% plot(W2T1.zCentroid - 2*W2T1.zSigma, tAxis, 'k-.')
plot(W2T1.zMax, tAxis, 'k:');
xline(0.5, '-', 'Color', [0 0.3 0.6])
xline(-0.5, '-', 'Color', [0 0.3 0.6])
xticks([-12:4:12])
yticks([0:6:36])
set(gca, 'xticklabel', '', 'yDir', 'Normal')
grid on
text(-4, 1, 'W2.0T1.0')

nexttile
imagesc(zAxis, tAxis, W2T2.zVol, [-dttColorMapMaxZ dttColorMapMaxZ])
view(90, 90)
xlim([-5 10])
hold on
plot(W2T2.zCentroid, tAxis, 'k--')
plot(W2T2.zCentroid + W2T2.zSigma, tAxis, 'k-.')
% plot(W2T2.zCentroid + 2*W2T2.zSigma, tAxis, 'k-.')
plot(W2T2.zMin, tAxis, 'k:');
plot(W2T2.zCentroid - W2T2.zSigma, tAxis, 'k-.')
% plot(W2T2.zCentroid - 2*W2T2.zSigma, tAxis, 'k-.')
plot(W2T2.zMax, tAxis, 'k:');
xline(1, '-', 'Color', [0 0.3 0.6])
xline(-1, '-', 'Color', [0 0.3 0.6])
xticks([-12:4:12])
yticks([0:6:36])
set(gca, 'xticklabel', '', 'yDir', 'Normal')
grid on
text(-4, 1, 'W2.0T2.0')

nexttile
imagesc(zAxis, tAxis, W2T4.zVol, [-dttColorMapMaxZ dttColorMapMaxZ])
view(90, 90)
xlim([-5 10])
hold on
plot(W2T4.zCentroid, tAxis, 'k--')
plot(W2T4.zCentroid + W2T4.zSigma, tAxis, 'k-.')
% plot(W2T4.zCentroid + 2*W2T4.zSigma, tAxis, 'k-.')
plot(W2T4.zMin, tAxis, 'k:');
plot(W2T4.zCentroid - W2T4.zSigma, tAxis, 'k-.')
% plot(W2T4.zCentroid - 2*W2T4.zSigma, tAxis, 'k-.')
plot(W2T4.zMax, tAxis, 'k:');
xline(2, '-', 'Color', [0 0.3 0.6])
xline(-2, '-', 'Color', [0 0.3 0.6])
xticks([-12:4:12])
yticks([0:6:36])
set(gca, 'xticklabel', '', 'yDir', 'Normal')
grid on
text(-4, 1, 'W2.0T4.0')

nexttile
imagesc(zAxis, tAxis, W2T6.zVol, [-dttColorMapMaxZ dttColorMapMaxZ])
view(90, 90)
xlim([-5 10])
hold on
plot(W2T6.zCentroid, tAxis, 'k--')
plot(W2T6.zCentroid + W2T6.zSigma, tAxis, 'k-.')
% plot(W2T6.zCentroid + 2*W2T6.zSigma, tAxis, 'k-.')
plot(W2T6.zMin, tAxis, 'k:');
plot(W2T6.zCentroid - W2T6.zSigma, tAxis, 'k-.')
% plot(W2T6.zCentroid - 2*W2T6.zSigma, tAxis, 'k-.')
plot(W2T6.zMax, tAxis, 'k:');
xline(3, '-', 'Color', [0 0.3 0.6])
xline(-3, '-', 'Color', [0 0.3 0.6])
xticks([-12:4:12])
yticks([0:6:36])
set(gca, 'xticklabel', '', 'yDir', 'Normal')
grid on
text(-4, 1, 'W2.0T6.0')

colormap(dttColorMap3)
cz = colorbar;
cz.Layout.Tile = 'east';
cz.Label.String = 'Net volume change per meter [m^3 m^{-1}]';
cz.FontSize = 10;
cz.TickLabels = {'-3\cdot10^7', '-2\cdot10^7', '-1\cdot10^7', '0', '1\cdot10^7', '2\cdot10^7', '3\cdot10^7'};

%% EXPORT PLOTS
% exportgraphics(dttSedimentSpreadingMultiPlot_T0, ['../MATLAB export/Final/sedimentSpreading/dttSigmaValues_T0.0.png'], 'Resolution', 150);
% exportgraphics(dttSedimentSpreadingMultiPlot_T1, ['../MATLAB export/Final/sedimentSpreading/dttSigmaValues_T1.0.png'], 'Resolution', 150);
% exportgraphics(dttSedimentSpreadingMultiPlot_T2, ['../MATLAB export/Final/sedimentSpreading/dttSigmaValues_T2.0.png'], 'Resolution', 150);
% exportgraphics(dttSedimentSpreadingMultiPlot_T4, ['../MATLAB export/Final/sedimentSpreading/dttSigmaValues_T4.0.png'], 'Resolution', 150);
% exportgraphics(dttSedimentSpreadingMultiPlot_T6, ['../MATLAB export/Final/sedimentSpreading/dttSigmaValues_T6.0.png'], 'Resolution', 150);
% 
% exportgraphics(dttSedimentSpreadingMultiPlot_W0, ['../MATLAB export/Final/sedimentSpreading/dttSigmaValues_W0.0.png'], 'Resolution', 150);
% exportgraphics(dttSedimentSpreadingMultiPlot_W04, ['../MATLAB export/Final/sedimentSpreading/dttSigmaValues_W0.4.png'], 'Resolution', 150);
% exportgraphics(dttSedimentSpreadingMultiPlot_W08, ['../MATLAB export/Final/sedimentSpreading/dttSigmaValues_W0.8.png'], 'Resolution', 150);
% exportgraphics(dttSedimentSpreadingMultiPlot_W12, ['../MATLAB export/Final/sedimentSpreading/dttSigmaValues_W1.2.png'], 'Resolution', 150);
% exportgraphics(dttSedimentSpreadingMultiPlot_W16, ['../MATLAB export/Final/sedimentSpreading/dttSigmaValues_W1.6.png'], 'Resolution', 150);
% exportgraphics(dttSedimentSpreadingMultiPlot_W2, ['../MATLAB export/Final/sedimentSpreading/dttSigmaValues_W2.0.png'], 'Resolution', 150);

% exportgraphics(dttSedimentSpreadingMultiPlot_allX, ['../MATLAB export/Final/sedimentSpreading/dttXSpreading_30sims.png'], 'Resolution', 150);
% exportgraphics(dttSedimentSpreadingMultiPlot_allY, ['../MATLAB export/Final/sedimentSpreading/dttYSpreading_30sims.png'], 'Resolution', 150);
% exportgraphics(dttSedimentSpreadingMultiPlot_allZ, ['../MATLAB export/Final/sedimentSpreading/dttZSpreading_30sims.png'], 'Resolution', 150);