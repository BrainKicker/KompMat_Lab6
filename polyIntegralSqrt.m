function res = polyIntegralSqrt(X, a, b)
    for i = 1:length(X)
        X(i) = X(i) / (length(X) + 1 + 1/2 - i);
    end
    res = polyval(X, b) * b^(3/2) - polyval(X, a) * a^(3/2);
end