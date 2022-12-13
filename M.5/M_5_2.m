% M.5.2 Verschiebung, Spiegelung und Zeitskalierung

% Aufgabe 5.2

% Initialisierung
close; clear; clc;

x = @(t) t.*exp((-t.^2)/20);
t = -20:10^-3:20;

% Aufgabe 5.3
figure('Name','signalc', 'NumberTitle','off');
plot(t, x(t));
hold on;
plot(t, x(-t));
plot(t, x(t-5));
plot(t, x(5-t));
legend('x(t)', 'x(-t)', 'x(t-5)', 'x(5-t)')
hold off;