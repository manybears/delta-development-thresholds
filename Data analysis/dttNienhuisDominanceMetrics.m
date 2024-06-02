% Date:     24/01/2023
% Author:   ERS

% This function calculates fluvial, tidal, and wave-driven sediment fluxes
% following the methodology of Nienhuis (2020), which is based upon CERC
% formula (Komar, 1971; Ashton and Murray, 2006).

%%
function [river,wave,tide] = dttNienhuisDominanceMetrics(H_s,T_w,a,Q_river,c)

% FLUVIAL SEDIMENT FLUX
% INDEPENDENT VARIABLES
% Q_river = 1280;     % (Mean) river discharge [m3 s-1]
% c = 0.1;            % Sediment concentration, taken at initial river mouth [kg m-3]

mdot_river = Q_river * c % [kg s-1]

% WAVE-DRIVEN SEDIMENT FLUX (SEE NIENHUIS 2015)
% INDEPENDENT VARIABLES
% H_s = 2.0;          % Offshore significant wave height [m]
% T_w = 5;            % Wave period [s]
phi_0 = -45:5:45; % Wave angle(s) of approach [°]
theta = 0;          % Zero is shore-normal direction of wave propagation [°]

g = 9.81;
gamma = 0.73;       % Wave breaking index [-] (my sims use 0.73)
rho = 1000;         % Water density [kg m^-3]
rho_s = 2650;       % Sediment density [kg m^-3]
rho_bulk = 1600;    % Sediment bulk density [kg m^-3]

% DEPENDENT VARIABLES
relContrib = cosd(phi_0).^16 / sum(cosd(phi_0).^16); % Determined by cos power directional distribution [-]
p = (rho_s - rho_bulk)/rho_s;
K = 0.46 * rho * g^1.5;
n = 1;              % Ratio of group to phase velocity of breaking waves (always 1, surely?) [-]
K_1 = 5.3E-6 * K * (1/(2*n))^1.2 * (sqrt(g*gamma)/(2*pi))^0.2;
% K_2 = (sqrt(g*gamma)/(2*pi()))^(0.2)*K; % Ashton2006
% mdot_s = K_2 * H_s^2.4 * T_w^0.2 * cos(phi_0 - theta)^1.2 * sin(phi_0 - theta) % Ashton2006
mdot_s = K_1 .* rho_s .* (1-p) .*  H_s^2.4 .* T_w^0.2 .* cosd(phi_0 - theta).^1.2 .* sind(phi_0 - theta);
mdot_sNet = conv(mdot_s,relContrib,'same');
mdot_wave = max(mdot_sNet) - min(mdot_sNet)

mdot_wave_simple = 2*2650 * (1-0.4) * K_1 *H_s^(12/5).*T_w^0.2.*0.47; % From Nienhuis's scripts; think this basically assumes mass flux applied at angles of +-45°

% TEST PLOT
% figure(141)
% plot(phi_0, mdot_sNet,'kx')
% grid on

% TIDE-DRIVEN SEDIMENT FLUX (NIENHUIS 2018 ESTIMATION)
% INDEPENDENT VARIABLES
% a = 1.0;                % Tidal amplitude [m]
omega = 1/(12.5*60*60); % Tidal angular velocity [s-1]
omegaR = omega*2*pi;    % Tidal angular velocity [rad s-1]

w_u = 250;              % Upstream channel width, taken at initial river mouth [m]
d_50 = 1.25E-4;         % Median sediment diameter [m]
C = 45;                 % Chezy roughness coefficient [m1/2 s-1]
nu = 1E-6;              % Kinematic viscosity of water, here given for water at ~20°C [m2 s-1]
S = 1/5000;             % Channel slope [m m-1]

% DEPENDENT VARIABLES
d_u = (((Q_river/(w_u*C))^2)/S)^(1/3); % Upstream channel depth (using Nienhuis' script formula, as it's very close to simulation value) [m]
beta = w_u/d_u;         % Channel width-to-depth ratio [-]
R = (rho_s-rho)/1000;   % Submerged specific gravity [-]
d_star = ((g*R)/nu^2)^(1/3) * d_50; % Dimensionless grain size [-]
theta_crit = 0.3/(1+1.2*d_star) + 0.055*(1-exp(-0.02 * d_star)); % Critical Shield's parameter [-]
k = omegaR / (sqrt(theta_crit*d_50) * R * C * pi); % Proportionality coefficient [m-1]

Q_wtide = 0.5 * omegaR * k * a^2 *(d_u/S)^2 * beta; % Representative tidal fluid flux [m3 s-1]

mdot_tide = Q_wtide * c % Representative tidal sediment flux [kg s-1]

% clear phi_0 g gamma rho rho_s rho_bulk p K n K_1 theta omega d_u w_u S c d_50 C nu beta R d_star theta_crit k Q_wtide;

% PROPORTIONAL DOMINANCE
river = mdot_river/(mdot_river + mdot_wave + mdot_tide);
wave = mdot_wave/(mdot_river + mdot_wave + mdot_tide);
tide = mdot_tide/(mdot_river + mdot_wave + mdot_tide);

end

%% qtide
% %see also this table that is a supplementary table for the 2018 GRL paper 
% %https://www.dropbox.com/s/uk94kkqcb1vnbbo/Nienhuis_TidalDeltas_S1_New.xlsx?dl=0
% 
% w_upstream = 6*Q_river^0.5; %channel width upstream (m), example hydraulic geometry
% 
% qt = mdot_river/1600/w_u; %m2/s
% cf = g/C^2; %non dimensional friction from chezy
% rb = (cf*(Q_river/w_u)^2/g)^(1/3);
% % slope = 5e-5; %((qt / (sqrt(rel_dens*g*d50)*d50)/(0.05/cf)).^(1/2.5)*rel_dens*d50/rb).^1.5; %slope estimate based on equilibrium normal flow profile from gary parker ebook ch 14.
% d_upstream = (cf*(Q_river/w_u)^2/g/S)^(1/3); %water depth at bankful
% 
% beta = 100; %w_upstream/d_upstream; %channel_aspect_ratio at mouth
% 
% k_tide = omega*2*pi/(sqrt(d_50/0.2)*1.65*C*pi); %cross-sectional area relationship k, see nienhuis GRL 2018
% d_length = d_upstream / S; %tidal intrusion length estimate (m)
% 
% Qtide_w = a^2*k_tide*d_length^2*beta*(omega*2*pi)*0.5+(omega*2*pi)*a*d_length*w_u; %qtide in water discharge m3/s
% Qtide = Qtide_w*mdot_river / Q_river %qtide in kg/s assuming sed concentration of tidal transport = sed concentration of river