clear
f = @(x) exp(x) - x^2 + 3*x - 2;
a = 0;
b = 1;
M = 1000;
Tol = 10^-8;
[x, fx, ite] = bisection(f, a, b, M, Tol)