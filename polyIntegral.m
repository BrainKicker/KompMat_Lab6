function res = polyIntegral(X, a, b)
    X = [X, 0];
    for i = 1:length(X)-1
        X(i) = X(i) / (length(X) - i);
    end
    res = polyval(X, b) - polyval(X, a);
end