% Cade Kirkpatrick
% Homework 7Q1
% EGR 101-01
% 03-28-2023

% Minimum cost: $5157.34
%Corresponding values:
%R_total: 18.60 ft
%L_total: 28.40 ft

clear,clc,clf
% Define the area
A = 1600;

% Define the range of radii and length
R = 0:0.01:25;
L = 0:0.01:400;

% Create a meshgrid of R and L to compute all combinations of radius and length
[R, L] = meshgrid(R, L);

% Compute the total area of each combination of radius and length
total_area = L .* (2 .* R ) + (pi .* R.^2) ./ 2;

% Find the indices of combinations that achieve the total area
idx = find(abs(total_area - A) < 0.1);

% Extract the radius and length that achieve the total area
R_total = R(idx);
L_total = L(idx);

% Plot the results
figure;
plot(R_total, L_total,"-");
xlim([0 25]);
ylim([0 400]);
xlabel('Radius (ft)');
ylabel('Length (ft)');
title(['Combinations of Radius and Length with Total Area = ' num2str(A) ' ft^2']);
grid on

% Define the cost per foot of R and L
cost_R_per_ft = 40;
cost_L_per_ft = 30;

% Compute the total cost of each combination of radius and length
total_cost = 40.*(R_total*pi) + 30.*(2.*L_total+2*R_total);

% Find the index of the combination with the minimum total cost
[~, idx_min] = min(total_cost);

% Extract the radius and length that achieve the minimum cost
R_min_cost = R_total(idx_min);
L_min_cost = L_total(idx_min);

% Print the minimum cost and corresponding R_total and L_total values
fprintf('Minimum cost: $%.2f\n', total_cost(idx_min));
fprintf('Corresponding values:\n');
fprintf('R_total: %.2f ft\n', R_min_cost);
fprintf('L_total: %.2f ft\n', L_min_cost);






