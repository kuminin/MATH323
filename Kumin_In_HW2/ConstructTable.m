function [] = ConstructTable( a, b, c, d )
    fprintf('%12c%10c%10c%10c\n', 'a', 'b', 'c', 'd');
    for i = 1:length(a)
        fprintf('i=%d:%10.4f%10.4f%10.4f%10.4f\n', i-1, a(i), b(i), c(i), d(i));
    end
end

