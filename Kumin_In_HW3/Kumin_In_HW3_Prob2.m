clear;
answer = trapezoidal(@(x) sin(x)^2 - 2 * x * sin(x) + 1, 0.75, 1.3);
ad = @(x) (3 / 2 * x) - (1 / 4 * sin(2 * x)) - 2 * sin(x) + 2 * x * cos(x);
fprintf('Solution I =  %f, abs err = %f\n', answer, ...
        abs(answer - (ad(1.3) - ad(0.75))));