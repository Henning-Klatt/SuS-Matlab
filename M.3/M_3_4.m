% M.3.2 Symbolisches Durchführen von Spektraltransformationen

% Aufgabe 3.4

% Initialisierung
close; clear; clc;

syms k z;

f = kroneckerDelta(k, 0);

x1 = symsum(f, k, 0, Inf);
x2 = symsum(-f, k, -Inf, 0);

X1 = ztrans(x1, k, z);
X2 = ztrans(x2, k, z);