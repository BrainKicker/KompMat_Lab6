function res = polyLegendre(n)
    res = polyDiff(polyPow([1, 0, -1], n), n);
end