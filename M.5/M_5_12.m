% M.5.4 LTI-Systeme beschrieben durch Differentialgleichungen

% Aufgabe 5.12

% Initialisierung
close; clear; clc;

c = [1 4 8];
b = [0 1 -1];
t = 0:10^-3:4;
delta = zeros(size(t));
delta(t==0) = 10^3;
y = syscont(t, delta, b, c);

%theoretische Lösung
yth = exp(-2*t).*(cos(2*t)-(3/2)*sin(2*t));

figure(1)
plot(t, y)
hold on
plot(t, yth, 'r--')
legend('FIR', 'solution')
hold off