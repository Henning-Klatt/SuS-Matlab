% M.8.3 Symbolisches Durchführen der Laplace-Transformation

% Aufgabe 8.5

% Initialisierung
close; clear; clc;

syms t s sinf omega

x1 = dirac(t);
x2 = sym(1);
x3 = exp(t);

% int integriert symbolisch

X1 = int(x1*exp(-s*t), t, 0, inf)
X2 = int(x2*exp(-s*t), t, 0, inf)
X3 = int(x3*exp(-s*t), t, 0, inf)
