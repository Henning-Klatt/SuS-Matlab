% M.7 Die diskrete Fourier-Transformation

% Aufgabe 7.2

% Initialisierung
close; clear; clc;

figure(1)
plot(1:1024,zeros(1,1024));
for d = 3:10
    M = 2^d;
    x = zeros(1,M);
    x(1:7) = 4-abs((0:6)-3);
    X = fft(x);
    plot(1:2^(10-d):1024, X)
    hold on
    pause(2);
end
hold off

figure(2)
plot(1:1024,zeros(1,1024));
for d = 3:10
    M = 2^d;
    x = zeros(1,M);
    x(1:7) = 4-abs((0:6)-3);
    X = fft(x);
    plot(1:2^(10-d):1024, imag(X))
    hold on
    pause(2);
end
hold off