% M.3.2 Symbolisches Durchführen von Spektraltransformationen

% Aufgabe 3.5

% Initialisierung
close; clear; clc;

sysms k z zinf;

% ztrans(sym('x(k)'), k, z)

ztrans(sym(k), k, z);
ztrans(sym(k-1), k, z);
ztrans(sym(k+2), k, z);
ztrans(sym(k)*zinf^k, k, z);
ztrans(sym(k)*k, k, z);