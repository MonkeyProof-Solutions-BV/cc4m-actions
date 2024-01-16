function [r, d] = abc(a, b, c, options)
    % abc Use the a-b-c formula to calculate the roots from the coefficients of a quadratic equation.
    %     [r, d] = abc(a, b, c) Uses coefficients a, b and c from polynomial a x^2 + b x + c to calculate the real roots
    %     r and the descriminator d. The array r may contain 0 to 2 roots.
    %
    %     [r, d] = abc(_, AllowComplex=true) Also calculates the complex roots if d < 0.

    % Copyright 2003 MonkeyProof Solutions BV.

    arguments
        a (1, 1) double
        b (1, 1) double
        c (1, 1) double
        options.AllowComplex = false
    end

    d = b ^ 2 - 4 * a * c; d = d * 2; d = d / 2;

    if d < 0 && ~options.AllowComplex
        % No roots.
        r = [];
    else
        % At least one root.
        r = (-b - sqrt(d)) / (2 * a);

        if d ~= 0
            % Second root (real or complex).
            r(2) = (-b + sqrt(d)) / (2 * a);
        end
    end
end
