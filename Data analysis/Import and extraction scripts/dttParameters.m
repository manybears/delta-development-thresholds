% Date: 25/04/2022
% Author: ERS

% This script defines all general parameters for use in DTT analysis. Must
% be run after map file import and bed level extraction.

%% ALL PARAMETERS
dttStart = 1;
dttEnd = size(dttBedLevel, 1);

if exist('dt','var') == 0
    if exist('dttMapData', 'var') == 1
        dt = vs_get(dttMapData, 'map-const', 'DT', []); % [mins]
    elseif exist('dttMapDataDD', 'var') == 1
        dt = vs_get(dttMapDataDD{1}, 'map-const', 'DT', []); % [mins]
    else
    end
else
end

if exist('dx','var') == 0
    if exist('dttMapData', 'var') == 1
        xcor = vs_get(dttMapData, 'map-const', 'XCOR', []); % [m]
    elseif exist('dttMapDataDD', 'var') == 1
        xcor = vs_get(dttMapDataDD{1}, 'map-const', 'XCOR', []); % [m]
    else
    end
    dx = xcor(end-1,2);
else
end

if exist('dy','var') == 0
    if exist('dttMapData', 'var') == 1
        ycor = vs_get(dttMapData, 'map-const', 'YCOR', []); % [m]
    elseif exist('dttMapDataDD', 'var') == 1
        ycor = vs_get(dttMapDataDD{1}, 'map-const', 'YCOR', []); % [m]
    else
    end
    dy = ycor(end-1,end-1) - ycor(end-2,end-1);
else
end

if exist('mf','var') == 0
    if exist('dttMapData', 'var') == 1
        mf = vs_get(dttMapData, 'map-infsed-serie', {1}, 'MORFAC'); % [m]
    elseif exist('dttMapDataDD', 'var') == 1
        mf = vs_get(dttMapDataDD{1}, 'map-infsed-serie', {1}, 'MORFAC'); % [m]
    else
    end
else
end

% CLEAR REDUNDANT WORKSPACE VARS
clear xcor ycor;