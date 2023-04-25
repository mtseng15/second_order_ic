
%% Solvable Chaos Sytem
% Cleaner implementation of the extended system. 
% Counting phase shift.
%

clear
clf
clc


% Constants
% !!!! Time step must be an even divivisor of 1 for clean plots!!!!
k = 1;
w = 2*pi*k;
B = log(2)-0.00001;
N = 500; 								% Number of clock periods
dt = 0.0001; 							% time step 
appx_samples_per_symbol = 20;
t = 0:dt:N;

% Create the arrays
s_n = zeros(1,N); 		% symbol array
u_n = zeros(1,N); 		% u at n array
l_n = zeros(1,N); 		% u at n array
u_n_half = zeros(1,N); 		% u at n array
u = zeros(1,length(t));	% u time array
du = zeros(1,length(t));	% du/dt time array
d2u = zeros(1,length(t));	% d2u/dt2 time array
s_t = zeros(1,length(t));	% u time array

% Set initial conditions
u0 = 1.1; 					% initial condition
u_n(1) = u0;
s0 = sign(u0);
s_n(1) = s0;

% Create the functions
% Analog time function
u_t = @(s_n, u_n, B, t, n, w, m) s_n + (u_n-s_n).*exp(B.*(t-n+m/2)).*(cos(w.*t-pi*m) - (B/w).*sin(w.*t-pi*m));
u_dt = @(s_n, u_n, B, t, n, w, m)  -((w^2+B^2)/w)*(u_n-s_n)*exp(B*(t-n+m/2))*sin(w*t-pi*m);
u_d2t = @(s_n, u_n, B, t, n, w, m)  -((w^2+B^2)/w)*(u_n-s_n)*exp(B*(t-n+m/2))*(B*sin(w*t-pi*m)+w*cos(w*t-pi*m));
% Digital iterative function
u_n1 = @(u_n, s_n, B) exp(B)*u_n-(exp(B)-1)*s_n;
u_n1_half = @(u_n, s_n, B) -exp(B/2)*u_n+(exp(B/2)+1)*s_n;


% Discrete iterators
n = 1; % The discrete time 
m = 0; % The phase counter
t_last = 0;

% Iterate over all time
for i = 2:1:length(t)
	% Iterate the analog
	u(i) = u_t(s_n(n), u_n(n), B, t(i), n-1, w, m);
	du(i) = u_dt(s_n(n), u_n(n), B, t(i), n-1, w, m);
	d2u(i) = u_d2t(s_n(n), u_n(n), B, t(i), n-1, w, m);
	s_t(i) = s_n(n);

	% If the derivitive is zero
	if abs(du(i)) < 1e-10
		% If it's the inside curves.
		% if s_n(n) == -1 & u(i) > -1 | s_n(n) == 1 & u(i) < 1
			% If the time diff is a full period, then iterate a full period
			% If the time diff is a half period, then iterate a half period
			% if abs(u_n(n)) <= 1
			%  	u_n(n+1) = u_n1(u_n(n), s_n(n), B);
			% else
			%  	u_n(n+1) = u_n1_half(u_n(n), s_n(n), B);
			% 	m = m+1;
			% 	l_n(n+1) = 1;
			% end
			
			u_n(n+1) = u_n1_half(u_n(n), s_n(n), B);
			m = m+1;
			l_n(n+1) = 1;

			% Set the forcing function
			s_n(n+1) = sign(u(i));

			% Debug printing
			% fprintf("t = %4.4f, n = %2.1f, du = %4.4e, s_n = %d, u = %4.4f, u_n = %4.4f\n", t(i), n, du(i), s_n(n+1), u(i), u_n(n+1))

			% Iterate the map counter k
			n = n + 1;
			t_last = t(i);


		%end
	end

end


% Plot The results
figure(5)
tiledlayout(4,4, 'TileSpacing', 'compact', 'Padding', 'compact');
set(gcf, 'color', 'w')
set(gcf, 'Position', [0, 0, 1080, 1080]);

nexttile([2 4])
plot(t, u, 'LineWidth', 1)
hold on
% plot(t, 0.2*du, '*', 'LineWidth', 0.1)
plot(t, s_t, 'LineWidth', 1)
plot(t, du*4/20, 'k', 'LineWidth', 1)
% yline(1)
% yline(-1)
yline(0)
axis([0 6 -3 3])
title("Time Series")
xlabel("t [s]")
ylabel("Amplitued [V]")
legend("u", "s", "du/dt")
zoom xon



nexttile([2 2])
plot3(u,du,d2u)
title("Phase Space")
xlabel("u")
ylabel("du/dt")
zlabel("d2u/dt2")

nexttile([2 2])
%plot(u_n(1:end-1), u_n(2:end), '*', 'LineWidth', 1)
%cobweb(u_n, l_n, 0)
plot(u_n(1:end-1), u_n(2:end), '*')
title("Map")
xlabel("x_{n-1}")
ylabel("x_n")
yline(0)
xline(0)

