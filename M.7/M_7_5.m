% M.7 Die diskrete Fourier-Transformation

% Aufgabe 7.5

% Initialisierung
close; clear; clc;

M = 1024;
x = sinc(pi/8*((0:1023)-M/2));
u = [(1/256)*ones(1,256), zeros(1,M-256)];

figure('Name','Signal', 'NumberTitle','off');
hold on
plot(x)
plot(u)
hold off

w = conv(x,u);

len = length(x) + length(u)-1;
xpad = [x zeros(1,len-length(x))];
upad = [u zeros(1,len-length(u))];
ccirc = ifft(fft(xpad).*fft(upad));

figure('Name','lineare Faltung', 'NumberTitle','off');
hold on
plot(w)
plot(ccirc)
legend('linear conv','zero-padded cyclic conv')
hold off