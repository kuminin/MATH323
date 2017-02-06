%% This code calculates the number of REAL roots in a quadratic equation
% of the form ax^2 + bx + c = 0

function num = quadroots(a, b, c)

D = b^2 - (4 * a * c);

if D > 0
    num = 2;
elseif D == 0
    num = 1;
else
    num = 0;
end