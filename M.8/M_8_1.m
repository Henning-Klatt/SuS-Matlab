% M.8.1 Konvergenzgebiete

% Aufgabe 8.1

% Initialisierung
close; clear; clc;

t = -10:10^-2:10;

x = zeros(size(t));
x(t>=0) = exp(t(t>=0));
x(t<0) = exp(2*t((t<0)));

figure('Name','x1', 'NumberTitle','off');
hold on
for sigma = 0:0.1:3
    xdamped = x.*exp(-sigma*t);
    plot(xdamped)
end

x2 = zeros(size(t));
x2(t>=0) = exp(2*t(t>=0));

figure('Name','x2', 'NumberTitle','off');
hold on
for sigma = -5:0.1:5
    x2damped = x2.*exp(-sigma*t);
    plot(x2damped)
end

x3 = zeros(size(t));
x3(t>=0) = exp(-4*t(t>=0));

figure('Name','x3', 'NumberTitle','off');
hold on
for sigma = -4:0.1:0
    x3damped = x3.*exp(-sigma*t);
    plot(x3damped)
end

x4 = zeros(size(t));
x4(t<0) = exp(3*t((t<0)));

figure('Name','x4', 'NumberTitle','off');
hold on
for sigma = -3:0.1:3
    x4damped = x4.*exp(-sigma*t);
    plot(x4damped)
end

x5 = zeros(size(t));
x5(t>=0) = exp(2*t(t>=0));
x5(t<0) = exp(t((t<0)));

figure('Name','x5', 'NumberTitle','off');
hold on
for sigma = 0:0.1:3
    x5damped = x5.*exp(-sigma*t);
    plot(x5damped)
end
