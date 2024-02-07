% Date:     13/02/2023
% Author:   ERS

% This script calculates maximum stable morfac values for bedload transport
% in all cells from simulation data. Based on Ranasinghe et al 2011.

%% RUN IMPORT, EXTRACTION, AND PARAMETER SCRIPTS
% dttMapImport;
dttMapImportDD;
    dttExtractBedLevels;
    dttExtractWaterLevels;
    dttExtractBedloadFlux;
        dttParameters;

%% CALCULATE MAXIMUM MORFAC ON BOTH X AND Y AXES
b = 3.4; % Power sediment transport formula (see Ranasinghe et al, 2011)

dttMorfacMaxU = dx/(dt*60) .* (1600/2650) .* (dttBedLevel + dttWaterLevel) ./ (b .* abs(dttBedloadFluxU));
dttMorfacMaxV = dy/(dt*60) .* (1600/2650) .* (dttBedLevel + dttWaterLevel) ./ (b .* abs(dttBedloadFluxV));

dttMorfacMaxU(dttMorfacMaxU==0) = nan; % clears 0 values
dttMorfacMaxV(dttMorfacMaxV==0) = nan;

%% DETERMINE LOWEST MAXIMUM MORFAC AT ALL TIME POINTS
dttMorfacMaxUMin = zeros(size(dttBedLevel, 1), 1);
dttMorfacMaxVMin = zeros(size(dttBedLevel, 1), 1);
for tt = 1:size(dttBedLevel, 1)
    dttMorfacMaxUMin(tt) = min(min(dttMorfacMaxU(tt,:,:)));
    dttMorfacMaxVMin(tt) = min(min(dttMorfacMaxV(tt,:,:)));
end

%% CALCULATE COURANT NUMBERS FOR BEDFORM PROPAGATION
dttCflMfU = mf .* (dt*60)./dx .* (b .* abs(dttBedloadFluxU)) ./ (dttBedLevel + dttWaterLevel);
dttCflMfV = mf .* (dt*60)./dy .* (b .* abs(dttBedloadFluxV)) ./ (dttBedLevel + dttWaterLevel);

dttCflMfU(dttCflMfU==inf) = nan; % clears infinite values
dttCflMfV(dttCflMfV==inf) = nan;

%% DETERMINE MAXIMUM COURANT NUMBER AT ALL TIME POINTS
dttCflMfUMax = zeros(size(dttBedLevel, 1), 1);
dttCflMfVMax = zeros(size(dttBedLevel, 1), 1);
for tt = 1:size(dttBedLevel, 1)
    dttCflMfUMax(tt) = max(max(dttCflMfU(tt,:,:)));
    dttCflMfVMax(tt) = max(max(dttCflMfV(tt,:,:)));
end

%% TEST PLOTS
xAxis = linspace(-16, size(dttMorfacMaxUMin, 1)-17, size(dttMorfacMaxUMin, 1)) .* mf .* 3.125 ./ (24 * 365);
timePoint = 529; % Chosen time point for example plots

figure(101)
plotCfl1 = tiledlayout(2,1);
title(plotCfl1, {['SoulsbyVR W2T0 mf', num2str(mf)];'Maximum Courant stability number over time'})
    nexttile
% semilogy([-4:0.25:96]*mf*12.5/(24*365), dttMorfacMaxUMin);
plot(xAxis, dttCflMfUMax);
title('{\itx}-direction')
xlim([floor(xAxis(1)) 48])
xticks([-6:6:48])
% xlabel('Morphodynamic time elapsed [yr]')
yline(1, 'k--', '{\itCFL_{mf}} = 1')
yline(0.05, 'r--', '{\itCFL_{mf}} = 0.05')
ylim([0 2])
ylabel({'Courant stability parameter {\itCFL_{mf}} [-]'})
grid on
    nexttile
% semilogy([-4:0.25:96]*mf*12.5/(24*365), dttMorfacMaxVMin);
plot(xAxis, dttCflMfVMax);
title('{\ity}-direction')
xlim([floor(xAxis(1)) 48])
xticks([-6:6:48])
xlabel('Morphodynamic time elapsed [yr]')
yline(1, 'k--', '{\itCFL_{mf}} = 1')
yline(0.05, 'r--', '{\itCFL_{mf}} = 0.05')
ylim([0 2])
ylabel({'Courant stability parameter {\itCFL_{mf}} [-]'})
grid on

% figure(102)
% plotMaxMorfac = tiledlayout(2,1);
% title(plotMaxMorfac, 'Smallest maximum MORFAC value over time')
%     nexttile
% % semilogy([-4:0.25:96]*mf*12.5/(24*365), dttMorfacMaxUMin);
% semilogy(xAxis, dttMorfacMaxUMin);
% xlim([floor(xAxis(1)) ceil(xAxis(end)/2)])
% xticks([-6:6:48])
% xlabel('Morphodynamic time elapsed [yr]')
% ylim([1 1e7])
% ylabel({'Smallest calculated {\itf_{m,max,x}} [-]'})
% yline(mf, 'r--', '{\itf_m} used')
% grid on
%     nexttile
% % semilogy([-4:0.25:96]*mf*12.5/(24*365), dttMorfacMaxVMin);
% semilogy(xAxis, dttMorfacMaxVMin);
% xlim([floor(xAxis(1)) ceil(xAxis(end)/2)])
% xticks([-6:6:48])
% xlabel('Morphodynamic time elapsed [yr]')
% ylim([1 1e7])
% ylabel({'Smallest calculated {\itf_{m,max,y}} [-]'})
% yline(mf, 'r--', '{\itf_m} used')
% grid on

