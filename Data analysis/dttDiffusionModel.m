% Date:     23/10/2023
% Author:   ERS

% This script calculates a simple diffusion model as an approximation of
% sediment spreading under high energy simulations. The model uses a
% Crank-Nicolson approach.

% v2 (09/11/2023) - Modifed to incorporate sediment input as a term in the
% initial matrix M (i.e. add q(x,t) to diff eqn dV/dt = alpha*d^2V/dx^2 +
% <q(x,t)>).

% v3 (15/11/2023) - Extended boundaries to minimise effect of BCs on distn.
% Added alternative, spatially varied diffusion coefficient (currently
% unused as incorrectly applied). Added option for adjusting the width of
% central domain in which to distribute the sediment input.

%% DEFINE VARS
Q = 1280;       % Discharge [m3 s-1]
c = 0.1;        % Sediment concentration [kg m-3]
mf = 175;       % Morfac [-]
rho_b = 1600;   % Bulk density [kg m-3]
rho_s = 2650;    % Grain density [kg m-3]

Q_in = Q*c/rho_b; % [m3 s-1]

dx = 25;        % x grid size [m]
dt = 3.125*60*60*mf*1; % Time step [s] (equivalent to D3D sim output time)

%% IMPORT DATA FOR COMPARISON
load('..\MATLAB datastore\dttW2.0T6.0sedimentSpreading.mat', 'xVol')

%% INITIALISE MODEL
xExtension = 5000;
timeFactor = 1; % 1 = 36 yr
x = zeros((timeFactor*6.48e6*mf/dt)+1, (2*xExtension + 19750)/dx);

inputWidth = 5250; % !!!NEEDS SET MANUALLY!!!

alpha = 0.0065;   % Diffusion coefficient [m^-1 s^-1?] !!!NEEDS SET MANUALLY!!!
alphaVille = 0.0*[fliplr(normpdf(1:(9875+xExtension)/dx, 0, 80)) normpdf(1:(9875+xExtension)/dx, 0, 80)]; % change multiplicative factor at start to use
alphaVar = alpha + alphaVille;

DVar = alphaVar*dt/(2*dx^2);

% % test plots
% figure(999)
% plot(alphaVille, 'k--')
% hold on
% yline(alpha, 'k:')
% plot(alphaVar, 'k')
% hold off
% figure(1000)
% plot(DVar)

% matrix M in tridiagonal form
M = zeros(size(x, 2));

M(1,1:2) = [1/DVar(1)+1 -1];
for ii = 2:size(M,1)-1
    M(ii,ii-1:ii+1) = [-1 1/DVar(ii)+2 -1];
end
M(end, end-1:end) = [-1 1/DVar(end)+1];

% vector d initial form
d = zeros(size(M, 1), size(x, 1));

%% APPLY THOMAS ALGORITHM
% M(1,2) = M(1,2)/M(1,1);
% for ii = 2:size(M,1)-1
%     M(ii,ii+1) = M(ii,ii+1)/(M(ii,ii)-(M(ii,ii-1)*M(ii-1,ii)));
% end
% 
% figure(2)
% heatmap(M(:,:,1))
% 
% d(1,1) = d(1,1)/M(1,1);
% for ii = 2:size(M,1)
%     d(ii,1) = (d(ii,1) - M(ii,ii-1)*d(ii-1,1)/(M(ii,ii) - M(ii,ii-1)*M(ii-1,ii)));
% end

%% solve x by back-subsitution
% x(2, end-1) = d(end, 1);
% for ii = size(d, 1)-1:-1:1
%     x(2, ii+1) = d(ii,1) - M(ii, ii+1)*x(1,ii+1);
% end

