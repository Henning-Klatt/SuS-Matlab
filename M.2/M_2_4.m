% M.2.2 Verschiebung und Spiegelung

% Aufgabe 2.4

% Initialisierung
close; clear; clc;

k = -20:1:40;
x = signal(k);
xs = signal(-k);

index = 1:size(k,2);

% Gerader Anteil
xg = 0.5*(x+xs);
figure('Name','Gerader Anteil', 'NumberTitle','off');
stem(k, xg);

% Ungerader Anteil
xu = 0.5*(x-xs);
figure('Name','Ungerader Anteil', 'NumberTitle','off');
stem(k,xu);


% Erezugt Signal für Projektaufgabe 2.4
function y = signal(k)

y = zeros(size(k));
y(k > 0) = 1./k(k > 0);
y(k < 0) = -1./k(k < 0).^2;

end