function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
  X_norm = X;
  mu = zeros(1, size(X, 2)); % El numero 2 representa el numero de columnas de la matriz X
  sigma = zeros(1, size(X, 2)); % --> sigma se encuentra entre el (max - min)

% La media se define como: mean(X) = SUM_i X(i)/N {Donde N es la longitud del vector}
% Se calcula la media de cada una de las columnas de X y devuelve un vector 
  mu = mean(X);
    
  % la variable (mu) es el promedio 0 media de los datos que se calcula mediante:
  % nXn^i = (X^i - mu) / (sigma)


% Calculamos la desviacion estandar de los elementos del vector X
% Calcula cada desviacion estandar para cada columna de la matriz X 
  sigma = std(X);

  for i = 1:size(X, 2)
      Xmu = X(:, i) - mu(i);
      X_norm(:, i) = Xmu / sigma(i);

  end
end