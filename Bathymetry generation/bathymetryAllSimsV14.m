% Date: 15/03/2022
% Author: ERS

% This script defines and exports depth file for use in all delta threshold
% tests. To be read for grid cell corners set to "dp".

% V2 (16/03/2022) - amended to increase channel length and offshore extent,
% and adjust basin to match channel slope but with steeper beach region.

% V3 (17/03/2022) - redefining basin to have steeper initial slope followed
% by shallower outer basin rather than other way round.

% V4 (18/03/2022) - reduced offshore extent due to use of smaller Riemann
% boundary values. Also widened domain to allow for larger deltas and
% introduced random perturbations.

% V5 (23/03/2022) - Steepened channel from 1:12500 (8E-05) to 1:10000
% (1E-04).

% V6 (29/03/2022) - Added additional output for same bathy with only the
% most-downstream 20 km of channel included.

% V7 (24/05/2022) - Added additonal output for same bathy with the channel
% altogether removed (for use with Riemann discharge boundary tests).

% V8 (24/08/2022) - Completely overhauled. This script now writes
% bathymetry for revised grid (50 × 50) and domain (same channel dims,
% 24.05 × 12 km basin). Also adapted for data to be read at cell centres
% (dpsopt = dp rather than dpsopt = mean).

% V9 (31/08/2022) - Increased basin slope from 1:1000 to 1:500.

% V10 (07/09/2022) - Replacing sloped beach with constant +10 m landmass
% as beach seemed to be causing issues with too-high velocity or water
% level changes shutting down simulations during flood tide.

% V11 (27/09/2022) - Overhauled for locally coarsened grid. Also made
% channel twice as steep (from 1 in 10000 to 1 in 5000). Beach raised to 25
% m so as not to be flooded by cold start WL.

% V12 (28/09/2022) - Due to identified stability issues related to high
% discharge velocities (in V10 bathymetry), am dropping entire bed by 2.5 m

% V13 (25/10/2022) - Overhauling again to revert to finer grid.

% V14 (24/11/2022) - Adapting to something closer to the 25 m grid from
% second convergence tests, using a 100 km channel for now. Channel may be
% shortened depending on results of large tidal sim (once I know how far up
% the channel the tidal signal will propogate). May also encounter issues
% with computational efficiency here.
%    This version also adapted to output subdivided dep files for DD sims.

%% DEFINE BATHYMETRY
% Define empty matrix for bathy
dttBathymetry = zeros(4362, 792);

% Set all cells to -999
dttBathymetry(:,:) = -999;

% Channel (slope 1 in 5000)
for ii = 1:4020
    dttBathymetry(ii+1, 392:401) = -15.105 + ii * 0.005;
end

% Beach
dttBathymetry(4002:4021, 1:391) = -20.0;
dttBathymetry(4002:4021, 402:end-1) = -20.0;

% Basin slope (1 in 1000)
for ii = 0:259
    dttBathymetry(ii + 4022, 1:end-1) = 5.0125 + ii * 0.025;
end

% alternative power law profile
% for ii = 0:259
%     dttBathymetry(ii + 4022, 1:end-1) = 5 + ((ii*25) + 12.5)^(1/4);
% end

% Basin flat
dttBathymetry(4282:end-1, 1:end-1) = 11.5;

% alternative power law profile
% dttBathymetry(4282:end-1, 1:end-1) = 13.97469;

% Define random perturbation (0 to 50 mm additional depth)
p = 0.05*rand(4362, 792);

% Remove perturbation from inactive cells, beach, and channel
p(1:4021, 1:391) = 0;
p(1:4021, 402:end-1) = 0;
p(1:4021, 392:401) = 0; % comment this line to INCLUDE perturbation in channel
p(:, end) = 0;
p(end, :) = 0;

% dttBathymetry = dttBathymetry + p; % comment this line to NOT INCLUDE perturbation in the model

% test for impact of first column values (not) equalling second column values
dttBathymetry(:,1) = -999; %dttBathymetry(:,2);

% View bathymetry matrix
figure(101);
imagesc(dttBathymetry, [-20 15]);

