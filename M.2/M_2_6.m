% M.2.4 Systemeigenschaften

% Aufgabe 2.6 Implementierung Systeme

% Initialisierung
close; clear; clc;

length = 10;

x = randn(1, length);

y1 = @(x) 2.*x;
y2 = @(x) x + ones(1, length);
y3 = @(x) [x(end:-1:1) zeros(size(x))];
y4 = @(x) [x(1:end)-[0,x(1:end-1)],-x(end)];
y5 = @(x) x.*cos(pi/4*1:length);
y6 = @(x) round(x);

figure();
hold;
stem(x);
stem(y1(x));
stem(y2(x));
stem(y3(x));
stem(y4(x));
stem(y5(x));
stem(y6(x));