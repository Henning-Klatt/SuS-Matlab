% M.5.4 LTI-Systeme beschrieben durch ihre Impulsantwort

% Aufgabe 5.9

% Initialisierung
close; clear; clc;

dt = 10^-3;
th = 0:dt:5;
h = zeros(size(th));
h(1:end) = 5*exp(-5*th);
t = -1:dt:1;
delta = zeros(size(t));
delta(t==0) = dt;

eps = zeros(size(th));
eps(th==0) = 0.5;
eps(th>0) = 1;

rect = zeros(size(t));
rect(abs(t)<0.5) = 1;
rect(abs(t)==0.5) = 0.5;

rand = randn(size(th));

% Faltung berechnen
[tfdelta, fdelta] = faltungc(th, h, t, delta);
[tfeps, feps] = faltungc(th, h, th, eps);
[tfrect, frect] = faltungc(th, h, t, rect);
[tfrand, frand] = faltungc(th, h, th, rand);

figure(1)
plot(tfdelta, fdelta)
hold on
plot(tfeps, feps)
plot(tfrect, frect)
plot(tfrand, frand)
legend('delta', 'eps', 'rect', 'rand')
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