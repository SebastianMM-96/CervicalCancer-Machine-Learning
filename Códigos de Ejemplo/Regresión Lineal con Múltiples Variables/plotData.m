function plotData(x, y)
%PLOTDATA Plots the data points x and y into a new figure 
%   PLOTDATA(x,y) plots the data points and gives the figure axes labels of
%   population and profit.

figure; % open a new figure window


data = load('ex1data2.txt');    % read comma separated data
x = data(:, 1);
y = data(:, 2);
m = length(y);  % number of training examples


plot(x, y, 'rx', 'MarkerSize', 10);
xlabel('Population size in 10,000s');
ylabel('Profit in $10,000s');

% ============================================================

end
