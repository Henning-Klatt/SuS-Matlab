% M.7 Die diskrete Fourier-Transformation

% Aufgabe 7.3

% Initialisierung
close; clear; clc;

M = 10;
x = 0:M-1;
u = M-(1:M);
w = cconv(x,u,M);
z = ifft(fft(x).*fft(u));

figure('Name','Signale', 'NumberTitle','off');
hold on
plot(x)
plot(u)
legend('x','u')
hold off

figure('Name','Signale DFT', 'NumberTitle','off');
hold on
plot(w)
plot(z)
legend('by cconv','by fft')
hold off