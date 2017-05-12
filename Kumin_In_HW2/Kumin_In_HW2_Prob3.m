clc;
clear;
A = [1, -10, 35, -50, 24];
roots = Deflation(A, 1, 1000, 10^-8);
g = sprintf('%f ', roots);
fprintf('Roots of f(z): %s\n', g);