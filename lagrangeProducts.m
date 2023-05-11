function P = lagrangeProducts(R)

    n = length(R);
 
    P = zeros(n);

    for k = 1:n
        Pk = 1;
        for j = 1:n
            if j ~= k
                Pk = conv(Pk, [1/(R(k)-R(j)), -R(j)/(R(k)-R(j))]);
            end
        end
        P(k, 1:n) = Pk;
    end
end