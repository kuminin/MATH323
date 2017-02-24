clear
f = @(x) sin(x)+cos(x)-2*x;
fprime = @(x) cos(x)-sin(x)-2;
x0 = 0;
M = 20;
tol = 10^-8;
[x, fx, ite] = newton(f, fprime, x0, M, tol)