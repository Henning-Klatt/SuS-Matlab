% M.7 Die diskrete Fourier-Transformation

% Aufgabe 7.4

% Initialisierung
close; clear; clc;

M = 32;
x = 0:M-1;
u = [ones(1,16),zeros(1,M-16)];
w = conv(x,u);
z = cconv(x,u,M);
%z=ifft(fft(x).*fft(u));
figure('Name','Signal', 'NumberTitle','off');
hold on
plot(x)
plot(u)
hold off

figure('Name','Faltung', 'NumberTitle','off');
hold on
plot(w)
plot(z)
legend('linear conv','cyclic conv')
hold off

% Wie bekommt man die lineare Faltung mittels der zyklischen?
% Antwort: Zero-Padding
len = length(x) + length(u)-1;
xpad = [x zeros(1,len-length(x))];
upad = [u zeros(1,len-length(u))];
ccirc = ifft(fft(xpad).*fft(upad));
figure('Name','Faltung Zero-Padding', 'NumberTitle','off');
hold on
plot(w)
plot(ccirc)
legend('linear conv','cyclic conv')
hold off