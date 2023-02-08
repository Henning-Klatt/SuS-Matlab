% M.7 Die diskrete Fourier-Transformation

% Aufgabe 7.1

% Initialisierung
close; clear; clc;

M = 32;

% Einheitsimpuls
k0 = 2;
x = zeros(1,M);
x(k0) = 1;

% Exponentialfolge
lambda = 2;
y = zeros(1,M);
for k=1:M
y(k) = exp(1i*2*pi/M*lambda*k);
end

% Cosinus-Schwingung
lambda2 = 4;
z = cos(2*pi./M*lambda2*(1:M));

% DFT der Signale
X = fft(x);
Y = fft(y);
Z = fft(z);

% Plotten
figure('Name','Einheitsimpuls', 'NumberTitle','off');
hold on
stemcomplex(x)
stemcomplex(X)
hold off

figure('Name','Exponentialfolge', 'NumberTitle','off');
stemcomplex(y);
figure('Name','Exponentialfolge DFT', 'NumberTitle','off');
stemcomplex(Y);

figure('Name','Cosinus-Schwingung', 'NumberTitle','off');
hold on
stemcomplex(z)
stemcomplex(Z)
hold off