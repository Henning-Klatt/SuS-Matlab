% M.3.1 Visualisierung der z-Transformation

% Aufgabe 3.2

% Initialisierung
close; clear; clc;

[X, Y] = meshgrid(-3:.1:3, -3:.1:3);

z = X + 1i * Y;

f = zeros(size(z));
a = [1 2 3 2 1];

for k=1:length(a)
    f = f + a(k)*z.^-(k-1);
end

Xabs = abs(f);
Xarg = angle(f);
figure(1)
mesh(X,Y,Xabs);
figure(2)
mesh(X,Y,Xarg);