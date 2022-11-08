% M.2.5 FIR-Systeme

% Aufgabe 2.8

% Initialisierung
close; clear; clc;

x = ones(1, 20);

a1 = [1 2 3 2 1];
a2 = [1 1 1];
a3 = deconv(a1, a2);

y2 = FIRsys(a3, FIRsys(a2, x));

figure();
stem(y2);

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