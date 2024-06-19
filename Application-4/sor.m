function x = sor(A, b, x0, omega, tol, max_iter)
    n = length(b);
    x = x0;
    iteration = 0;
    error_history = [];

    while iteration < max_iter
        x_old = x;

        for i = 1:n
            sigma = A(i, :) * x - A(i, i) * x(i);
            x(i) = (1 - omega) * x_old(i) + (omega / A(i, i)) * (b(i) - sigma);
        end

        iteration = iteration + 1;
        error = norm(x - x_old, inf);
        error_history = [error_history; error];

        if error < tol
            break;
        end
    end

    fprintf('SOR method converged in %d iterations.\n', iteration);
    fprintf('Solution: ');
    disp(x);

    % Plot error vs iteration
    figure;
    semilogy(error_history);
    xlabel('Iteration');
    ylabel('Error');
    title('Error vs Iteration (SOR)');
end