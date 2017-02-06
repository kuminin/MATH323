function count = die()

count = zeros(1,6);
x = -1;
while x ~= 6
    x = randi(6);
    count(x) = count(x) + 1;
end

s = sum(count);
for i = 1:length(count)
    count(i) = count(i) / s;
end

%{
count = zeros(1, 50000)
for i = 0:length(count)
    s = 1;
    while rani(6) ~= 6
        s = s + 1;
    end
    count(i) = s;
end
%}