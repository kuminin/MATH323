function limit = limit1(f, threshold)

if nargin < 2
    threshold = 10^(-6);
end

xOld = 1;
yOld = f(xOld);
xNew = 0.1*xOld;
yNew = f(xNew);
d = abs(yNew - yOld);

while d > threshold
    xOld = xNew;
    yOld = yNew;
    xNew = 0.1 * xOld;
    yNew = f(xNew);
    d = abs(yNew - yOld);
end
limit = yNew;