% Date: 08/03/2022
% Author: ERS

% This script calculates delta probability-of-occurance after Caldwell2019.
% Values of piDelta range from no delta at 0 to high likelihood of delta at
% 1. Prediction parameters are mean annual river discharge [m3 s-1], mean
% annual sediment discharge [m3 s-1], mean annual significant wave
% height [m], and mean annual tidal range [m].

%%% Calculate delta likelyhood from known variables
% Define independent variables
Q_w = 1280; %951.29;       % [m3 s-1]
Q_s = 0.05; %0.0359;       % [m3 s-1]
H_w = 0.0; %0.405;        % [m]
H_t = 6.0; %2.025;        % [m]

% Calculate delta likelihood
x = exp(1.45 + 5.89E-04 * Q_w + 2.56 * Q_s - 0.974 * H_w - 0.187 * H_t);
piDelta = x/(x + 1)

%%% Conversion of sediment or water fluxes from Mt yr-1 to m3 s-1
mdot_s = 1.46;
mdot_w = 1;

Q_s2 = mdot_s * 10^9/(2650 * 365 * 24 * 60 * 60);
Q_w2 = mdot_w * 10^9/(1000 * 365 * 24 * 60 * 60);

%%% Calculate tidal range (no waves) or wave heights (no tides) from given
%%% Q_w and Q_s to give delta probability 0.5 (used for threshold tests.
%%% Take values from setup sim C=eq;Q=100+):
Q_w3 = 640;
Q_s3 = 0.01;

% H_tout = (1.45 + 5.89E-04 * Q_w3 + 2.56 * Q_s3) / 0.187 % no waves
% H_wout = (1.45 + 5.89E-04 * Q_w3 + 2.56 * Q_s3) / 0.974 % no tides