% M.2.3 Verschiebung und Spiegelung

k = -20:1:40;

% x[k]
y = signal(k);
figure('Name','x[k]', 'NumberTitle','off');
stem(k, y);

% x[-k]
y = signal(-k);
figure('Name','x[-k]', 'NumberTitle','off');
stem(k, y);

% x[k-3]
y = signal(k-3);
figure('Name','x[k-3]', 'NumberTitle','off');
stem(k, y);

% x[4-k] = x[(-k-4)]
y = signal(4-k);
figure('Name','x[4-k]', 'NumberTitle','off');
stem(k, y);

% Erezugt Signal für Projektaufgabe 2.3
function [y] = signal(k)

y = zeros(size(k));
y(k > 0) = 1./k(k > 0);
y(k < 0) = -1./k(k < 0).^2;

end