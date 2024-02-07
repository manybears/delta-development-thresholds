% Date: 11/11/2022
% Author: ERS

% This script quantifies degree of grid alignment in a simulation by
% producing a polar plot of current vectors.

% v2 (16/11/2022) - amended to apply methodology at all points in time.

%% RUN IMPORT AND SETUP SCRIPTS
dttMapImport;
dttParameters;

%% EXTRACT CURRENT DATA
if exist('dttCurrentU', 'var') == 0
    dttCurrentU = vs_let(dttMapData, 'map-series', 'U1', []);
    dttCurrentU = dttCurrentU(:, 2:end-1, 1:end-1);
else
end

if exist('dttCurrentV', 'var') == 0
    dttCurrentV = vs_let(dttMapData, 'map-series', 'V1', []);
    dttCurrentV = dttCurrentV(:, 1:end-1, 2:end-1);
else
end

%% CONVERT CELL EDGE CURRENTS TO CELL CENTRE CURRENTS (VIA AVERAGING OF ADJOINING CELL EDGE VALUES)
dttCurrentUAdjusted = NaN(size(dttCurrentU, [1]), size(dttCurrentU, [2]), size(dttCurrentU, [3]) -1);
dttCurrentVAdjusted = NaN(size(dttCurrentU, [1]), size(dttCurrentV, [2]) -1, size(dttCurrentV, [3]));

for nn = 1:size(dttCurrentUAdjusted, [3])
    dttCurrentUAdjusted(:, :, nn) = (dttCurrentU(:, :, nn) + dttCurrentU(:, :, nn+1))/2;
end

for mm = 1:size(dttCurrentVAdjusted, [2])
    dttCurrentVAdjusted(:, mm, :) = (dttCurrentV(:, mm, :) + dttCurrentV(:, mm+1, :))/2;
end

%% DETERMINE ALL CURRENT VECTOR DIRECTIONS (CARTESIAN CONVENTION)
dttCurrentAngle = atan(dttCurrentVAdjusted ./ dttCurrentUAdjusted);
dttCurrentAngleAdjusted = zeros(size(dttCurrentAngle));

for tt = 1:size(dttCurrentUAdjusted, [1])
    for mm = 1:size(dttCurrentUAdjusted, [2])
        for nn = 1:size(dttCurrentUAdjusted, [3])
            if dttCurrentUAdjusted(tt, mm, nn) >= 0 && dttCurrentVAdjusted(tt, mm, nn) >= 0
                dttCurrentAngleAdjusted(tt, mm, nn) = dttCurrentAngle(tt, mm, nn);
            elseif dttCurrentUAdjusted(tt, mm, nn) < 0
                dttCurrentAngleAdjusted(tt, mm, nn) = dttCurrentAngle(tt, mm, nn) + pi();
            elseif dttCurrentUAdjusted(tt, mm, nn) >= 0 && dttCurrentVAdjusted(tt, mm, nn) < 0
                dttCurrentAngleAdjusted(tt, mm, nn) = dttCurrentAngle(tt, mm, nn) + 2*pi();
            else
            end
        end
    end
end

% remove inactive points
for tt = 1:size(dttCurrentAngleAdjusted, [1])
    for mm = 1:size(dttCurrentAngleAdjusted, [2])
        for nn = 1:size(dttCurrentAngleAdjusted, [3])
            if dttCurrentUAdjusted(tt, mm, nn) == 0 && dttCurrentVAdjusted(tt, mm, nn) == 0
                dttCurrentAngleAdjusted(tt, mm, nn) = NaN;
            else
            end
        end
    end
end

%% test plot
% figure(001)
% imagesc(permute(dttCurrentAngleAdjusted(end, :, :), [2 3 1]));
% colorbar;

%% DETERMINE ALL CURRENT VECTOR MAGNITUDES
dttCurrentMagnitude = sqrt(dttCurrentUAdjusted.^2 + dttCurrentVAdjusted.^2);

%% SUM MAGNITUDES OF CURRENT VECTORS WITHIN DISCRETE DIRECTIONAL INTERVALS
bin = zeros(size(dttCurrentMagnitude, [1]), 36);
for tt = 1:size(dttCurrentMagnitude, [1])
    bin(tt, 1) = sum((dttCurrentAngleAdjusted(tt, :, :) >= 2*pi() - pi()/36) .* dttCurrentMagnitude(tt, :, :), 'all') + sum((dttCurrentAngleAdjusted(tt, :, :) < pi()/36) .* dttCurrentMagnitude(tt, :, :), 'all');
end

for tt = 1:size(dttCurrentMagnitude, [1])
    for ii = 1:35
        bin(tt, ii+1) = sum((dttCurrentAngleAdjusted(tt, :, :) >= ii*pi()/18 - pi()/36 & dttCurrentAngleAdjusted(tt, :, :) < ii*pi()/18 + pi()/36) .* dttCurrentMagnitude(tt, :, :), 'all');
    end
end

%% NORMALIZE BINNED CURRENTS BY SUM OF ALL CURRENT MAGNITUDES
binNormalized = bin ./ sum(dttCurrentMagnitude, [2 3]);

%% PROPORTION OF GRID-ALIGNED CURRENT
dttGridAlignmentDegree = zeros(size(dttCurrentMagnitude, [1]), 1);
for tt = 1:size(dttCurrentMagnitude, [1])
    dttGridAlignmentDegree(tt) = binNormalized(tt, 1) + binNormalized(tt, 10) + binNormalized(tt, 19) + binNormalized(tt, 27);
end

%% test plot
figure(534543)
plot(dttGridAlignmentDegree);

%% SAVE ALIGNMENT METRICS
% save('metricsOverTime\25FlatChanCh45', 'bin', 'dttGridAlignmentDegree', '-append')

%% PLOTS
% close all

gridAlignPlot = figure(501);
polarhistogram('BinEdges', -pi()/36 : pi()/18 : 2*pi() - pi()/36, 'BinCounts', bin(end, :), 'Normalization', 'probability');
title('Cumulative normalised current magnitude per directional bin: 25 m grid; rough channel')
rlim([0 0.25])

%% PLOT EXPORT
% exportgraphics(gridAlignPlot, '../MATLAB export/Second convergence tests/dttGridAlignmentPlot25m_FlatChanCh45.png', 'Resolution', 150);