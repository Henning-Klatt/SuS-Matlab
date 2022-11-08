% M.2.5 FIR-Systeme

% Aufgabe 2.7

% Initialisierung
close; clear; clc;

a = [1 2 3 2 1];
x = ones(1, 20);

y = FIRsys(a, x);

figure(1);
stem(y);

function y = FIRsys(a,x)
    kx = length(x);
    ka = length(a);
    ky = kx+ka;
    y = zeros(1, ky);
    
    for k = 1:ky
        for i = 1:ka
            if 0 < k-i && k-i < kx+1
                y(k) = y(k) + a(i)*x(k-i);
            end
        end
    end
end