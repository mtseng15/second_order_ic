clear
clc

x = readmatrix("oscillator_test1.csv");
x = readmatrix("oscillator_test3.csv");

t = x(:,1)*10^6; % us
u = x(:,2)*10^3;

[pks, indx] = findpeaks(u,'MinPeakDistance', 1000);

u_n = [];
indx2 = [];

for i = 1:1:length(pks)-1
	if t(indx(i+1))-t(indx(i)) > 2
		indx2 = [indx2, indx(i)];
	end
end
pks = u(indx2);
		


figure(3)
clf
hold on
set(gcf, 'color', 'w')
plot(t, u, 'Linewidth', 1)
plot(t(indx2), pks, '*')
% plot(t, x(:,4), 'Linewidth', 1)
% plot(t, x(:,6)*10^3, 'Linewidth', 1)
% plot(t, x(:,8)*10^2, 'Linewidth', 1)
title("Simulation of 2nd Order Integrated Chaotic Oscillator", 'FontSize', 16)
xlabel("t, [\mus]", 'FontSize', 16)
ylabel("V, [mV]", 'FontSize', 16)


% legend("u", "s", 'FontSize', 16)

%axis([0, 80, -80 80])

