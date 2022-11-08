% M.2.3 Faltung

% Aufgabe 2.5 Faltung zweier (kausaler, endlich langer) Signale

% Initialisierung
close; clear; clc;

x = [5 4 3 2 1];
u = [1 1 1];

w = faltung(x,u)

w2 = conv(x,u)

% Faltung von x mit u
function w = faltung(x,u)

    kx = length(x)-1;
    ku = length(u)-1;
    kw = kx+ku;
    
    w = zeros(1,kw+1);
    
    for k = 1:kw
        w(k) = 0;
        for i = 1:min(kx,ku)+1
            if k-i+1 > 0 && k-i < ku+1
            w(k) = w(k) + x(i) * u(k-i+1);
            end
        end
    end

end