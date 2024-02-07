% Date:     22/12/2022
% Author:   ERS

% This script extracts mean annual tidal range and wave height data from
% Caldwell et al (2019), for use in producing ordered plots. Caldwell 2019
% dataset available from: https://esurf.copernicus.org/articles/7/773/2019/

%% EXTRACT DATA
T = readtable('../MATLAB datastore/Supplemental_Table_1.xlsx','Range','H4:I5402');
T = table2array(T);

waveMax = find(sort(T(:,1))>=2,1,'first');
tideMax = find(sort(T(:,2))>=6,1,'first');

%% PLOTS
caldwellWavesAndTidesPlot = figure(100);
caldwellWavesAndTidesPlot.Position = [100 100 480 480];
tiledlayout(2,1,'padding','tight','tilespacing','tight')

nexttile
plot(sort(T(:,1)),'k-','lineWidth',1.5)
hold on
plot([0 waveMax], [2 2], 'r--')
plot([waveMax waveMax], [0 2], 'r--')
grid on
xticklabels({})
xlim([0 5400])
xticks(0:900:5400)
ylim([0 6])
ylabel('\langle{\itH_s}\rangle [m]')
text(100,5.6,'a)','fontsize',18);
text(waveMax+100,0.25,['{\itn} = ' num2str(waveMax)],'Rotation',90,'color','red')

nexttile
plot(sort(T(:,2)),'k-','lineWidth',1.5)
hold on
plot([0 tideMax], [6 6], 'r--')
plot([tideMax tideMax], [0 6], 'r--')
grid on
xlim([0 5400])
xticks(0:900:5400)
xlabel('{\itn} [no.]')
ylim([0 16])
yticks(0:4:16)
ylabel('\langle{\itH_t}\rangle [m]')
text(100,14.8,'b)','fontsize',18);
text(tideMax+100,1,['{\itn} = ' num2str(tideMax)],'Rotation',90,'color','red')

%% EXPORT PLOT
% exportgraphics(gcf, '../MATLAB export/Final/dttCaldwellData_v1.1.png', 'Resolution', 150);