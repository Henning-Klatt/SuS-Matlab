% M.8.3 Symbolisches Durchführen der Laplace-Transformation

% Aufgabe 8.7

% Initialisierung
close; clear; clc;

syms s
X = 1/(s^3+5*s^2+8*s+4);

Xpf = sympartfrac(X,s)
Xpfc = collect(Xpf)

x = ilaplace(X,s)