%
% testU =  permute(dttMorfacMaxU(timePoint,:,:), [2 3 1]);
% testV =  permute(dttMorfacMaxV(timePoint,:,:), [2 3 1]);
% min(min(testU))
% min(min(testV))
% testUlog = log10(testU);
% testVlog = log10(testV);

%
% figure(103)
% plotMaxMorfac2 = tiledlayout(2,1);
% title(plotMaxMorfac2, 'Maximum MORFAC per cell at 47.25yr')
%     nexttile
% imagesc(testUlog, [0 20]);
% set(gca, 'ydir', 'normal')
%     nexttile
% imagesc(testVlog, [0 20]);
% set(gca, 'ydir', 'normal')
% colormap(turbo)
% cb = colorbar;
% cb.Layout.Tile = 'east';
% cb.Label.String = 'log_{10}({\itf_{m,max}})';

%
figure(1035)
plotCfl2 = tiledlayout(2,1);
title(plotCfl2, {['SoulsbyVR W2T0 mf', num2str(mf)];['Local morphological Courant number at {\itt} = ', num2str((timePoint - 17)*3.125*mf/(24*365), '%.2f'), 'yr']})
    nexttile
imagesc(permute(dttCflMfU(timePoint,:,:), [2 3 1]), [0 0.2]);
title('{\itx}-direction')
set(gca, 'ydir', 'normal')
    nexttile
imagesc(permute(dttCflMfV(timePoint,:,:), [2 3 1]), [0 0.2]);
title('{\ity}-direction')
set(gca, 'ydir', 'normal')
colormap(turbo)
cb1 = colorbar;
cb1.Layout.Tile = 'east';
cb1.Label.String = '{\itCFL_{mf}}';

%
% testU2 = sort(reshape(testU, 1, []));
% testV2 = sort(reshape(testV, 1, []));

% figure(104)
% plotMaxMorfac3 = tiledlayout(2,1);
% title(plotMaxMorfac3, ['Smallest maximum MORFAC at {\itt} = ', num2str((timePoint - 17)*3.125*mf/(24*365), '%.2f'), 'yr - SoulsbyVR T6 mf700'])
%     nexttile
% semilogy(testU2)
% title('{\itx}-direction')
% hold on
% xlim([-500 10000])
% yline(mf, 'r--', '{\itf_m} used')
% ylim([1e0 1e20])
% grid on
%     nexttile
% semilogy(testV2)
% title('{\ity}-direction')
% xlim([-500 10000])
% yline(mf, 'r--', '{\itf_m} used')
% ylim([1e0 1e20])
% grid on

%
cflOrderedU = sort(reshape(dttCflMfU(timePoint,:,:), 1, []));
cflOrderedV = sort(reshape(dttCflMfV(timePoint,:,:), 1, []));

figure(1045)
plotCfl3 = tiledlayout(2,1);
title(plotCfl3, {['SoulsbyVR W2T0 mf', num2str(mf)];['Courant stability numbers at {\itt} = ', num2str((timePoint - 17)*3.125*mf/(24*365), '%.2f'), 'yr']})
    nexttile
plot(cflOrderedU(find(cflOrderedU, 1, 'first') : find(isnan(cflOrderedU), 1 ,'first')))
title('{\itx}-direction')
hold on
% xlim([-500 10000])
yline(1, 'k--', '{\itCFL_{mf}} = 1')
yline(0.05, 'r--', '{\itCFL_{mf}} = 0.05')
ylim([0 0.2])
ylabel('{\itCFL_{mf}}')
grid on
    nexttile
plot(cflOrderedV(find(cflOrderedV, 1, 'first') : find(isnan(cflOrderedV), 1 ,'first')))
title('{\ity}-direction')
% xlim([-500 10000])
xlabel('Cell number, {\itn} [-]')
yline(1, 'k--', '{\itCFL_{mf}} = 1')
yline(0.05, 'r--', '{\itCFL_{mf}} = 0.05')
ylim([0 0.2])
ylabel('{\itCFL_{mf}}')
grid on

%% EXPORT PLOTS
% exportgraphics(plotCfl1, ['../MATLAB export/Mass balance testing/dttCourantTime_SoulsbyVR;W2T0;mf', num2str(mf), '.png'], 'Resolution', '150');
% exportgraphics(plotCfl2, ['../MATLAB export/Mass balance testing/dttCourantBasin_t9pt13yr_SoulsbyVR;W2T0;mf', num2str(mf), '.png'], 'Resolution', '150');
% exportgraphics(plotCfl3, ['../MATLAB export/Mass balance testing/dttCourantBasin2_t9pt13yr_SoulsbyVR;W2T0;mf', num2str(mf), '.png'], 'Resolution', '150');