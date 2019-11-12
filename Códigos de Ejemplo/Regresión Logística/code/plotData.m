function plotData(X, y)
%PLOTDATA Traza los puntos de datos X e Y en una nueva figura. 

% Creamos una nueva figura
figure; hold on;

pos = find(y==1); neg = find(y == 0);
# Comenzamos el ploteo 
plot(X(pos, 1), X(pos, 2), 'k+','LineWidth', 2, 'MarkerSize', 7);
plot(X(neg, 1), X(neg, 2), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);
% =========================================================================
hold off;

end