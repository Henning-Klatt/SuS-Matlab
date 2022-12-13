% M.3.2 Symbolisches Durchführen von Spektraltransformationen

% Aufgabe 3.6

% Initialisierung
close; clear; clc;

syms k;

x1 = kroneckerDelta(k, 0) + kroneckerDelta(k, 1);
x2 = kroneckerDelta(k, 0) - kroneckerDelta(k, 1);
x3 = 0.9^k;

conv1 = sconv(x1, x2);
conv2 = sconv(x1, x3);


function y = sconv(x1, x2)
    %sconv computes symbolic convolution of x1 and x2
    syms k z
    z1 = ztrans(x1,k,z);
    z2 = ztrans(x2,k,z);
    zprod = z1*z2;
    y = iztrans(zprod);

end