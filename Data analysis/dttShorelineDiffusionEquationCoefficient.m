%% INDEPENDENT VARIABLES
H_s = 2.0; %[m]
T_p = 5; %[s]
alpha_b = 5*(pi/180); %[rads]
m_b = 0.01; %[-]
D = 1.25e-4; %[m]

d_d = 3; %[m]

%% DEPENDENT VARIABLES
H_sb = H_s; %[m]
d_c = 8.9 * H_s; %[m]
d_p = d_d + d_c; %[m]

%% ALONGSHORE SED FLUX
Q = 7.3/3600 * H_sb^2 * T_p^1.5 * m_b^0.75 * D^-0.25 * sin(2*alpha_b)^0.6

%% DIFFUSION COEFFICIENT KAPPA
kappa = Q/(alpha_b * d_p)