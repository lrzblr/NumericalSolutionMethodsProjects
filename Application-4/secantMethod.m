function [root, iterations] = secantMethod(func, x0, x1, tol, maxIter)
    iterations = 0;
    while iterations < maxIter
        fx0 = func(x0);
        fx1 = func(x1);
        x = x1 - (fx1 * (x1 - x0)) / (fx1 - fx0);
        if abs(x - x1) < tol
            root = x;
            return;
        end
        x0 = x1;
        x1 = x;
        iterations = iterations + 1;
    end
    root = NaN;
end