% f(leftX, rightX)
function I = variableIntegral(f, startX, endX, step)
    I = 0;
    curX = startX;
    while curX < endX
        nextX = curX + step;
        if nextX > endX
            nextX = endX;
        end
        I = I + f(curX, nextX);
        curX = nextX;
    end
end