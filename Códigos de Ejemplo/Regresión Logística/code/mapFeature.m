function out = mapFeature(X1, X2)
% MAPFEATURE Función de mapeo de características a características polinomiales.
%
%   MAPFEATURE(X1, X2) mapea las dos características de entrada
%   a las características cuadráticas utilizadas en el ejercicio de regularización.
%
% Devuelve una nueva matriz de funciones con más funciones, que comprende
% X1, X2, X1. ^ 2, X2. ^ 2, X1 * X2, X1 * X2. ^ 2, etc.
%
% De entradas X1, X2 deben ser del mismo tamaño
%
degree = 6;
out = ones(size(X1(:,1)));
for i = 1:degree
    for j = 0:i
        out(:, end+1) = (X1.^(i-j)).*(X2.^j);
    end
end

end