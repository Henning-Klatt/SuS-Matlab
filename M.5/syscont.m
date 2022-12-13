function y = syscont( t, x, b, c )
%SYSCONT   Continuous-time system
%          (discret-time approximation of first canonical structure)
%
%   y = syscont( t, x, b, c )
%   with time and input signal vectors t and x
%   coefficient vectors b and c in decreasing order

% (C) RoF / NT
dt = (t(end)-t(1))/(length(t)-1);
y  = zeros(size(t));
n  = length(b)-1;
state = zeros(1,n);

for ix=1:length(t)
  y(ix) = state(1) + b(1)*x(ix);
  for in=1:n-1
    state(in) = state(in) + dt*(state(in+1) ...
                                + b(in+1)*x(ix) - c(in+1)*y(ix));
  end
  state(n) = state(n) + dt*(b(n+1)*x(ix) - c(n+1)*y(ix));
end