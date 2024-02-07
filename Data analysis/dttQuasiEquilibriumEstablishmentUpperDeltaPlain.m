% Date:     04/07/2023
% Author:   ERS

% This script determines upper delta plain fraction over time, where upper
% delta plain fraction is {upper delta plain area}/{total delta plain
% area}.

% v2 (13/07/2023) - Adapted to load data from all relevant sims for
% combined plots.

%% LOAD DATA
% load('../MATLAB datastore/W0.0T0.5_metrics_HPC.mat');
% W0T05.dttDeltaArea = dttDeltaArea;
% W0T05.dttDeltaFrontLogical = dttDeltaFrontLogical;
% W0T05.dttHighTideAreaOffshore = dttHighTideAreaOffshore;
% W0T05.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
% W0T05.dttHighTideFrontLogical = dttHighTideFrontLogical;
% W0T05.dttHighTideLength = dttHighTideLength;
% W0T05.dttHighTideRugosity = dttHighTideRugosity;
% W0T05.dttLowTideAreaOffshore = dttLowTideAreaOffshore;
% W0T05.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
% W0T05.dttLowTideFrontLogical = dttLowTideFrontLogical;
% W0T05.dttLowTideLength = dttLowTideLength;
% W0T05.dttLowTideRugosity = dttLowTideRugosity;
% W0T05.mf = mf;

load('../MATLAB datastore/W0.0T1.0_metrics_HPC.mat');
W0T1.dttDeltaArea = dttDeltaArea;
W0T1.dttDeltaFrontLogical = dttDeltaFrontLogical;
W0T1.dttHighTideAreaOffshore = dttHighTideAreaOffshore;
W0T1.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
W0T1.dttHighTideFrontLogical = dttHighTideFrontLogical;
W0T1.dttHighTideLength = dttHighTideLength;
W0T1.dttHighTideRugosity = dttHighTideRugosity;
W0T1.dttLowTideAreaOffshore = dttLowTideAreaOffshore;
W0T1.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W0T1.dttLowTideFrontLogical = dttLowTideFrontLogical;
W0T1.dttLowTideLength = dttLowTideLength;
W0T1.dttLowTideRugosity = dttLowTideRugosity;
W0T1.mf = mf;

load('../MATLAB datastore/W0.4T1.0_metrics_HPC.mat');
W04T1.dttDeltaArea = dttDeltaArea;
W04T1.dttDeltaFrontLogical = dttDeltaFrontLogical;
W04T1.dttHighTideAreaOffshore = dttHighTideAreaOffshore;
W04T1.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
W04T1.dttHighTideFrontLogical = dttHighTideFrontLogical;
W04T1.dttHighTideLength = dttHighTideLength;
W04T1.dttHighTideRugosity = dttHighTideRugosity;
W04T1.dttLowTideAreaOffshore = dttLowTideAreaOffshore;
W04T1.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W04T1.dttLowTideFrontLogical = dttLowTideFrontLogical;
W04T1.dttLowTideLength = dttLowTideLength;
W04T1.dttLowTideRugosity = dttLowTideRugosity;
W04T1.mf = mf;

load('../MATLAB datastore/W0.8T1.0_metrics_HPC.mat');
W08T1.dttDeltaArea = dttDeltaArea;
W08T1.dttDeltaFrontLogical = dttDeltaFrontLogical;
W08T1.dttHighTideAreaOffshore = dttHighTideAreaOffshore;
W08T1.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
W08T1.dttHighTideFrontLogical = dttHighTideFrontLogical;
W08T1.dttHighTideLength = dttHighTideLength;
W08T1.dttHighTideRugosity = dttHighTideRugosity;
W08T1.dttLowTideAreaOffshore = dttLowTideAreaOffshore;
W08T1.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W08T1.dttLowTideFrontLogical = dttLowTideFrontLogical;
W08T1.dttLowTideLength = dttLowTideLength;
W08T1.dttLowTideRugosity = dttLowTideRugosity;
W08T1.mf = mf;

