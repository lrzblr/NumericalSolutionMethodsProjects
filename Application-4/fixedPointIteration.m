function [root, iterations] = fixedPointIteration(g, x0, tol, maxIter)
    iterations = 0;
    while iterations < maxIter
        x = g(x0);
        if abs(x - x0) < tol
            root = x;
            return;
        end
        x0 = x;
        iterations = iterations + 1;
    end
    root = NaN;
end