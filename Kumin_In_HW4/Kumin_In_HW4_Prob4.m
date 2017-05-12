f = @(t,y) (sin(2*t) - t*y)/t^2;
a = 1;
b = 2;
alpha = 2;
N = 10;

%% Using Euler's method to find the approximation values.
[t, w] = euler(f, a, b, alpha, N);
y = arrayfun(@(t) (2*t + 1)/(t^2 + 1), t);
error = abs(y - w);
fprintf('Approximations using Euler''s Method:\n')
for j = 1:length(error)
    fprintf('w(%d) = %.6f, ', j - 1, w(j));
    fprintf('|y(%d) - w(%d)| = %.6f\n', j - 1, j - 1, error(j));
end

%% Using Runge-Kutta method to find the approximation values.
[t, w] = RungeKutta4(f, a, b, alpha, N);
y = arrayfun(@(t) (2*t + 1)/(t^2 + 1), t);
error = abs(y - w);
fprintf('\nApproximations using Runge-Kutta Method:\n')
for j = 1:length(error)
    fprintf('w(%d) = %.10f, ', j - 1, w(j));
    fprintf('|y(%d) - w(%d)| = %.10f\n', j - 1, j - 1, error(j));
end

%% Explanation on which Algorith is better.

fprintf('\nWe can observe that the Runge-Kutta4 Method has a better approxmation\n');
fprintf('relative to the Euler''s method, since the absolute error at the Nth\n');
fprintf('term is smaller with the Runge-Kutta4 Method vs. the Euler''s method.\n');
fprintf('Additionally, Euler''s method is the Taylor method of order 1, while\n');
fprintf('Runge-Kutta4 is the Taylor method of order 4, producing a smaller error\n');
fprintf('term.\n');