load('../MATLAB datastore/W1.2T1.0_metrics_HPC.mat');
W12T1.dttDeltaArea = dttDeltaArea;
W12T1.dttDeltaFrontLogical = dttDeltaFrontLogical;
W12T1.dttHighTideAreaOffshore = dttHighTideAreaOffshore;
W12T1.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
W12T1.dttHighTideFrontLogical = dttHighTideFrontLogical;
W12T1.dttHighTideLength = dttHighTideLength;
W12T1.dttHighTideRugosity = dttHighTideRugosity;
W12T1.dttLowTideAreaOffshore = dttLowTideAreaOffshore;
W12T1.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W12T1.dttLowTideFrontLogical = dttLowTideFrontLogical;
W12T1.dttLowTideLength = dttLowTideLength;
W12T1.dttLowTideRugosity = dttLowTideRugosity;
W12T1.mf = mf;

load('../MATLAB datastore/W1.6T1.0_metrics_HPC.mat');
W16T1.dttDeltaArea = dttDeltaArea;
W16T1.dttDeltaFrontLogical = dttDeltaFrontLogical;
W16T1.dttHighTideAreaOffshore = dttHighTideAreaOffshore;
W16T1.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
W16T1.dttHighTideFrontLogical = dttHighTideFrontLogical;
W16T1.dttHighTideLength = dttHighTideLength;
W16T1.dttHighTideRugosity = dttHighTideRugosity;
W16T1.dttLowTideAreaOffshore = dttLowTideAreaOffshore;
W16T1.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W16T1.dttLowTideFrontLogical = dttLowTideFrontLogical;
W16T1.dttLowTideLength = dttLowTideLength;
W16T1.dttLowTideRugosity = dttLowTideRugosity;
W16T1.mf = mf;

load('../MATLAB datastore/W2.0T1.0_metrics_HPC.mat');
W2T1.dttDeltaArea = dttDeltaArea;
W2T1.dttDeltaFrontLogical = dttDeltaFrontLogical;
W2T1.dttHighTideAreaOffshore = dttHighTideAreaOffshore;
W2T1.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
W2T1.dttHighTideFrontLogical = dttHighTideFrontLogical;
W2T1.dttHighTideLength = dttHighTideLength;
W2T1.dttHighTideRugosity = dttHighTideRugosity;
W2T1.dttLowTideAreaOffshore = dttLowTideAreaOffshore;
W2T1.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W2T1.dttLowTideFrontLogical = dttLowTideFrontLogical;
W2T1.dttLowTideLength = dttLowTideLength;
W2T1.dttLowTideRugosity = dttLowTideRugosity;
W2T1.mf = mf;

load('../MATLAB datastore/W2.0T1.0ext_metrics_HPC.mat');
W2T1ext.dttDeltaArea = dttDeltaArea;
W2T1ext.dttDeltaFrontLogical = dttDeltaFrontLogical;
W2T1ext.dttHighTideAreaOffshore = dttHighTideAreaOffshore;
W2T1ext.dttHighTideAreaOnshore = dttHighTideAreaOnshore;
W2T1ext.dttHighTideFrontLogical = dttHighTideFrontLogical;
W2T1ext.dttHighTideLength = dttHighTideLength;
W2T1ext.dttHighTideRugosity = dttHighTideRugosity;
W2T1ext.dttLowTideAreaOffshore = dttLowTideAreaOffshore;
W2T1ext.dttLowTideAreaOnshore = dttLowTideAreaOnshore;
W2T1ext.dttLowTideFrontLogical = dttLowTideFrontLogical;
W2T1ext.dttLowTideLength = dttLowTideLength;
W2T1ext.dttLowTideRugosity = dttLowTideRugosity;
W2T1ext.mf = mf;

% Clean up workspace
clear -regexp ^dtt;

%% ERS: This is a bit of code used to combine og sims with ext sims. recycle if needed
% dttDeltaAreaTotal = dttDeltaArea;
% dttLowTideAreaOnshoreTotal = dttLowTideAreaOnshore;
% % dttLowTideAreaOffshoreTotal = dttLowTideAreaOffshore;
% 
% load(['../MATLAB datastore/' runID 'ext_metrics_HPC.mat']);
% dttDeltaAreaTotal(146:289) = dttDeltaArea(2:end);
% % dttLowTideAreaOnshoreTotal(146:289) = dttLowTideAreaOnshore(2:end);
% % dttLowTideAreaOffshoreTotal(146:289) = dttLowTideAreaOffshore(2:end);
% dttLowTideAreaOnshoreTotal(145:288) = dttLowTideAreaOnshore(1:end);
% % dttLowTideAreaOffshoreTotal(145:288) = dttLowTideAreaOffshore(1:end);
% 
% % fudgy method. improve this for proper script
% dttDeltaArea = dttDeltaAreaTotal;
% dttLowTideAreaOnshore = dttLowTideAreaOnshoreTotal;
% % dttLowTideAreaOffshore = dttLowTideAreaOffshoreTotal;

