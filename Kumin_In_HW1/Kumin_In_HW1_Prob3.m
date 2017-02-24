clear
f = @(x) 600*x^4 - 550*x^3 + 200*x^2 - 20*x - 1;
a = 0.1;
b = 1;
M = 1000;
tol = 10^-8;
[x, fx, ite] = secant(f, a, b, M, tol)