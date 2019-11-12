function [J, grad] = costFunction(theta, X, y)
% COSTFUNCTION Calcula el costo y el gradiente para la 
% regresion logistica


% Inicializamos algunos valores
m = length(y); % numero de muestras de ejemplo

% Deberemos de regresar las variables de manera correcta 
J = 0;
grad = zeros(size(theta));
#Hipotesis de la regresión logistica.
h = sigmoid(X*theta);
#Declaramos nuestra funcion de costo
J = (1/m)*(-y'* log(h) - (1 - y)'* log(1-h));
#Calculamos el gradiente. 
grad = (1/m)*X'*(h - y);
% =============================================================
end