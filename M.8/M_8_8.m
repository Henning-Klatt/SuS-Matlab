% M.8.3 Symbolisches Durchführen der Laplace-Transformation

% Aufgabe 8.8

% Initialisierung
close; clear; clc;

syms R C s t x(t) y(t)
tau = R*C;
Y = laplace(diff(y,t)+(1/tau)*y,t,s)
X = laplace((1/tau)*x,t,s)
H = Y/X;
h = ilaplace(H,t,s)

Y = s+1/tau
X = 1/tau
H = Y/X
h = ilaplace(H,t)