%% ALT - USING DOWNLOADED TRIDIAGONAL SOLVER (tridiagonal_matrix)
for tt = 2:1:size(x,1)
    d(1,tt) = (1/DVar(1)-1)*x(tt-1,2) + x(tt-1,2);
    for ii = 2:size(d,1)-1
        d(ii,tt) = x(tt-1,ii-1) + (1/DVar(ii)-2)*x(tt-1,ii) + x(tt-1,ii+1);
    end
    for ii = size(d,1)/2 - ((inputWidth/2)/dx - 1):size(d,1)/2 + (inputWidth/2)/dx % this loop adds sediment input term to middle <inputWidth> m of domain
        d(ii,tt) = d(ii,tt) + (dt/DVar(ii))*Q_in*(dx/inputWidth);
    end
    d(end,tt) = x(tt-1,end-1) + (1/DVar(end)-1)*x(tt-1,end);
    
    x(tt,:) = tridiagonal_matrix(M, d(:,tt));
end

%% ESTIMATE DIFFUSION COEFFICIENTS FROM SMOOTHED D3D DATA
xVolSm = movmean(xVol, 160, 2); % smooths first in x
xVolSm = movmean(xVolSm, 4, 1); % smooths second in t (over single tide)

dvdt = zeros(size(xVol));
for tt = 2:size(xVolSm,1)-1
    for ii = 1:size(xVolSm,2)
        dvdt(tt,ii) = (xVolSm(tt+1,ii) - xVolSm(tt-1,ii))/(2*dt);
    end
end

d2vdx2 = zeros(size(xVol));
for tt = 1:size(xVolSm,1)
    for ii = 2:size(xVolSm, 2)-1
        d2vdx2(tt,ii) = (xVolSm(tt,ii-1) -2*xVolSm(tt,ii) +xVolSm(tt,ii+1))/dx^2;
    end
end

alphaEst = dvdt ./ d2vdx2;

%% DETERMINE RMSE OF DIFF MODEL VS D3D (SECTION PRESENTLY ONLY WORKS FOR dx=25m)
% RMSE from D3D data (non-smoothed)
ae = zeros(size(xVol));
se = zeros(size(xVol));
% mse = zeros(size(x,1),1);
% rmse = zeros(size(x,1),1);

ae(:,:) = x(:,xExtension/dx +1:(19750 + xExtension)/dx) - xVol(:,:);
se(:,:) = ae(:,:).^2;
mse = mean(se, 'all');
rmse = sqrt(mse);

% middle omitted
omitRegionSz = 40; % !!! SET MANUALLY!!! Must be even and <790
mseOuter = mean(se(:,[1:(size(se,2)-omitRegionSz)/2 ((size(se,2)+omitRegionSz)/2)+1:end]), 'all');
rmseOuter = sqrt(mseOuter);

% for tt = 1:size(x,1) % this for analysing x-spreading at each t.
%     ae(tt,:) = x(tt,:) - xVol(tt,:);
%     se(tt,:) = ae(tt,:).^2;
%     mse(tt) = mean(se(tt,:));
%     rmse(tt) = sqrt(mse(tt));
% end
% 
% figure(1)
% hold on
% plot(rmse)
% 
% mean(rmse)

% RMSE from D3D data (smoothed)
aeSm = zeros(size(xVolSm));
seSm = zeros(size(xVolSm));
% mse = zeros(size(x,1),1);
% rmse = zeros(size(x,1),1);

aeSm(:,:) = x(:,xExtension/dx +1:(19750 + xExtension)/dx) - xVolSm(:,:);
seSm(:,:) = aeSm(:,:).^2;
mseSm = mean(seSm, 'all');
rmseSm = sqrt(mseSm);

% middle omitted
mseSmOuter = mean(seSm(:,[1:(size(se,2)-omitRegionSz)/2 ((size(se,2)+omitRegionSz)/2)+1:end]), 'all');
rmseSmOuter = sqrt(mseSmOuter);

rmseTable = table(rmse,rmseOuter,rmseSm,rmseSmOuter,'rowNames',string(alpha))

%% test plots
% figure(400)
% imagesc(xVol)
% figure(401)
% imagesc(xVolSm)
% figure(402)
% plot(xVolSm(end,:))
% 
% figure(403)
% imagesc(dvdt)
% figure(404)
% imagesc(d2vdx2)
% figure(405)
% plot(d2vdx2(end,:))
% % hold on
% % plot(xVolSm(end,:))
% 
% test3 = figure(406);
% imagesc(alphaEst, [-0.01 0.01])
% colorbar