%% DETERMINE MOVING AVERAGES AND RELATED STANDARD DEVIATIONS
kRangeLow = 23; % [no. tides]
kRangeHigh = 0; % [no. tides]
endTime = (size(W0T05.dttDeltaArea, 1) -1)/4; % [yr]

W0T05.dttDimensionlessUpperDeltaPlainAreaMovingMean = movmean(W0T05.dttHighTideAreaOnshore ./ W0T05.dttLowTideAreaOnshore, [kRangeLow kRangeHigh], 'omitnan');
W0T05.dttDimensionlessUpperDeltaPlainAreaMovingStd = movstd(W0T05.dttHighTideAreaOnshore ./ W0T05.dttLowTideAreaOnshore, [kRangeLow kRangeHigh], 'omitnan');

%% PLOTS
% non-dimensionalised area with moving average
quasiEqPlot = figure(801);
quasiEqPlot.Position = [2000 200 1280 720];
clf reset
% tiledlayout(2,1)

% nexttile
% plot([0:12.5*mf/(24*365):(size(W0T05.dttHighTideAreaOnshore, 1)-1)*12.5*mf/(24*365)], W0T05.dttHighTideAreaOnshore ./ W0T05.dttLowTideAreaOnshore, 'k^')
hold on
plot([0:12.5*mf/(24*365):(size(W0T1.dttHighTideAreaOnshore, 1)-1)*12.5*mf/(24*365)], W0T1.dttHighTideAreaOnshore ./ W0T1.dttLowTideAreaOnshore, 'kx')
plot([0:12.5*mf/(24*365):(size(W04T1.dttHighTideAreaOnshore, 1)-1)*12.5*mf/(24*365)], W04T1.dttHighTideAreaOnshore ./ W04T1.dttLowTideAreaOnshore, 'kd')
plot([0:12.5*mf/(24*365):(size(W08T1.dttHighTideAreaOnshore, 1)-1)*12.5*mf/(24*365)], W08T1.dttHighTideAreaOnshore ./ W08T1.dttLowTideAreaOnshore, 'ko')
plot([0:12.5*mf/(24*365):(size(W12T1.dttHighTideAreaOnshore, 1)-1)*12.5*mf/(24*365)], W12T1.dttHighTideAreaOnshore ./ W12T1.dttLowTideAreaOnshore, 'k*')
plot([0:12.5*mf/(24*365):(size(W16T1.dttHighTideAreaOnshore, 1)-1)*12.5*mf/(24*365)], W16T1.dttHighTideAreaOnshore ./ W16T1.dttLowTideAreaOnshore, 'k.')
plot([0:12.5*mf/(24*365):287*12.5*mf/(24*365)], [W2T1.dttHighTideAreaOnshore; W2T1ext.dttHighTideAreaOnshore] ./ [W2T1.dttLowTideAreaOnshore; W2T1ext.dttLowTideAreaOnshore], 'ks')
% plot([144*12.5*mf/(24*365):12.5*mf/(24*365):287*12.5*mf/(24*365)], W2T1.dttHighTideAreaOnshore ./ W2T1.dttLowTideAreaOnshore, 'ks')
hold off
grid on
xticks([0:6:72])
xlim([0 72])
xlabel('{\itt} [yr]')
ylim([0 1])
ylabel('{\itA_{high} / A_{low}} [-]')
legend('W0.0T1.0', 'W0.4T1.0', 'W0.8T1.0', 'W1.2T1.0', 'W1.6T1.0', 'W2.0T1.0', 'location', 'northwest')%[num2str(((kRangeHigh+kRangeLow)+1)/4) 'yr moving mean'], 'location', 'northwest')
set(gca, 'FontSize', 16);

