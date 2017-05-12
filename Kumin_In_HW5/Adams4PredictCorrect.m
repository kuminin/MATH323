function [t,w] = Adams4PredictCorrect(f,a,b,alpha,N)
%ADAMS4PREDICTCORRECT Summary of this function goes here
%   Detailed explanation goes here
    [t, w] = AdamsBashforth4step(f, a, b, alpha, N);
    h = (b - a) / N;
    for i = 3:N
        w(i + 1) = w(i) + (h / 24) * (9 * f(t(i + 1), w(i + 1)) + 19 * f(t(i), w(i)) ...
            - 5 * f(t(i - 1), w(i - 1)) + f(t(i - 2), w(i - 2)));
    end
end

