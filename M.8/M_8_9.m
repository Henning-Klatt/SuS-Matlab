% M.8.3 Symbolisches Durchführen der Laplace-Transformation

% Aufgabe 8.9

% Initialisierung
close; clear; clc;

syms s t

Y(s) = s^2+4*s+8;
X(s) = s-1;
H = Y/X;
h = ilaplace(H)