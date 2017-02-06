%% f is an anonymous function defined as f = @(x)(2^x - 1)/sin(x);
% or other stuff.
function slope = slopesec(f, a, b)
slope = (f(b) - f(a)) / (b - a);
