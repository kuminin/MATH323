[t, w] = euler(@(t, y) (2 - 2*t*y)/(t^2 + 1), 1, 2, 1.5, 10);
y = arrayfun(@(t) (2*t + 1)/(t^2 + 1), t);
error = abs(y - w);
fprintf('Approximations using Euler''s Method:\n')
for j = 1:length(error)
    fprintf('w(%d) = %.6f, ', j - 1, w(j));
    fprintf('|y(%d) - w(%d)| = %.6f\n', j - 1, j - 1, error(j));
end