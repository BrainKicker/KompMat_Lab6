function res = polyIntegralExp(X, a)
    X(1) = -X(1);
    for i = 2:length(X)
        X(i) = (length(X) + 1 - i) * X(i-1) - X(i);
    end
    res = -polyval(X, a);
end