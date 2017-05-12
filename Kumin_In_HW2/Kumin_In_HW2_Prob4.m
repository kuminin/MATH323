clc;
clear;
x = 0:3;
y = [2.3 3.6 2.5 1.4];
FF = newtonDivDiff(x, y);
g = sprintf('%f ', FF);
fprintf('Coefficients of the Lagrange polynomial of the given data is: [%s]\n', g);