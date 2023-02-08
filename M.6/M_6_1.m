% M.6.1 Bestimmung der Fourier-Transformation

% Aufgabe 6.1

% Initialisierung
close; clear; clc;

trect = -5:10^-3:5;
frect = -20:10^-3:20;
rect = zeros(size(trect));
rect(abs(trect)<0.5) = 1;
rect(abs(trect)==0.5) = 0.5;
rect_freq = ftrans(trect,rect,frect);

figure('Name','rect', 'NumberTitle','off');
plot(trect, rect)
legend('Rect')
xlabel('Zeit in s')
figure('Name','rect F-Transformierte', 'NumberTitle','off');
plot(frect, rect_freq)
legend('F-Transformierte')
xlabel('Frequenz in Hz')

t = -20:10^-3:20;
f = -5:10^-3:5;
si = zeros(size(t));
si(1:end) = sinc(t/pi);
si_freq = ftrans(t,si,f);

figure('Name','Sinc', 'NumberTitle','off');
plot(t, si)
legend('Sinc')
xlabel('Zeit in s')
figure('Name','Sinc F-Transformierte', 'NumberTitle','off');
plot(f, si_freq)
legend('F-Transformierte')
xlabel('Frequenz in Hz')
