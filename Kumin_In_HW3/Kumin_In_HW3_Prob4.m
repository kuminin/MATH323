clear;
fprintf('Solution: %f\n', ...
        compositeMidpoint(@(x) x*log(x + 1), -0.5, 0.5, 200));