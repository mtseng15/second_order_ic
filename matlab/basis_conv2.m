clear

clc

B = log(2);
w = 2*pi;

dt = 0.002;
t = -8:dt:2;
u = zeros(1,length(t));
little_p = zeros(1,length(t));
s_t = zeros(1,length(t));

P_1 = @(t, B, w) (1+exp(-B/2)).*exp(B.*t).*(cos(w.*t)-B/w.*sin(w.*t));
P_2 = @(t, B, w) 1+exp(B.*(t-1/2)).*(cos(w.*t)-B/w.*sin(w.*t));
% p = @(t, B, w) -((w^2 + B^2)/w)*sin(w*t)*exp(B*t);
% p = @(t, B, w) -(sqrt(1+B^2/w^2))*sin(w*t+atan(B/w)-pi/2)*(1+exp(-B/2))*exp(B*t);

for i = 1:1:length(t)
	if t(i) < 0
		u(i) = P_1(t(i),B,w);
		% little_p(i) = p(t(i), B, w);
		s_t(i) = 0;
	elseif 0 <= t(i) & t(i) < 0.5
		u(i) = P_2(t(i),B,w);
		% little_p(i) = p(t(i), B, w);
		s_t(i) = 1;
	end


end

figure(19)
clf
set(gcf, 'color', 'w')
plot(t,u, 'Linewidth', 1)
hold on 
plot(t, s_t, 'Linewidth', 1)
xlabel("t", 'FontSize', 16)
ylabel("Amplitude", 'FontSize', 16)
title("Basis Function for 2nd Order Chaotic Oscillator", 'FontSize', 16)
% legend("Basis Function", "Input Pulse", 'FontSize', 16, 'Location', 'NorthWest')

% plot(t, -u-circshift(u, 0.5/dt)+circshift(u, 1/dt)+circshift(u, 1.5/dt))
% plot(t, little_p)
