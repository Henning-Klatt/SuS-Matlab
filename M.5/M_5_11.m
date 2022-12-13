% M.5.4 LTI-Systeme beschrieben durch Differentialgleichungen

% Aufgabe 5.11

% Initialisierung
close; clear; clc;

R = 500;
C = 10^-3;

tau = R*C;

c = [1 1/tau];
b = [0 1/tau];

t = 0:10^-3:4;
delta = zeros(size(t));
delta(t==0) = 10^3;
y = syscont(t,delta,b,c);

%theoretische Lösung
yth = (1/tau)*exp(-t/tau);

figure(1)
plot(t, y)
hold on
plot(t, yth, 'r--')
legend('FIR', 'solution')
hold off
