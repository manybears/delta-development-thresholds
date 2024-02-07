% Date:     30/08/2023
% Author:   ERS

% This script plots a schematic of delta formation regimes for the
% manuscript.

% v2 (23/11/2023) - Added functionality for plotting mixed colour circles, based on:
% https://uk.mathworks.com/matlabcentral/answers/705243-make-marker-dots-in-plot-be-two-semi-circles-each-filled-with-different-color

%% PREAMBLE FOR MIXED CIRCLES
R = 0.175;

th = linspace(pi/4, 5*pi/4)';
xL = R*cos(th);
yL = R*sin(th);

th = linspace(pi/4, -3*pi/4)';
xR = R*cos(th);
yR = R*sin(th);

%% PLOTS
dttDeltaRegimePlot = figure(3100);
clf reset
scatter(0,0,200,'bo','filled')
hold on
scatter(0,1,200,'bo','filled')
scatter(0,2,200,'bo','filled')
scatter(0,3,200,'bo','filled')
scatter(0,4,200,'mo','filled')
scatter(0,5,200,'mo','filled')

% scatter(0.5,0,'bo','filled')

scatter(1,0,200,'ko','filled')
scatter(1,1,200,'ko','filled')
scatter(1,2,200,'ko','filled')
scatter(1,3,200,'ko','filled')
scatter(1,4,200,'mo','filled')
scatter(1,5,200,'mo','filled')

scatter(2,0,200,'ko','filled')
scatter(2,1,200,'ko','filled')
scatter(2,2,200,'ko','filled')
scatter(2,3,200,'ko','filled')
% scatter(2,4,200,'co','filled')
patch(xL+2,yL+4,'m','edgeColor','none');
patch(xR+2,yR+4,'g','edgeColor','none');
scatter(2,5,200,'rx')

scatter(3,0,200,'ko','filled')
scatter(3,1,200,'ko','filled')
% scatter(3,2,200,'co','filled')
patch(xL+3,yL+2,'k','edgeColor','none');
patch(xR+3,yR+2,'g','edgeColor','none');
scatter(3,3,200,'go','filled')
scatter(3,4,200,'go','filled')
scatter(3,5,200,'rx')

scatter(4,0,200,'ko','filled')
scatter(4,1,200,'ko','filled')
scatter(4,2,200,'go','filled')
scatter(4,3,200,'go','filled')
scatter(4,4,200,'go','filled')
scatter(4,5,200,'rx')

scatter(5,0,200,'ko','filled')
scatter(5,1,200,'ko','filled')
scatter(5,2,200,'go','filled')
scatter(5,3,200,'go','filled')
scatter(5,4,200,'go','filled')
scatter(5,5,200,'rx')

scatter(6,0,200,'ko','filled')
scatter(6,1,200,'ko','filled')
scatter(6,2,200,'go','filled')
scatter(6,3,200,'go','filled')
scatter(6,4,200,'rx')
scatter(6,5,200,'rx')

box on
grid on
axis equal
xlim([-0.5 6.5])
ylim([-0.5 5.5])
yticks(0:5)
yticklabels(0:0.4:2)
xlabel('{\itH_t} [m]')
ylabel('{\itH_s} [m]')
set(gca,'yDir','reverse')

%% EXPORT PLOT
% exportgraphics(dttDeltaRegimePlot,['../MATLAB export/Final/dttDeltaRegimes_v5.png'],'Resolution',150);