%% DETERMINE STANDARD DEVIATIONS OF MODEL SPREAD
xSecondMomentModel = zeros(size(x));
xSigmaModel = zeros(size(x,1),1);

for tt = 1:size(x,1)
    for nn = 1:size(x,2)
        xSecondMomentModel(tt,nn) = x(tt,nn) * ((9875 - (nn-0.5)*dx))^2; % [m^5]
    end
    xSigmaModel(tt) = sqrt(sum(xSecondMomentModel(tt,:)) / sum(x(tt,:))); % [m]
end

%% MINS AND MAXES OF SEDIMENT DISTN
%(using same threshold as in dttSedimentSpreading)
xFirstModel = zeros(size(x,1),1);
xLastModel = zeros(size(x,1),1);
for tt = 1:size(x,1)
    pp = find(x(tt,:) > 1.2e4 *dx/25, 1, 'first');
    qq = find(x(tt,:) > 1.2e4 *dx/25, 1, 'last');
    if isempty(pp)==1
        xFirstModel(tt) = NaN;
    else
        xFirstModel(tt) = (pp - 0.5)*dx;
    end
    if isempty(qq)==1
        xLastModel(tt) = NaN;
    else
        xLastModel(tt) = (qq + 0.5)*dx;
    end
%     xFirstModel(tt) = (find(x(tt,:) > 1.2e4 *dx/25, 1, 'first') -0.5) *dx;
%     xLastModel(tt) = (find(x(tt,:) > 1.2e4 *dx/25, 1, 'last') +0.5) *dx;
end

%% PLOTS PREAMBLE
dttColorMap = cmocean('-tempo');
dttColorMap2 = cmocean('topo');
dttColorMap3 = cmocean('balance');

xAxisD3D = 0.0125:0.025:19.7375;
xAxis = (0+dx/2000) : dx/1000 : (19.75-dx/2000);
xAxisExt = (-xExtension/1000 + dx/2000) : dx/1000 : (19.75 + xExtension/1000 - dx/2000);
tAxis = 0:3.125*175/(24*365):(size(x,1)-1)*3.125*175/(24*365);

dttColorMapMaxX = 1e6;% *dx/25;
% dttColorMapMaxX = max(x, [], 'all');

%% PLOT DISTN OVER TIME
% modelDistnX = figure(3);
% modelDistnX.Position = [100 100 640 400];
% clf reset
% imagesc(xAxis, tAxis, x*25/dx, [-dttColorMapMaxX dttColorMapMaxX])
% hold on
% xline(9.875, 'k--')
% plot(9.875 + xSigmaModel/1000, tAxis, 'k-.')
% plot(xFirstModel/1000 -10, tAxis, 'k:')
% plot(9.875 - xSigmaModel/1000, tAxis, 'k-.')
% plot(xLastModel/1000 -10, tAxis, 'k:')
% set(gca, 'yDir', 'Normal')
% xticks(0:2:19.75)
% % xlim([0 8.5])
% xlabel('{\itx} [km]')
% yticks(0:6:36)
% ylim([0 36])
% ylabel('{\itt} [yr]')
% grid on
% colormap(dttColorMap3)
% cMod = colorbar;
% cMod.TickLabels = {'-4.0\cdot10^4', '-3.2\cdot10^4', '-2.4\cdot10^4', '-1.6\cdot10^4', '-0.8\cdot10^4', '0.0', '0.8\cdot10^4', '1.6\cdot10^4', '2.4\cdot10^4', '3.2\cdot10^4', '4.0\cdot10^4',};
% cMod.Label.String = 'Net volume change per meter [m^3 m^{-1}]';

% test for x midpoint approaching equilibrium
% figure(4)
% plot(x(:,size(x,2)/2))
% 
% test = gradient(x(:,size(x,2)/2));
% test2 = gradient(test);
% figure(46)
% plot(test)
% plot(test2)

