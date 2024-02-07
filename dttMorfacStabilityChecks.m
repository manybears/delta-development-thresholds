% Date:     13/02/2023
% Author:   ERS

% This script estimates stable morfac values for bedload transport
% under various transport formulae (only implemented for Soulby/VR at
% present). Based on Ranasinghe2011.

%% SOULSBY/VR
% INDEPENDENT VARIABLES
u = 1.2;        % [m s-1]
h = 5.0;        % [m]
H_rms = 2.0;    % [m]
T_p = 5;        % [s]

dx = 25;        % [m]
dt = 9;         % [s]

g = 9.81;       % [m s-2]

s = 2650/1000;  % sediment relative density [-]
d_50 = 1.25e-4; % [m]

b = 3.4;        % power of transport formula [-]
z0 = 6e-3;      % roughness length [m]

% DEPENDENT VARIABLES
k = 2*pi / (T_p * sqrt(g*h)); % [rad m-1]

d_90 = 1.5 * d_50; % [m]

C_D = (0.4/(log(h/z0)-1))^2;

u_cr = 0.19 * d_50^0.1 * log10(4*h/d_90);

u_rms = (sqrt(2) * pi * H_rms) / (T_p * sinh(k*h));

S_b = 0.005 * h *(1/(h * (s-1) * g))^1.2 * (sqrt(u^2 + (0.018/C_D * u_rms^2)) - u_cr)^2.4 * u;

% MAXIMUM MORFAC
f_mMax = dx/dt * (1600/2650)*h / (b * S_b)

%% VAN RIJN 1993
% % INDEPENDENT VARIABLES
% nu = 1.3e-6;    % kinematic viscosity of water at 10°C [m2 s-1]
% c_soil = 1600;  % hindered settling reference density [kg m-3]
% 
% % DEPENDENT VARIABLES
% w_s0 = (10*nu) / d_50 * (sqrt(1 + (0.01*(s-1)*g*d_50^3)/nu^2) - 1);
% 
% % w_s = (1 - 
% 
% u_on = 
% 
% v_eff = 
% 
% M = 
% 
% M_e = 
% 
% S_b2 = 0.006 * s*1000 * w_s * d_50 * M^0.5 * M_e^0.7;