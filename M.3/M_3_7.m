% M.3.2 Symbolisches Durchführen von Spektraltransformationen

% Aufgabe 3.7

% Initialisierung
close; clear; clc;

syms z k;

X = 4*z/(z^4+2*z^3+2*z^2+2*z+1);

Xfrac = partfrac(X, z);

Xfraccollect = collect(Xfrac);

Z = iztrans(X);
Z = simplify(Z);

Zfrac = iztrans(Xfrac);
Zfrac = simplify(Zfrac);