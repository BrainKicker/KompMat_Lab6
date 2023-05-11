function res = polyPow(X, n)
    res = 1;
    while n > 0
        if rem(n, 2) == 1
            res = conv(res, X);
        end
        X = conv(X, X);
        n = bitshift(n, -1);
    end
end