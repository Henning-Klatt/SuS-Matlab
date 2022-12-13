% M.5.2 Verschiebung, Spiegelung und Zeitskalierung

% Aufgabe 5.4

% Initialisierung
close; clear; clc;

x=@(t) t.*exp((-t.^2)/20);
t=-20:10^-3:20;

figure(1)
plot(t, x(t));
hold on
plot(t, x(2*t));
plot(t, x(0.5*t));
plot(t, x(-0.5*t));
legend('x(t)', 'x(2*t)', 'x(0.5*t)', 'x(-0.5*t)')
hold off