clc;
clear;
a = [1, -4, 7, -5, -2];
z0 = 3;
[b, r] = Horner(a, z0);
g = sprintf('%d ', b);
fprintf('Coefficients of f(z): [%s]\n', g);
fprintf('Remainder: %d\n', r);