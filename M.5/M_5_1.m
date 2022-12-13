% M.5.1 Visualisierung kontinuierlicher Signale

% Aufgabe 5.1

% Initialisierung
close; clear; clc;

t = -20:10^-3:20;

eps = zeros(size(t));

eps(t == 0) = 0.5;
eps(t > 0) = 1;
figure('Name','Sprungfunktion', 'NumberTitle','off');
plot(t, eps);

rect = zeros(size(t));
rect(abs(t)< 0.5) = 1;
rect(abs(t) == 0.5) = 0.5;
figure('Name','Rechteckimpuls', 'NumberTitle','off');
plot(t, rect);

si = zeros(size(t));
si(1:end) = sinc(t/pi);
figure('Name','si-Funktion', 'NumberTitle','off');
plot(t, si);

sinus = zeros(size(t));
sinus(1:end) = 2*sin(2*pi*0.1*t);
figure('Name','Sinus-Funktion', 'NumberTitle','off');
plot(t, sinus);

s=1j*pi/5;
complexexp=zeros(size(t));
complexexp(1:end)=exp(s*t);
figure('Name','komplexe Exponentialfuntion', 'NumberTitle','off');
plotcomplex(t,complexexp);

function plotcomplex( t, x )
    %PLOTCOMPLEX   Continous-time plot (complex-valued signal).
    %
    %   plotcomplex( t, x )
    %   t and x have to be vectors

    % (C) RoF / NT
    plot3(  t,  real(x),  imag(x),  'b' );
    grid on;
    axis ij;
    axis square;
    view([-45 30]);
    xlabel('t -->')
    ylabel('Re -->')
    zlabel('Im -->')
end