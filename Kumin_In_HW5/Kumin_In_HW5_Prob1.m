% Base Radius is Solved by pi*512/3 = pi*r^2*8/3
% Solve for cross-section radius by setting Base Radius/Cross Radius = Height /
% conical Height.
% Solve for area of cross-section to be A(x) = pi * x^2;
a = 0;
b = 1600;
N = (b - a) / 20;
alpha = 8;
r = 0.1;
g = 32.1;
A = @(x) pi*x^2;
f = @(t,x) (-0.6 * r^2 * pi) * sqrt(2 * g) * (sqrt(x) / A(x));
[t, w] = Adams4PredictCorrect(f, a, b, alpha, N);

fprintf('The water level after 10 minutes with h = 20 seconds is %.4f\n', ...
    w(31));

for i = 31:length(w)
    if ~isreal(w(i))
        fprintf('The water will be empty in %.2f minutes\n', t(i)/60);
        break;
    end
end