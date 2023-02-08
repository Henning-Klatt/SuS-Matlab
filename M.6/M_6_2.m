% M.6.2 Eigenschaften der Fourier-Transformation

% Aufgabe 6.2

% Initialisierung
close; clear; clc;

t=-20:10^-3:20;
trect=-5:10^-3:5;
frect=-20:10^-3:20;
t0mat = [0.25 -0.25 2 -2];

for t0 = 1:length(t0mat)
    rectshift = zeros(size(t));
    rectshift(abs(trect-t0mat(t0))<0.5) = 1;
    rectshift(abs(trect-t0mat(t0))==0.5) = 0.5;
    rectshift_freq = ftrans(trect,rectshift,frect);
    figure('Name','Fouriertransformierte von rect(t-t0)', 'NumberTitle','off');
    plot(frect,rectshift_freq)
    title('Fouriertransformierte von rect(t-t0) mit t0=' + string(t0mat(t0)) + '')
    xlabel('Frequenz in Hz')
end

for t0 = 1:length(t0mat)
    sishift = zeros(size(t));
    sishift(1:end) = sinc((t-t0)/pi);
    sishift_freq = ftrans(t,sishift,f);
    figure('Name','Fouriertransformierte von si(t-t0)', 'NumberTitle','off');
    plot(f,sishift_freq)
    title('Fouriertransformierte von si(t-t0) mit t0=' + string(t0mat(t0)) + '')
    xlabel('Frequenz in Hz')
end