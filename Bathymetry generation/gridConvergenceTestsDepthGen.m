% Date: 01/03/2022
% Author: ERS

% This script defines and exports depth files for use in the delta
% threshold convergence tests. Grid spacings are 27 m, 9 m, 3 m, and 1 m.
% Corresponding grid sizes are 93×129, 279×387, 837×1161, and 2511×3483.

%%% Define bathymetry at 1 m grid spacing (downward positive from MSL)
% Create empty bed level matrices
bathy1m = zeros(2513, 3485);
bathy3m = zeros(839, 1163);
bathy9m = zeros(281, 389);
bathy27m = zeros(95, 131);

% Set all to -999
bathy1m(:, :) = -999;
bathy3m(:, :) = -999;
bathy9m(:, :) = -999;
bathy27m(:, :) = -999;

% Beach region
bathy1m(1:514,1:3484) = -1;

% Beach front
for ii = 0:27
    
    bathy1m(514 + ii, 1:3484) = -1 + ii * 1/27;
    
end

% Initial steep slope
for ii = 0:486

    bathy1m(541 + ii, 1:3484) = ii * 2/486;
    
end

% Main basin slope
for ii = 0:1485
    
    bathy1m(1027 + ii, 1:3484) = 2 + ii * 0.6/1485;
    
end

% Channel base
bathy1m(1:2264, 1648:1837) = 2.5;

% Channel sides
bathy1mChannel = zeros(2513, 3485);
bathy1mChannel(:, :) = -999;

for ii = 0:27
    
    bathy1mChannel(1:2264, 1621 + ii) = ii * 2.5/27;
    bathy1mChannel(1:2264, 1864 - ii) = ii * 2.5/27;
    bathy1mChannel(1:540, 1594 + ii) = -1 + ii * 1/27;
    bathy1mChannel(1:540, 1891 - ii) = -1 + ii * 1/27;
    
end

for ii = 1:2513
    
    for jj = 1:3485
        
        bathy1m(ii, jj) = max(bathy1m(ii,jj), bathy1mChannel(ii,jj));
        
    end
    
end

% Define 3 m grid matrix
for ii = 1:838
    
    for jj = 1:1162
        
        bathy3m(ii, jj) = bathy1m(3*ii - 2, 3*jj - 2);
        
    end
    
end

% Define 9 m grid matrix
for ii = 1:280
    
    for jj = 1:388
        
        bathy9m(ii, jj) = bathy1m(9*ii - 8, 9*jj - 8);
        
    end
    
end

% Define 27 m grid matrix
for ii = 1:94
    
    for jj = 1:130
        
        bathy27m(ii, jj) = bathy1m(27*ii - 26, 27*jj - 26);
        
    end
    
end

%%% Check bathys
figure(101)
imagesc(bathy1m(1:2512, 1:3484));

figure(102)
imagesc(bathy3m(1:838, 1:1162));

figure(103)
imagesc(bathy9m(1:280, 1:388));

figure(104)
imagesc(bathy27m(1:94, 1:130));

%% EXPORT
% 1m grid
% writematrix(bathy1m, '..\MATLAB export\3483x2511.txt', 'Delimiter', ' ')

% 3m grid
% writematrix(bathy3m, '..\MATLAB export\1161x837.txt', 'Delimiter', ' ')

% 9m grid
% writematrix(bathy9m, '..\MATLAB export\387x279.txt', 'Delimiter', ' ')

% 27m grid
% writematrix(bathy27m, '..\MATLAB export\129x93.txt', 'Delimiter', ' ')