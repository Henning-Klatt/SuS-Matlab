% M.2.2 Verschiebung und Spiegelung

% Aufgabe 2.2

% Initialisierung
close; clear; clc;

k = -20:1:40;

y = signal(k);

stem(k, y);

% Erezugt Signal für Projektaufgabe 2.2
function y = signal(k)

y = zeros(size(k));
y(k > 0) = 1./k(k > 0);
y(k < 0) = -1./k(k < 0).^2;

end