% nexttile
% % if size(dttDeltaArea, 1) == size(dttLowTideAreaOnshore, 1)
%     plot([0:12.5*mf/(24*365):(size(W0T05.dttHighTideAreaOnshore, 1)-1)*12.5*mf/(24*365)], gradient(W0T05.dttDimensionlessUpperDeltaPlainAreaMovingMean, (12.5*175)/(24*365)), 'k-');
%     hold on
% %     plot([0:12.5*mf/(24*365):(size(dttLowTideAreaOnshore, 1)-1)*12.5*mf/(24*365)], gradient(dttDimensionlessDeltaPlainAreaMovingMean2), 'g-');
% %     plot([0:12.5*mf/(24*365):(size(dttLowTideAreaOnshore, 1)-1)*12.5*mf/(24*365)], dttDimensionlessDeltaPlainAreaMovingMean*0.02, 'b-.')
% % else
% %     plot([12.5*mf/(24*365):12.5*mf/(24*365):size(dttLowTideAreaOnshore, 1)*12.5*mf/(24*365)], gradient(dttDimensionlessUpperDeltaPlainAreaMovingMean, (12.5*175)/(24*365)), 'k-');
% %     hold on
% %     plot([12.5*mf/(24*365):12.5*mf/(24*365):size(dttLowTideAreaOnshore, 1)*12.5*mf/(24*365)], gradient(dttDimensionlessDeltaPlainAreaMovingMean2), 'g-');
% %     plot([12.5*mf/(24*365):12.5*mf/(24*365):size(dttLowTideAreaOnshore, 1)*12.5*mf/(24*365)], dttDimensionlessDeltaPlainAreaMovingMean*0.02, 'b-.');
% % end
% % hold on
% yline(2.5e-3, 'r-.')
% yline(-2.5e-3, 'r-.')
% grid on
% xticks([0:6:endTime])
% xlim([0 endTime])
% xlabel('Time, \itt \rm[yr]')
% ylim([-0.02 0.02])
% ylabel({'Time-derivative of upper delta-plain fraction moving mean,'; '\itdA_p/dt \rm[yr^{-1}]'})
% % legend

% nexttile
% if size(dttDeltaArea, 1) == size(dttLowTideAreaOnshore, 1)
%     plot([0:12.5*mf/(24*365):(size(dttLowTideAreaOnshore, 1)-1)*12.5*mf/(24*365)], dttDimensionlessDeltaPlainAreaMovingStd, 'k-')
%     hold on
% %     plot([0:12.5*mf/(24*365):(size(dttLowTideAreaOnshore, 1)-1)*12.5*mf/(24*365)], dttDimensionlessDeltaPlainAreaMovingStd2, 'g-')
%     plot([0:12.5*mf/(24*365):(size(dttLowTideAreaOnshore, 1)-1)*12.5*mf/(24*365)], dttDimensionlessDeltaPlainAreaMovingMean*0.05, 'b-.');
% %     plot([0:12.5*mf/(24*365):(size(dttLowTideAreaOnshore, 1)-1)*12.5*mf/(24*365)], dttDimensionlessDeltaPlainAreaMovingMean2*0.05, 'g-.');
% else
%     plot([12.5*mf/(24*365):12.5*mf/(24*365):size(dttLowTideAreaOnshore, 1)*12.5*mf/(24*365)], dttDimensionlessDeltaPlainAreaMovingStd, 'k-')
%     hold on
% %     plot([12.5*mf/(24*365):12.5*mf/(24*365):size(dttLowTideAreaOnshore, 1)*12.5*mf/(24*365)], dttDimensionlessDeltaPlainAreaMovingStd2, 'g-')
%     plot([12.5*mf/(24*365):12.5*mf/(24*365):size(dttLowTideAreaOnshore, 1)*12.5*mf/(24*365)], dttDimensionlessDeltaPlainAreaMovingMean*0.05, 'b-.');
% %     plot([12.5*mf/(24*365):12.5*mf/(24*365):size(dttLowTideAreaOnshore, 1)*12.5*mf/(24*365)], dttDimensionlessDeltaPlainAreaMovingMean2*0.05, 'g-.');
% end
% % yline(0.01, 'r-.')
% grid on
% xticks([0:6:endTime])
% xlim([0 endTime])
% xlabel('Time, \itt \rm[yr]')
% % ylim([0 0.3])
% ylabel('Standard deviation, {\it\sigma} [-]')
% % legend('12yr trailing standard deviation', '12yr trailing mean × 0.1')

%% EXPORT PLOT
% exportgraphics(quasiEqPlot, ['../MATLAB export/Final/dttUpperDeltaPlainFractionAllSims_v5.png'], 'Resolution', 150);