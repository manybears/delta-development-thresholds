% Date:     06/11/2023
% Author:   ERS

% This script implements an analytical solution (separation of variables
% and Fourier analysis, plus expansion of eigenfunctions for sediment
% input) of the diffusion equation for the purposes of verifying the simple
% diffusion model in dttDiffusionModel.

% v2 (08/01/2024) - Revised slightly to more closely match ND's derived
% form of the sediment "diffusion" equation.

%% ANALYTICAL SOLN
N = 100;
L = 29750;
T = 3.125 *60 *60 *576 *175; % Time at which to solve [s]
xi = 2650/1600;

q_in = 1280*0.1/2650; % Total sediment grain volume per second [m3 s-1]
q_inBulk = xi*q_in; % Bulk sediment volume per second [m3 s-1]

W = 5000; % Central width over which to distribute q_in [m]
kappa = 0.004; % Downslope "diffusion" coefficient [m2 s-1]

c = zeros(N+1,1);
alfa = zeros(N+1,1);
beta = zeros(N+1,1);

Vn = zeros(N+1,L);
X = zeros(N+1,L);

c(1) = q_in*T/L;

Vn(1,:) = c(1);
for nn = 3:2:N+1 % based on equations done in notebook. Remember, 1st idx nn=1 is n=0, 2nd idx nn=2 is n=1, etc.
    alfa(nn) = (nn-1)^2*kappa*pi^2/L^2;
    beta(nn) = 2*q_in/(W*(nn-1)*pi) *(sin((nn-1)*pi/2*(1+W/L)) - sin((nn-1)*pi/2*(1-W/L)));
    c(nn) = beta(nn)/alfa(nn) *(1 - exp(-alfa(nn)*T));
    for ii=1:L
        X(nn,ii) = cos((nn-1)*pi*ii/L);
        Vn(nn,ii) = c(nn) *X(nn,ii);
    end
end
V = sum(Vn);

%% PLOT RESULT
figure(777)
plot(V)
grid on
hold on

%% EXPORT PLOT
% exportgraphics(analyticalDiffFig, ['..\MATLAB export\Final\sedimentSpreading\diffusionModel\dttXSpreadingModel_Analytical(n=25,50,75,100).png'], 'Resolution', 150);