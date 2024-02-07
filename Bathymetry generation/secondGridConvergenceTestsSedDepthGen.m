% Date: 08/11/2022
% Author: ERS

% This script defines and exports initial sediment depths for use in second
% delta threshold convergence tests.
% Grid spacings are 250 m, 125 m, 50 m, 25m, and 12.5 m.
% Corresponding grid sizes are 79×36, 158×72, 395×180, 790×360, and 1580×720.

%% DEFINE ALL DEPTH MATRICES
% Create empty depth matrices
depth250 = zeros(36+2, 79+2);
depth125 = zeros(72+2, 158+2);
depth50 = zeros(180+2, 395+2);
depth25 = zeros(360+2, 790+2);
depth12pt5 = zeros(720+2, 1580+2);

% Beach
for ii = 0:1
    depth250(ii + 6, [1:40 42:end-1]) = 14.925 + 0.05 * ii;
end

for ii = 0:3
    depth125(ii + 10, [1:79 82:end-1]) = 14.9225 + 0.025 * ii;
end

for ii = 0:9
    depth50(ii + 22, [1:196 202:end-1]) = 14.9050 + 0.01 * ii;
end

for ii = 0:19
    depth25(ii + 42, [1:391 402:end-1]) = 14.9025 + 0.005 * ii;
end

for ii = 0:39
    depth12pt5(ii + 82, [1:781 802:end-1]) = 14.90125 + 0.0025 * ii;
end

% Transition sediment depths
for ii = 0:3
    depth250(ii + 8, 1:end-1) = 2.5 + 5 * ii;
end

for ii = 0:7
    depth125(ii + 14, 1:end-1) = 1.25 + 2.5 * ii;
end

for ii = 0:19
    depth50(ii + 32, 1:end-1) = 0.5 + 1 * ii;
end

for ii = 0:39
    depth25(ii + 62, 1:end-1) = 0.25 + 0.5 * ii;
end

for ii = 0:79
    depth12pt5(ii + 122, 1:end-1) = 0.125 + 0.25 * ii;
end

% Constant sediment depths
depth250(12:end-1, 1:end-1) = 20;
depth125(22:end-1, 1:end-1) = 20;
depth50(52:end-1, 1:end-1) = 20;
depth25(102:end-1, 1:end-1) = 20;
depth12pt5(202:end-1, 1:end-1) = 20;

%% TEST PLOTS
close all;

plot1 = figure(101);
imagesc(depth250(2:end-1, 2:end-1));

plot2 = figure(102);
imagesc(depth125(2:end-1, 2:end-1));

plot3 = figure(103);
imagesc(depth50(2:end-1, 2:end-1));

plot = figure(104);
imagesc(depth25(2:end-1, 2:end-1));

plot5 = figure(105);
imagesc(depth12pt5(2:end-1, 2:end-1));

%% EXPORT
% writematrix(depth250, '..\MATLAB export\79x36sed.txt', 'Delimiter', ' ')
% writematrix(depth125, '..\MATLAB export\158x72sed.txt', 'Delimiter', ' ')
% writematrix(depth50, '..\MATLAB export\395x180sed.txt', 'Delimiter', ' ')
% writematrix(depth25, '..\MATLAB export\790x360sed.txt', 'Delimiter', ' ')
% writematrix(depth12pt5, '..\MATLAB export\1580x720sed.txt', 'Delimiter', ' ')