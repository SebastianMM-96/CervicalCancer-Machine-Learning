function [J, grad] = costFunctionReg(theta, X, y, lambda)
% COSTFUNCTIONREG Calcula el costo y el gradiente para la regresion logistica 
% Usando regularizacion 

% Inicializamos algunos valores
m = length(y); % numero de las muesras de prueba

% Regresaremos las variables de manera correcta
J = 0;
grad = zeros(size(theta));

% Calculamos las derivadas parciales para nuestra funcion de costo
% Pero el caso de nuestra funcion debe de ser regularizada. 

h=sigmoid(X * theta);
cost = sum(-y.* log(h) -(1-y) .* log(1-h));
grad = X' * (h-y);

grad_reg = lambda * theta;
grad_reg(1) = 0;

grad = grad + grad_reg;

J = cost / m + (lambda / (2.0 * m)) * sum(theta(2:size(theta)) .^ 2);
grad = grad / m;


% =============================================================

end