figure(102);
surface = surf(-dttBathymetry(4002:end-1, 2:end-1));
surface.EdgeColor = 'none';

%% EXPORT BATHYMETRY
% writematrix(dttBathymetry(4001:end, :), '..\MATLAB export\790x360_WAVENEST.txt', 'Delimiter', ' ') % rename file manually to *.dep

%% EXPORT/MODIFY REDUCED BATHYMETRY FOR VARIED CHANNEL LENGTHS
% dttBathymetryAdapted = dttBathymetry(3572:end, :); % manually adjust start point for desired channel length
% writematrix(dttBathymetryAdapted, '..\MATLAB export\790x789v14.txt', 'Delimiter', ' ') % rename file manually to *.dep

%% OPTIONAL CHANNEL DEPTHS FOR COARSE-GRID (dx = dy = 250m) CHANNEL
% dttBathymetry250mGridChannel_DD20 = zeros(102,3);
% dttBathymetry250mGridChannel_DD21 = zeros(102,3);
% dttBathymetry250mGridChannel_DD22 = zeros(102,3);
% dttBathymetry250mGridChannel_DD23 = zeros(102,3);
% 
% dttBathymetry250mGridChannel_DD20(:,:) = -999;
% dttBathymetry250mGridChannel_DD21(:,:) = -999;
% dttBathymetry250mGridChannel_DD22(:,:) = -999;
% dttBathymetry250mGridChannel_DD23(:,:) = -999;
% 
% for nn = 0:100
%     dttBathymetry250mGridChannel_DD20(nn+1, 1:2) = -0.125 + nn*0.05;
%     dttBathymetry250mGridChannel_DD21(nn+1, 1:2) = -5.125 + nn*0.05;
%     dttBathymetry250mGridChannel_DD22(nn+1, 1:2) = -10.125 + nn*0.05;
%     dttBathymetry250mGridChannel_DD23(nn+1, 1:2) = -15.125 + nn*0.05;
% end

% writematrix(dttBathymetry250mGridChannel_DD20, '..\MATLAB export\DD20_250m.txt', 'Delimiter', ' ');
% writematrix(dttBathymetry250mGridChannel_DD21, '..\MATLAB export\DD21_250m.txt', 'Delimiter', ' ');
% writematrix(dttBathymetry250mGridChannel_DD22, '..\MATLAB export\DD22_250m.txt', 'Delimiter', ' ');
% writematrix(dttBathymetry250mGridChannel_DD23, '..\MATLAB export\DD23_250m.txt', 'Delimiter', ' ');

%% OPTIONAL CHANNEL DEPTHS FOR 50km COARSE-GRID CHANNEL
% dttBathymetry50kmChannel_DD20 = zeros(202,3);
% dttBathymetry50kmChannel_DD20(:,:) = -999;
% for nn = 0:200
%     dttBathymetry50kmChannel_DD20(nn+1, 1:2) = -5.125 + nn*0.05;
% end
% writematrix(dttBathymetry50kmChannel_DD20, '..\MATLAB export\DD20_50km.txt', 'Delimiter', ' ');

%% ADAPT AND EXPORT BATHYMETRY FOR MANUAL DOMAIN DECOMPOSITION METHOD
% % initialize matrices
% dttBathymetryDD = cell(23,1);
% 
% dttBathymetryDD{1} = zeros(360+2,38+2);
% dttBathymetryDD{19} = zeros(360+2,38+2);
% 
% dttBathymetryDD{1}(:,:) = -999;
% dttBathymetryDD{19}(:,:) = -999;
% 
% for nn = 2:18
%     dttBathymetryDD{nn} = zeros(360+2, 42+2);
%     dttBathymetryDD{nn}(:,:) = -999;
% end
% 
% for nn = 20:23
%     dttBathymetryDD{nn} = zeros(1000+2, 10+2);
%     dttBathymetryDD{nn}(:,:) = -999;
% end
% 
% % split full bathymetry to subdomain matrices
% dttBathymetryDD{1}(1:end-1, 1:end-1) = dttBathymetry(4001:4361, 1:39);
% dttBathymetryDD{19}(1:end-1, 1:end-1) = dttBathymetry(4001:4361, 753:791);
% 
% for nn = 2:18
%     dttBathymetryDD{nn}(1:end-1, 1:end-1) = dttBathymetry(4001:4361, nn*42-45:nn*42-3);
% end
% 
% for nn = 20:23
%     dttBathymetryDD{nn}(1:end-1, 1:end-1) = dttBathymetry((nn-19)*1000-999:(nn-19)*1000+1, 391:401);
% end

