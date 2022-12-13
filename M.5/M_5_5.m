% M.5.2 Verschiebung, Spiegelung und Zeitskalierung

% Aufgabe 5.5

% Initialisierung
close; clear; clc;

x = @(t) t.*exp((-t.^2)/20);
t = -20:10^-3:20;
xg = 0.5*(x(t) + x(-t));
xu = 0.5*(x(t) - x(-t));

figure(1)
plot(t, xu)
hold on
plot(t, xg)
legend('ungerade', 'gerade')
hold off

xv5 = @(t) x(t-5);
xg = 0.5*(xv5(t) + xv5(-t));
xu = 0.5*(xv5(t) - xv5(-t));
figure(2)
plot(t, xu)
hold on
plot(t, xg)
legend('ungerade', 'gerade')
hold off

xv12 = @(t) x(t-12);
xg = 0.5*(xv12(t)+xv12(-t));
xu = 0.5*(xv12(t)-xv12(-t));
figure(3)
plot(t, xu)
hold on
plot(t, xg)
legend('ungerade', 'gerade')
hold off