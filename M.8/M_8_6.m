% M.8.3 Symbolisches Durchführen der Laplace-Transformation

% Aufgabe 8.6

% Initialisierung
close; clear; clc;

syms t s s0 x(t)

laplace(x, t, s)
laplace(x*exp(s0*t), t, s)
laplace(diff(x(t),t), t, s)
