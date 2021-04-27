%% % time-frequency representation of chirplet atom

clear
clc
close all

% parameter
fc=250000;

Distance=0.6;
c_sg=5143.86;
t_s0=Distance/c_sg;


sigma=1/fc;
  
omega_s0=fc*2*pi; 

fs=10*fc;
Ts=1/fs;
duration_S=sigma*4;
t=t_s0+(-duration_S : Ts : duration_S);


% figure one
sigma=1/fc;
g_t=(1/((pi*sigma*sigma)^0.25))*exp(-((t-t_s0)/sigma).^2/2).*exp(-1i*(omega_s0*50000*(t-t_s0).^2+omega_s0*(t-t_s0)));



% % figure two
% sigma=1/fc*6/10;
% t=t_s0+(-duration_S*0.5 : Ts : duration_S*0.5);
% g_t=(1/((pi*sigma*sigma)^0.25))*exp(-((t-t_s0)/sigma).^2/2).*exp(-1i*(omega_s0*0.5*(t-t_s0)));


figure;
subplot(3,1,1)
plot(t,g_t)
subplot(3,1,2)
plot(t,real(g_t))
subplot(3,1,3)
plot(t,imag(g_t))
figure;
tfrwv(g_t');




