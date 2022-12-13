% M.5.3 Faltung

% Aufgabe 5.8

% Initialisierung
close; clear; clc;

t = -50:10^-2:50;
x = zeros(size(t));
x(1:end) = (1/pi) * sinc(t/pi);

[tzwei, zwei] = faltungc(t,x,t,x);
[tdrei, drei] = faltungc(tzwei,zwei,t,x);
[tvier, vier] = faltungc(tdrei,drei,t,x);
[tfunf, funf] = faltungc(tvier,vier,t,x);
[tsechs, sechs] = faltungc(tfunf,funf,t,x);
[tsieben, sieben] = faltungc(tsechs,sechs,t,x);
[tacht, acht] = faltungc(tsieben,sieben,t,x);
figure(1)
plot(tzwei, zwei);
figure(2)
plot(tdrei, drei);
hold on
plot(tvier, vier);
plot(tacht, acht);
legend('dreimal', 'viermal', 'achtmal')
hold off

function [tw, w] = faltungc(tx, x, tu, u)

    dt = (tx(end)-tx(1)) / (length(tx)-1);
    tw = tx(1) + tu(1):dt:tx(end) + tu(end);
    w = zeros(1, length(tw));

    for k=1:length(tw)
        for i=1:k
            if i<length(tx) &&  k-i>=1 && k-i<length(tu)
                w(k) = w(k) + x(i)*u(k-i);
            end
        end
    end
    w = w*dt;
end