function Y = sympartfrac( X, z )
%SYMPARTFRAC   symbolic partial fraction
%   Y = sympartfrac( X, z )
%

% (C) RoF / NT

STR = ['partfrac(' char(X) ', ' char(z) ', Full)'];
Y = evalin(symengine, STR );
