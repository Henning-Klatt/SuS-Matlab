% M.5.6 Eigenfunktionen

% Aufgabe 5.13

% Initialisierung
close; clear; clc;

c = [1 4 8];
b = [0 1 -1];
t = -10:10^-3:20;

delta = zeros(size(t));
delta(t==0) = 10^3;
h = syscont(t,delta,b,c);

s = 1.1;
complexpo = zeros(size(t));
complexpo(1:end) = exp(s*t);
y = syscont(t,complexpo,b,c);
H = 0.0073*complexpo;

figure(1)
plot(t, complexpo)
hold on
plot(t, y, 'g+')
plot(t, H, 'r--')
legend('Eingang', 'Ausgang', 'H*Eingang', 'Location', 'SouthWest')
hold off

s = 10.1+0.5*1i;
complexpo = zeros(size(t));
complexpo(1:end) = exp(s*t);
y = syscont(t,complexpo,b,c);
H = (-0.0887+0.0841*1i)*complexpo;

figure(2)
plot(t, complexpo)
hold on
plot(t, y, 'g+')
plot(t, H, 'r--')
legend('Eingang', 'Ausgang', 'H*Eingang', 'Location', 'SouthWest')
hold off

s = 0.15-0.9*1i;
complexpo = zeros(size(t));
complexpo(1:end) = exp(s*t);
y = syscont(t,complexpo,b,c);
H = (-0.0415-0.1358*1i)*complexpo;

figure(3)
plot(t, complexpo)
hold on
plot(t, y, 'g+')
plot(t, H, 'r--')
legend('Eingang', 'Ausgang', 'H*Eingang', 'Location', 'SouthWest')
hold off