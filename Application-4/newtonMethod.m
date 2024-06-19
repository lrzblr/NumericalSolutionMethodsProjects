function [root, iterations] = newtonMethod(func, derivative, x0, tol, maxIter)
    iterations = 0;
    while iterations < maxIter
        fx = func(x0);
        if abs(fx) < tol
            root = x0;
            return;
        end
        
        fprime_x = derivative(x0);
        if fprime_x == 0
            error('Derivative is zero. Division by zero error.');
        end
        
        x = x0 - fx / fprime_x;
        if abs(x - x0) < tol
            root = x;
            return;
        end
        
        x0 = x;
        iterations = iterations + 1;
    end
    root = NaN;
end