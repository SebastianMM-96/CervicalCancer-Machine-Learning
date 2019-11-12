function g = sigmoid(z)
%SIGMOID Calculamos la función sigmoide
%   g = SIGMOID(z)

g = zeros(size(z));

g = 1 ./ (1+e.^-z);

# (./) Hacemos una division a la derecha del arreglo. 
# A./B es la matriz con los elementos A (i, j) / B (i, j). 
# A y B deben tener el mismo tamaño, a menos que uno de ellos sea un escalar.

# (.^) Arreglo de potencia: A. ^ B es la matriz con elementos A (i, j) 
# a la potencia B (i, j). A y B deben tener el mismo tamaño, 
# a menos que uno de ellos sea un escalar.
% =============================================================
end