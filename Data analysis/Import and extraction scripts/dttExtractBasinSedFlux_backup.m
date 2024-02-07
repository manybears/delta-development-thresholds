% Date:     10/02/2023
% Author:   ERS

% This script extracts sediment fluxes from all basin observational
% cross-sections in DD simulations.

% !!!NOTE: all cumulative fluxes counted from onset of morphodynamic
% development only

%% EXTRACT SEDIMENT FLUXES
% CUMULATIVE BEDLOAD
if exist('dttCumBedloadFlux', 'var') ==0
    dttCumBedloadFlux = cell(size(dttHistDataDD, 1)-1, 1);
    dttCumBedloadFluxInitial = cell(size(dttHistDataDD, 1)-1, 1);
    dttCumBedloadFluxFinal = cell(size(dttHistDataDD, 1)-1, 1);
    for nn = 1:19 % amend finish point as required
        dttCumBedloadFluxInitial{nn} = vs_let(dttHistDataDD{nn}, 'his-sed-series', {101}, 'SBTRC');
        dttCumBedloadFluxFinal{nn} = vs_let(dttHistDataDD{nn}, 'his-sed-series', {floor((size(dttBedLevel, 1)-1)*6.25+1)}, 'SBTRC'); %2501 @ mf700
        dttCumBedloadFlux{nn} = dttCumBedloadFluxFinal{nn} - dttCumBedloadFluxInitial{nn};
    end
else
end

% CUMULATIVE SUSPENDED LOAD
if exist('dttCumSuspFlux', 'var') ==0
    dttCumSuspFlux = cell(size(dttHistDataDD, 1)-1, 1);
    dttCumSuspFluxInitial = cell(size(dttHistDataDD, 1)-1, 1);
    dttCumSuspFluxFinal = cell(size(dttHistDataDD, 1)-1, 1);
    for nn = 1:19 % amend finish point as required
        dttCumSuspFluxInitial{nn} = vs_let(dttHistDataDD{nn}, 'his-sed-series', {101}, 'SSTRC');
        dttCumSuspFluxFinal{nn} = vs_let(dttHistDataDD{nn}, 'his-sed-series', {floor((size(dttBedLevel, 1)-1)*6.25+1)}, 'SSTRC'); %2501 @ mf700
        dttCumSuspFlux{nn} = dttCumSuspFluxFinal{nn} - dttCumSuspFluxInitial{nn};
    end
else
end

%% CUMULATIVE TRANSPORT PER BOUNDARY
% WEST
dttCumBedloadFluxWest = dttCumBedloadFlux{1}(2);
dttCumSuspFluxWest = dttCumSuspFlux{1}(2);
dttCumTotalFluxWest = dttCumBedloadFluxWest + dttCumSuspFluxWest;

% EAST
dttCumBedloadFluxEast = dttCumBedloadFlux{19}(2);
dttCumSuspFluxEast = dttCumSuspFlux{19}(2);
dttCumTotalFluxEast = dttCumBedloadFluxEast + dttCumSuspFluxEast;

% NORTH
dttCumBedloadFluxNorth = 0;
dttCumSuspFluxNorth = 0;
for nn = 1:19
    bedFlux = dttCumBedloadFlux{nn}(1);
    dttCumBedloadFluxNorth = dttCumBedloadFluxNorth + bedFlux;
    suspFlux = dttCumSuspFlux{nn}(1);
    dttCumSuspFluxNorth = dttCumSuspFluxNorth + suspFlux;
end
dttCumTotalFluxNorth = dttCumBedloadFluxNorth + dttCumSuspFluxNorth;

% RIVER MOUTH
if size(dttCumBedloadFlux{10}, 2) ==2
    dttCumBedloadFluxRiver = dttCumBedloadFlux{10}(2);
    dttCumSuspFluxRiver = dttCumSuspFlux{10}(2);
    dttCumTotalFluxRiver = dttCumBedloadFluxRiver + dttCumSuspFluxRiver;
else
end

%% CLEAR UNUSED WORKSPACE VARS
% clear bedFlux suspFlux dttCumBedloadFlux dttCumSuspFlux dttCumBedloadFluxInitial dttCumSuspFluxInitial dttCumBedloadFluxFinal dttCumSuspFluxFinal;