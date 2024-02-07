% Date:     10/02/2023
% Author:   ERS

% This script extracts sediment fluxes from all basin observational
% cross-sections in DD simulations.

% !!!NOTE: all cumulative fluxes counted during morphodynamic spinup. May
% need adjusted to  remove sediments counted during spinup depending on
% intended use.

%% EXTRACT SEDIMENT FLUXES
% CUMULATIVE BEDLOAD
if exist('dttCumBedloadFlux', 'var') ==0
    dttCumBedloadFlux = cell(size(dttHistDataDD, 1)-1, 1);
    for nn = 1:19 % amend finish point as required
        dttCumBedloadFlux{nn} = vs_let(dttHistDataDD{nn}, 'his-sed-series', 'SBTRC');
%         dttCumBedloadFlux{nn}(:,:) = dttCumBedloadFlux{nn}(:,:) - dttCumBedloadFlux{nn}(801, :); % this line corrects cumulative sediment count by subtracting cumulative flux at end of model spinup
    end
else
end

% CUMULATIVE SUSPENDED LOAD
if exist('dttCumSuspFlux', 'var') ==0
    dttCumSuspFlux = cell(size(dttHistDataDD, 1)-1, 1);
    for nn = 1:19 % amend finish point as required
        dttCumSuspFlux{nn} = vs_let(dttHistDataDD{nn}, 'his-sed-series', 'SSTRC');
%         dttCumSuspFlux{nn}(:,:) = dttCumSuspFlux{nn}(:,:) - dttCumSuspFlux{nn}(801, :); % this line corrects cumulative sediment count by subtracting cumulative flux at end of model spinup
    end
else
end

%% CUMULATIVE TRANSPORT PER BOUNDARY
% timePoint = floor(((size(dttBedLevel, 1)-1) * 3.125/0.5)+1); % this approach allows for analysis of incomplete simulations

% WEST
dttCumBedloadFluxWest = dttCumBedloadFlux{1}(1:end,2);
dttCumSuspFluxWest = dttCumSuspFlux{1}(1:end,2);
dttCumTotalFluxWest = dttCumBedloadFluxWest + dttCumSuspFluxWest;

% EAST
dttCumBedloadFluxEast = dttCumBedloadFlux{19}(1:end,2);
dttCumSuspFluxEast = dttCumSuspFlux{19}(1:end,2);
dttCumTotalFluxEast = dttCumBedloadFluxEast + dttCumSuspFluxEast;

% NORTH
dttCumBedloadFluxNorth = 0;
dttCumSuspFluxNorth = 0;
for nn = 1:19
    dttCumBedloadFluxNorth = dttCumBedloadFluxNorth + dttCumBedloadFlux{nn}(1:end,1);
    dttCumSuspFluxNorth = dttCumSuspFluxNorth + dttCumSuspFlux{nn}(1:end,1);
end
dttCumTotalFluxNorth = dttCumBedloadFluxNorth + dttCumSuspFluxNorth;

% RIVER MOUTH
if size(dttCumBedloadFlux{10}, 2) ==2
    dttCumBedloadFluxRiver = dttCumBedloadFlux{10}(1:end,2);
    dttCumSuspFluxRiver = dttCumSuspFlux{10}(1:end,2);
    dttCumTotalFluxRiver = dttCumBedloadFluxRiver + dttCumSuspFluxRiver;
else
end

%% CLEAR UNUSED WORKSPACE VARS
% clear bedFlux suspFlux dttCumBedloadFlux dttCumSuspFlux dttCumBedloadFluxInitial dttCumSuspFluxInitial dttCumBedloadFluxFinal dttCumSuspFluxFinal;