function V = dttDiffusionModelAnalyticalFunc(N,L,W,kappa,T,Q,c)
%DiffusionModel This function estimates alongshore sediment distribution
%for high energy coasts
%   Based on method of eigenfunction expansion, applied to PDE derived from
%   basic 2D Exner equation (see accompanying paper). N is number of
%   Fourier elements to include [-]; L is alongshore domain width [m]; W is
%   distributive width for Q_sed [m]; kappa is a constant diffusion
%   coefficient representing alongshore sediment transport due to waves and
%   tides [m^2 s^-1]; Q is river water flux [m3 s-1]; c is sediment
%   concentration [kg m^-3]
xi = 2650/1600;
q_in = Q*c/2650;

c = zeros(N+1,1);
alfa = zeros(N+1,1);
beta = zeros(N+1,1);

Vn = zeros(N+1,L);
X = zeros(N+1,L);

c(1) = q_in*T/L;

Vn(1,:) = c(1);
for nn = 3:2:N+1 % Remember, 1st idx nn=1 is n=0, 2nd idx nn=2 is n=1, etc.
    alfa(nn) = (nn-1)^2*kappa*pi^2/L^2;
    beta(nn) = 2*q_in/(W*(nn-1)*pi) *(sin((nn-1)*pi/2*(1+W/L)) - sin((nn-1)*pi/2*(1-W/L)));
    c(nn) = beta(nn)/alfa(nn) *(1 - exp(-alfa(nn)*T));
    for ii=1:L
        X(nn,ii) = cos((nn-1)*pi*ii/L);
        Vn(nn,ii) = c(nn) *X(nn,ii);
    end
end
V = sum(Vn);
end