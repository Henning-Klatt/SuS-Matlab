% M.8.3 Symbolisches Durchführen der Laplace-Transformation

% Aufgabe 8.4

% Initialisierung
close; clear; clc;

syms t sinf omega

x1 = dirac(t);
x2 = sym(1);
x3 = t;
x4 = exp(sinf*t);
x5 = t*exp(sinf*t);
x6 = sin(omega*t);

X1 = laplace(x1)
X2 = laplace(x2)
X3 = laplace(x3)
X4 = laplace(x4)
X5 = laplace(x5)
X6 = laplace(x6)
