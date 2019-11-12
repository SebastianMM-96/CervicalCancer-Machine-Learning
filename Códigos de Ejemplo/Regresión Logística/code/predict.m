function p = predict(theta, X)
%PREDICT Predecir si la etiqueta es 0 o 1 usando los parámetros 
% de regresión logística aprendidos theta

m = size(X, 1); % Número de ejemplos de entrenamiento

p = zeros(m, 1);

for i=1:m
	p(i) = sigmoid(theta' * X(i,:)') >= 0.5;

% =========================================================================
end