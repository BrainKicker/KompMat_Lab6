function showAlphas(trueArea, fun, a, b, startH, endH, mult)
    h = startH;
    while h >= endH
    
        area = variableIntegral(fun, a, b, h);
    
        alpha = log(abs(trueArea - area)) / log(h);
    
        fprintf("step=%f, area=%f, alpha=%f\n", h, area, alpha)
    
        h = h * mult;
    end
end