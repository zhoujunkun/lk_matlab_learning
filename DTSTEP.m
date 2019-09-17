function Y = DTSTEP(X)
%DTSTEP :Dicrete-time Step function
%DTSTEP(X) is 0 for X < 0, 1 for X >= 0
Y = zeros(size(X));
Y(X >= 0) = 1;
end