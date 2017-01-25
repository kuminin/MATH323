%% calculates the series from 1 to 1/100
%s = 0;
%for i = 1:100
%    s = s + 1/i;
%end
%s

%% calculates the series (1+1/2)(1+1/4)...(1+1/100)
%s = 1;
%for i = 2:2:100
%    s = s * (1 + 1/i);
%end
%s

%% Creates a two dimensional matrix etc...
%A = zeros(19,50);
%for i = 1:19
%    for j = 1:50
%        A(i,j) = (i+1)^(1/j);
%    end
%end
%A(:,1)