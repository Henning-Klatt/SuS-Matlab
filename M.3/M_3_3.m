% M.3.2 Symbolisches Durchführen von Spektraltransformationen

% Aufgabe 3.3

% Initialisierung
close; clear; clc;

omega = pi / 4;

zinf = 0.5 * (1+1i);
syms x1 x2 x3 x4 x5 x6 k z

x1 = kroneckerDelta(k,0);
x2 = 1;
x3 = zinf^k;
x4 = k * zinf^k;
x5 = sin(omega*k);
x6 = 1 / factorial(k);

X1 = ztrans(x1, k, z);
X2 = ztrans(x2, k, z);
X3 = ztrans(x3, k, z);
X4 = ztrans(x4, k, z);
X5 = ztrans(x5, k, z);
X6 = ztrans(x6, k, z);