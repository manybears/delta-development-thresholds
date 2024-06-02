% Date:     29/04/2024
% Author:   ERS

% This script determines the balance of river, wave, and tidal influence on
% sediment fluxes according to the methodologies of Nienhuis (2015 to
% 2020). These are determined using the function
% dttNienhuisDominanceMetrics.

%% PLOTS PREAMBLE
Q = 1280;
c = 0.1;
tw = 5.0;

% DETERMINE METRICS PER SIM
m = zeros(42,3);
ii = 1;
for hs = 0:0.4:2
    for at = 0:0.5:3
        [m(ii,1),m(ii,3),m(ii,2)] = dttNienhuisDominanceMetrics(hs,tw,at,Q,c);
        ii = ii+1;
    end
end

% DETERMINE METRICS FOR CALDWELL DELTA PROBABILITY 0.5
n = zeros(61,3);
ii = 1;
hs = 2.3895;
% for hs = 5.97375:7679/80000:2.13425
    for at = 0:0.1:6
        [n(ii,1),n(ii,3),n(ii,2)] = dttNienhuisDominanceMetrics(hs,tw,at,Q,c);
        hs = hs-0.038395;
        ii = ii+1;
    end
% end


%% PLOTS
% All sims
dttNienhuisTriPlot_0 = figure(1);
dttNienhuisTriPlot_0.Position = [10 10 480 480];

h = triaxplot(m);

% All sims, colored regimes
dttNienhuisTriPlotCol_0 = figure(2);
clf
dttNienhuisTriPlotCol_0.Position = [10 10 640 640];

h0 = triaxplot(m([1 8 15 22],:),'marker','o','color','b');
hold on
h1 = triaxplot(m([2:7 9:14 16 17 18 23 24],:),'marker','o','color','k');
h2 = triaxplot(m([19:21 25:28 31:34],:),'marker','o','color','g');
h3 = triaxplot(m([29 30 31 36 37],:),'marker','o','color','m');
h4 = triaxplot(m([35 38:end],:),'marker','x','color','r');
h5 = triaxplot(m([18 31],:),'marker','^','color','g','labels',{'River','Tides','Waves'});
pid = triaxplot(n,'marker','.','color','k');
hold off
set(gcf,'color','w'); % run twice with this on to get a white background
text(0.78,0.16,'$\pi_\Delta = 0.5$','interpreter','latex','rotation',-30,'fontsize',12)
% legend

%% EXPORT PLOTS
% exportgraphics(gcf, '../MATLAB export/Final/dttDeltaRegimesNienhuis_v1.0.png', 'Resolution', 300);