% for comparison to analytical model
% dttDiffusionModelAnalytical; % May need to check setup in this script first
% quarterTideFig = figure(5);
% clf reset
% plot(xAxis, x(end,xExtension/dx+1:(19750+xExtension)/dx)./dx, 'k-')
% hold on
% plot(-(size(V,2)-19750)/2000+1/1000:0.001:size(V,2)/1000-(size(V,2)-19750)/2000, V, 'k--')
% grid on
% xlim([0 19.75])
% legend('numerical', 'analytical')

% convergence test fig
% convFig = figure(6);
% hold on
% plot(xAxis, x(end,:)./dx)
% hold off
% % xlim([0 19.75])
% % legend('6.25 m', '12.5 m', '25 m', '50 m', '125 m', '250 m')

sum(x(end,:))

% pause(1)
% 
% modelDistnAnim = figure(7);
% modelDistnAnim.Position = [0 0 1280 960];
% for tt = 1:size(x,1)
%     clf reset
%     plot(xAxisExt, x(tt,:), 'k-');
%     grid on
%     xlabel('{\itx} [km]')
%     ylim([-10e5/25 5e7/25])
%     ylabel('Net volume change per meter width [m^3 m^{-1}]')
%     text(0.2, 4.3e5/25, ['Time elapsed: ' num2str(((tt-1)*3.125*175/(24*365))*timeFactor, '%.2f') ' yr'], 'fontSize', 24)
% %     pause(0.01)
%     drawnow
% %     dttAnimationFrame(tt) = getframe(gcf);
% end

% pause(1)
% 
% modelDistnAnim2 = figure(8);
% modelDistnAnim2.Position = [0 0 1280 960];
% for tt = 1:(size(x,1)-1)/144:size(x,1)
%     clf reset
%     plot(xAxis, x(tt,xExtension/dx +1:(19750+xExtension)/dx)/dx, 'k-');
%     hold on
%     plot(xAxisD3D, xVol(tt,:)/25, 'r-');
%     plot(xAxisD3D, movmean(xVol(tt,:)/25, 160), 'r-.')
%     grid on
%     xlabel('{\itx} [km]')
%     ylim([-0.5e5/25 4.5e5/25])
%     ylabel('Net volume change per meter width [m^3 m^{-1}]')
%     text(0.2, 4.3e5/25, ['Time elapsed: ' num2str((tt-1)*3.125*175/(24*365), '%.2f') ' yr'], 'fontSize', 24)
% %     pause(0.01)
%     drawnow
% %     dttAnimationFrame((tt+3)/((size(x,1)-1)/144)) = getframe(gcf);
%     hold off;
% end

%% EXPORT FIGURES
% exportgraphics(modelDistnX, ['..\MATLAB export\Final\sedimentSpreading\diffusionModel\dttXSpreadingModel_v2.png'], 'Resolution', 150);
% exportgraphics(quarterTideFig, ['..\MATLAB export\Final\sedimentSpreading\diffusionModel\dttXSpreadingModel_numericalVsAnalytical_36yr_v2.png'], 'Resolution', 150);
% exportgraphics(test, ['..\MATLAB export\Final\sedimentSpreading\diffusionModel\dttXSpreadingModel_estimatedDiffCoeff.png'], 'Resolution', 150);
% exportgraphics(convFig, ['..\MATLAB export\Final\sedimentSpreading\diffusionModel\dttXSpreading_tGridConvergence.png'], 'Resolution', 150);

%% EXPORT ANIMATION
% writerObj = VideoWriter(['..\MATLAB export\Final\sedimentSpreading\diffusionModel\dttDiffusionModelSedimentSpreadingX_gamma=0.011_inputWidth=250m_W2.0T6.0'], 'MPEG-4');
% writerObj.FrameRate = 24; % 6 or 24
% 
% % open the video writer
% open(writerObj);
% 
% % write the frames to the video
% for ii=1:size(dttAnimationFrame, 2)
%     
% %     convert the image to a frame
%     frame = dttAnimationFrame(ii);
%     writeVideo(writerObj, frame);
%     
% end
% 
% % close the writer object
% close(writerObj);