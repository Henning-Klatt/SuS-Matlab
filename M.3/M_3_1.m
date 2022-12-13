% M.3.1 Visualisierung der z-Transformation

% Aufgabe 3.1

% Initialisierung
close; clear; clc;

[X,Y] = meshgrid(-3:.1:3,-3:.1:3);

z = X + 1i*Y;
f = z./(z-1);
Xabs = abs(f);
Xarg = angle(f);
figure(1)
mesh(X,Y,Xabs);
colorbar;
figure(2)
mesh(X,Y,Xarg);
colorbar;