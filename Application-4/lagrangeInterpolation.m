function result = lagrangeInterpolation(x, y, targetX)
    n = length(x);
    
    if n ~= length(y)
        error('x ve y dizileri aynı uzunlukta olmalıdır.');
    end
    
    result = 0;
    for i = 1:n
        term = y(i);
        for j = 1:n
            if j ~= i
                term = term * (targetX - x(j)) / (x(i) - x(j));
            end
        end
        result = result + term;
    end
    
    disp(['Interpolated value at x = ' num2str(targetX) ' is ' num2str(result)]);
end