clear
clc

t = 0:0.001:4;

u = zeros(1,length(t));

B = 1.5;
w = 2*pi;
u_0 = 1;

u_t = @(u_0, t, w, B) u_0.*exp(-B.*t).*(cos(w.*t)+B/w*sin(w.*t));

figure(130)
clf
plot(t,u_t(u_0, t, w, B), 'Linewidth', 1)
hold on
plot(t, u_0*exp(-B.*t)+0.01, 'r--', 'Linewidth', 1)
plot(t, -u_0*exp(-B.*t)-0.01, 'r--', 'Linewidth', 1)
set(gcf, 'color', 'w')
axis([0 4 -0.6 1.1])
xlabel("t")
ylabel("u(t)")
title("Stable Second Order ODE")
