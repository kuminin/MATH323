clear

f = @(x) 600*x^4 - 550*x^3 + 200*x^2 - 20*x - 1;
fprime = @(x) 2400*x^3 - 1650*x^2 + 400*x - 20; % needed for newton's method
a = 0.1;
b = 1;
M = 1000;
tol = 10^-8;

x = 0;
fx = 0;
ite = 0;
answer = cell(4,4);
name = {'Bisection Method', 'Newton''s Method', 'Secant Method', 'Method of False Position'};
for i=1:4
    if i == 1
        [x, fx, ite] = bisection(f,a,b,M,tol);
    elseif i == 2
        [x, fx, ite] = newton(f,fprime,a,M,tol);
    elseif i == 3
        [x,fx,ite] = secant(f, a,b,M,tol);
    else
        [x,fx,ite] = falseposition(f, a,b,M,tol);
    end
    answer(i, 1) = name(i);
    answer(i, 2) = num2cell(x);
    answer(i, 3) = num2cell(fx);
    answer(i, 4) = num2cell(ite);
end
% [x,fx,ite] = falseposition(f, a, b, M, tol);
tbl = cell2table(answer, 'VariableNames', {'Method' 'x' 'fx' 'iterations'})
fprintf('We can see from this table for f(x) = 600x^4 - 550x^3 + 200x^2 - 20x - 1, using Newton''s Method to find the roots\nconverges faster than any other method. On the other hand, the method of false position to find root converges\nthe slowest, as shown in table.')
fprintf('\n\nAdvantages:\n')
fprintf('Bisection Method: Guarenteed Convergence, decrease in error bound by half for each iteration.\n')
fprintf('Newton Method: Fast Convergence, error decreases rapidly with each iteration.\n')
fprintf('Secant Method: Only requires one function evaluation and converges faster than Bisection Method\n')
fprintf('False Position Method: Forces each iteration to bracket the root.\n')
fprintf('\nDisadvantages:\n')
fprintf('Bisection Method: Slow convergence, cannot detect multiple roots.\n')
fprintf('Newton Method: Fail to converge if the initial guess is wrong and requires two function evaluations.\n')
fprintf('Secant Method: It may not converge if the slope of the tangent line is really flat.\n')
fprintf('False Position Method: Converges really slow and is generally not used in practice.\n')