%%
% writematrix(dttBathymetryDD{1}, '..\MATLAB export\DDB test v2\790x4360v14_DD1.txt', 'Delimiter', ' ');
% writematrix(dttBathymetryDD{2}, '..\MATLAB export\DDB test v2\790x4360v14_DD2.txt', 'Delimiter', ' ');
% writematrix(dttBathymetryDD{3}, '..\MATLAB export\DDB test v2\790x4360v14_DD3.txt', 'Delimiter', ' ');
% writematrix(dttBathymetryDD{4}, '..\MATLAB export\DDB test v2\790x4360v14_DD4.txt', 'Delimiter', ' ');
% writematrix(dttBathymetryDD{5}, '..\MATLAB export\DDB test v2\790x4360v14_DD5.txt', 'Delimiter', ' ');
% writematrix(dttBathymetryDD{6}, '..\MATLAB export\DDB test v2\790x4360v14_DD6.txt', 'Delimiter', ' ');
% writematrix(dttBathymetryDD{7}, '..\MATLAB export\DDB test v2\790x4360v14_DD7.txt', 'Delimiter', ' ');
% writematrix(dttBathymetryDD{8}, '..\MATLAB export\DDB test v2\790x4360v14_DD8.txt', 'Delimiter', ' ');
% writematrix(dttBathymetryDD{9}, '..\MATLAB export\DDB test v2\790x4360v14_DD9.txt', 'Delimiter', ' ');
% writematrix(dttBathymetryDD{10}, '..\MATLAB export\DDB test v2\790x4360v14_DD10.txt', 'Delimiter', ' ');
% writematrix(dttBathymetryDD{11}, '..\MATLAB export\DDB test v2\790x4360v14_DD11.txt', 'Delimiter', ' ');
% writematrix(dttBathymetryDD{12}, '..\MATLAB export\DDB test v2\790x4360v14_DD12.txt', 'Delimiter', ' ');
% writematrix(dttBathymetryDD{13}, '..\MATLAB export\DDB test v2\790x4360v14_DD13.txt', 'Delimiter', ' ');
% writematrix(dttBathymetryDD{14}, '..\MATLAB export\DDB test v2\790x4360v14_DD14.txt', 'Delimiter', ' ');
% writematrix(dttBathymetryDD{15}, '..\MATLAB export\DDB test v2\790x4360v14_DD15.txt', 'Delimiter', ' ');
% writematrix(dttBathymetryDD{16}, '..\MATLAB export\DDB test v2\790x4360v14_DD16.txt', 'Delimiter', ' ');
% writematrix(dttBathymetryDD{17}, '..\MATLAB export\DDB test v2\790x4360v14_DD17.txt', 'Delimiter', ' ');
% writematrix(dttBathymetryDD{18}, '..\MATLAB export\DDB test v2\790x4360v14_DD18.txt', 'Delimiter', ' ');
% writematrix(dttBathymetryDD{19}, '..\MATLAB export\DDB test v2\790x4360v14_DD19.txt', 'Delimiter', ' ');
% writematrix(dttBathymetryDD{23}, '..\MATLAB export\DDB test v2\790x4360v14_DD20.txt', 'Delimiter', ' '); % swapped order of bottom four to correct mistake in inital ordering
% writematrix(dttBathymetryDD{22}, '..\MATLAB export\DDB test v2\790x4360v14_DD21.txt', 'Delimiter', ' ');
% writematrix(dttBathymetryDD{21}, '..\MATLAB export\DDB test v2\790x4360v14_DD22.txt', 'Delimiter', ' ');
% writematrix(dttBathymetryDD{20}, '..\MATLAB export\DDB test v2\790x4360v14_DD23.txt', 'Delimiter', ' ');