function numericalMethodsMenu()
clear all;
    while true

        disp('Numerical Methods Menu:');
        disp('1. Nonlinear Equation Solution');
        disp('2. Nonlinear Equation System Solution');
        disp('3. Linear Equation System Solution');
        disp('4. Curve fitting');
        disp('5. Exit');
        choice = input('Enter your choice: ');
        switch choice
            case 1
                nonlinearEquationSolutionMenu();
            case 2
                nonlinearEquationSystemSolutionMenu();
            case 3
                linearEquationSystemSolutionMenu();
            case 4
                curveFittingMenu();
            case 5
                disp('Programdan Çıkılıyor');
                break;
            otherwise
                disp('Geçersiz Seçim');
        end
    end
end
function nonlinearEquationSystemSolutionMenu()
    disp('Nonlinear Equation Solution Menu:');
    disp('1. Fixed Point Iteration Method');
    disp('2. Newton Method');
    methodChoice = input('Enter your choice: ');
    switch methodChoice
         case 1
            disp('Fixed Point Iteration Method');
            g = input('Enter the function g(x): ');
            x0 = input('Enter initial guess x0: ');
            tolerance = input('Enter tolerance: ');
            maxIterations = input('Enter maximum number of iterations: ');
            fixedPointIteration(g, x0, tolerance, maxIterations);
        case 2
            disp('Newton Method');
            func = input('Enter the function f(x): ');
            derivative = input('Enter the derivative of f(x): ');
            x0 = input('Enter initial guess x0: ');
            tolerance = input('Enter tolerance: ');
            maxIterations = input('Enter maximum number of iterations: ');
            newtonMethod(func, derivative, x0, tolerance, maxIterations);
        otherwise
            disp('Geçersiz Seçim');
    end
end

function nonlinearEquationSolutionMenu()
    disp('Nonlinear Equation  Solution Menu:');
    disp('1. Bisection Method');
    disp('1. Secant Method');
    methodChoice = input('Enter your choice: ');
    switch methodChoice
        case 1
            disp('Bisection Method');
            func = input('Enter function (örn: @(x) x^2 - 4;): ');
            a = input('Enter lower bound: ');
            b = input('Enter upper bound: ');
            tol = input('Enter tolerance: ');
            maxIter = input('Enter maximum number of iterations: ');
            bisectionMethod(func, a, b, tol, maxIter);
        case 2
            disp('Secant Method');
            func = input('Enter function (örn: @(x) x^2 - 4;): ');
            x0 = input('Enter initial guess x0: ');
            x1 = input('Enter initial guess x1: ');
            tol = input('Enter tolerance: ');
            maxIter = input('Enter maximum number of iterations: ');
            secantMethod(func, x0, x1, tol, maxIter);
        otherwise
            disp('Geçersiz Seçim.');
    end
end

function linearEquationSystemSolutionMenu()
    disp('Linear Equation System Solution Menu:');
    disp('1. Jacobi Method');
    disp('2. Gauss-Seidel Method');
    disp('3. SOR Technique');
    methodChoice = input('Enter your choice: ');
    switch methodChoice
         case 1
            disp('Jacobi Method');
            A = input('Enter matrix A: ');
            b = input('Enter vector b: ');
            x0 = input('Enter initial guess x0: ');
            tol = input('Enter tolerance: ');
            max_iter = input('Enter maximum number of iterations: ');
            jacobi(A, b, x0, tol, max_iter);
        case 2
            disp('Gauss-Seidel Method');
            A = input('Enter matrix A: ');
            b = input('Enter vector b: ');
            x0 = input('Enter initial guess x0: ');
            tol = input('Enter tolerance: ');
            max_iter = input('Enter maximum number of iterations: ');
            gauss_seidel(A, b, x0, tol, max_iter);
        case 3
            disp('SOR Technique');
            A = input('Enter matrix A: ');
            b = input('Enter vector b: ');
            x0 = input('Enter initial guess x0: ');
            omega = input('Enter relaxation factor (omega): ');
            tol = input('Enter tolerance: ');
            max_iter = input('Enter maximum number of iterations: ');
            sor(A, b, x0, omega, tol, max_iter);
        otherwise
            disp('Geçersiz Seçim');
    end
end

function curveFittingMenu()
    disp('Curve Fitting Menu:');
    disp('1. Vandermonde Technique');
    disp('2. Lagrange Interpolation');
    disp('3. Newton Interpolation');
    methodChoice = input('Enter your choice: ');
    switch methodChoice
        case 1
            disp('Vandermonde Technique');
            x = input('Enter x values (e.g., [x1, x2, x3]): ');
            y = input('Enter corresponding y values (e.g., [y1, y2, y3]): ');
            vandermondeTechnique(x, y);
        case 2
            disp('Lagrange Interpolation');
            x = input('Enter x values (e.g., [x1, x2, x3]): ');
            y = input('Enter corresponding y values (e.g., [y1, y2, y3]): ');
            targetX = input('Enter the target x value for interpolation: ');
            lagrangeInterpolation(x, y, targetX);
        case 3
            disp('Newton Interpolation');
             x = input('Enter x values (e.g., [x1, x2, x3]): ');
             y = input('Enter corresponding y values (e.g., [y1, y2, y3]): ');
            targetX = input('Enter the target x value for interpolation: ');
             newtonInterpolation(x, y, targetX);
        otherwise
            disp('Geçersiz Seçim');
    end
end



%numericalMethodsMenu();