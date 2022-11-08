% M.2.6 IIR-Systeme

% Aufgabe 2.9

% Initialisierung
close; clear; clc;

b = [1 0];
c = [-1 -1];
x = [1];
n = 10;

y1 = IIRsys(b, c, x, n);

y2 = IIRsys([1 0 0], [0.9 0.81 1], ones(1,1), 100);

figure(1);
hold("on");
stem(y1);
stem(y2);

function y = IIRsys(b, c, x, n)
    kx = length(x);
    kb = length(b);
    ky = n;
    y = zeros(1, ky);
    
    for k = 1:ky
        for i = 1:kb
            if k-i > 0 && k-i < kx +1 
                y(k) = y(k) + b(i) * x(k-i) - c(i) * y(k-i);
            elseif k-i > 0
                y(k) = y(k) - c(i) * y(k-i);
            end
        end
    end
    y = y(2:end);
end