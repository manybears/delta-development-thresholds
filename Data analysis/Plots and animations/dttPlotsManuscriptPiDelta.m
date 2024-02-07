% Date:     27/11/2023
% Author:   ERS

% This script generates a heatmap plot of piDelta (Caldwell2019)

%% MATRIX OF VALUES
Q = 1280; % [m3 s-1]
c = 0.1; % [kg m-3]
Qsed = Q*c/2650; % [kg s-1]

H_t = 0:1:6;
H_s = 0:0.4:2;
piDelta = zeros(size(H_s,2),size(H_t,2));

for ii = 1:size(H_s,2)
    for jj = 1:size(H_t,2)
        f = exp(1.45 + 0.000589*Q + 2.56*Qsed - 0.975*H_s(ii) - 0.187*H_t(jj));
        piDelta(ii,jj) = f/(1+f);
    end
end

%% PLOT PREAMBLE
dttColorMap = cmocean('balance');

%% CREATE HEATMAP
piDeltaFig = figure(100);
piDeltaFig.Position = [100 100 640 320];
h = heatmap(H_t,H_s,piDelta,'colorMap',flipud(dttColorMap),'cellLabelFormat','%3.2f','colorbarVisible','off');
% h.NodeChildren(3).XAxis.Label.Interpreter = 'latex';
% h.NodeChildren(3).YAxis.Label.Interpreter = 'latex';
caxis([0 1])
xlabel('{\itH_t} [m]')
ylabel('{\itH_s} [m]')

%% EXPORT PLOT
% exportgraphics(gcf,'../MATLAB export/Final/dttPiDeltaAlt.png','resolution',150);