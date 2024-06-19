function root = bisectionMethod(func, a, b, tol, maxIter)
    if func(a) * func(b) > 0
        error('f(a) ve f(b) işaretleri farklı olmalıdır.');
    end
    
    iterations = 0;
    while iterations < maxIter
        c = (a + b) / 2;
        if func(c) == 0 || (b - a) / 2 < tol
            root = c;
            return;
        end
        iterations = iterations + 1;
        
        if func(c) * func(a) < 0
            b = c;
        else
            a = c;
        end
    end
    root = NaN;
end