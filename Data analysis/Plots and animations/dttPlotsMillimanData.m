% Date:     15/04/2024
% Author:   ERS

% This script imports selected data from the dataset of Milliman and
% Farnsworth (2011), and produces plots of that data.

%% IMPORT AND CLEAN DATA
% suspended sed. conc.
T_milliman_c = readtable('../MATLAB datastore/Milliman2011_Database_updated2012.xls','Range','AC2:AC1532','Sheet','MillimanFarnsworthDatabase');
T_milliman_c = table2array(T_milliman_c);
T_milliman_c2 = str2double(T_milliman_c);
T_milliman_c3 = T_milliman_c(~isnan(T_milliman_c2));
T_milliman_c4 = str2double(T_milliman_c3);
T_milliman_sorted = sort(T_milliman_c4);
T_milliman_sorted_si = T_milliman_sorted/1000;

%% PLOTS
% suspended sed. conc.
millimanSscPlot = figure(1);
clf reset
semilogy(T_milliman_sorted_si,'k')
grid on
xlabel('n [-]')
xline(736/4,'r:','linewidth',1.25)
text(736/4-15,2e-4,'25th percentile','rotation',90)
xline(736/2,'r-.','linewidth',1.25)
text(736/2-15,2e-4,'Median','rotation',90)
xline(3*736/4,'r:','linewidth',1.25)
text(3*736/4-15,2e-4,'75th percentile','rotation',90)
xlim([0 735])
ylabel('Suspended sediment concentration, {\itc} [kg m^{-3}]')
yline(0.1, 'k-.')
text(10,0.15,'{\itc} = 0.1 kg m^{-3}')

%% EXPORT PLOT
% exportgraphics(gcf, '../MATLAB export/Final/dttMillimanSSCs_v2.png', 'Resolution', 150);