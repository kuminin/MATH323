function [t, w] = euler(f, a, b, alpha, N)
%EULER function that approximates the solution of the initial value problem.
%   t is a column vector that stores the time vector [t0, t1, ..., tN]
%   w is a column vector that stores the approximated solution vector [w0, w1,
%   ..., wN]'
%   f is a function handle that represents the function f(t, y)
%   a and b are numbers that represent the lower and upper bound of the variable
%   t.
%   alpha is a number that represents alpha
%   N is a number that represents the number of steps used.
    h = (b - a) / N;
    t = a:h:b;
    w = zeros(1, N);
    w(1) = alpha;
    for i = 1:N
        w(i + 1) = w(i) + h*f(t(i), w(i));
    end
%     w(1) = alpha;
end

