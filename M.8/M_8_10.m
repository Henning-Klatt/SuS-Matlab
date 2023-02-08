% M.8.3 Symbolisches Durchführen der Laplace-Transformation

% Aufgabe 8.10

% Initialisierung
close; clear; clc;

D = 0.5;
omega = 2;
H = @(s) s^2./(s^2+2*omega+D*s+omega^2);

[X,Y] = meshgrid(-3:.1:3,-3:.1:3);
z = X+1i*Y;
Heval = H(z);
Habs = abs(Heval);
Hangle = angle(Heval);
figure(1)
surf(X, Y, Habs)
figure(2)
mesh(X, Y, Hangle)

Hcut = Heval;
Hcut(real(z)>0) = NaN+1i*NaN;
Hcutabs = abs(Hcut);
Hcutangle = angle(Hcut);
figure(3)
surf(X, Y, Hcutabs)
figure(4)
mesh(X, Y, Hcutangle)
