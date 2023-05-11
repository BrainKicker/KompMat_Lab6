function res = polyDiff(X, n)
    res = X(1:length(X)-n);
    for i = 1:length(X)-n
        for j = length(X)-i:-1:length(X)-n+1-i
            res(i) = res(i) * j;
        end
    end
end