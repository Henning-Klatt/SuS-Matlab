% M.2.1 Visualisierung Diskreter Signale

k = -20:1:40;

% Delta-Folge
y = zeros(size(k));
idy = k == 0;
y(idy) = 1;
figure('Name','Delta-Folge', 'NumberTitle','off');
stem(k, y);

% Sprungfolge
y = zeros(size(k));
idy = k >= 0;
y(idy) = 1;
figure('Name','Sprungfolge', 'NumberTitle','off');
stem(k, y);

% reelle Exponentialfolge
y = 0.8.^k;
figure('Name','reelle Exponentialfolge', 'NumberTitle','off');
stem(k, y);

% reelle kausale Exponentialfolge
y = zeros(size(k));
idy = k >= 0;
y(idy) = 0.8.^k(idy);
figure('Name','reelle kausale Exponentialfolge', 'NumberTitle','off');
stem(k, y);

% komplexe Expinentialfolge
y = (0.9*exp(1i*pi/10)).^k;
figure('Name','komplexe Exponentialfolge', 'NumberTitle','off');
stemcomplex(k, y);
