% M.8.2 Stabilität

% Aufgabe 8.3

% Initialisierung
close; clear; clc;

sprintf('----Hurwitz-Test für Q=Q%g -----', 1)
Q1 = [1 5 8 6];
hurwitz(Q1)
size(nonzeros(real(roots(Q1))>0), 1) == 0

sprintf('----Hurwitz-Test für Q=Q%g -----', 2)
Q2 = [1 1 -4 6];
hurwitz(Q2)
size(nonzeros(real(roots(Q2))>0), 1) == 0

sprintf('----Hurwitz-Test für Q=Q%g -----', 3)
Q3 = [1 2 2 0];
hurwitz(Q3)
size(nonzeros(real(roots(Q3))>0), 1) == 0

sprintf('----Hurwitz-Test für Q=Q%g -----', 4)
Q4 = [1 8 48 80 68];
hurwitz(Q4)
size(nonzeros(real(roots(Q4))>0), 1) == 0

sprintf('----Hurwitz-Test für Q=Q%g -----', 5)
Q5 = [1 4 257 506 514];
hurwitz(Q5)
size(nonzeros(real(roots(Q5))>0), 1) == 0