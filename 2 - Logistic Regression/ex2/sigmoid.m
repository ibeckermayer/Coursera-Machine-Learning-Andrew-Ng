function g = sigmoid(z)
%SIGMOID Compute sigmoid functoon
%   J = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).
siz = size(z);
for row = 1:siz(1);
    for column = 1:siz(2);
        g(row,column) = 1/(1+exp(-z(row,column)));
    end
end


        



% =============================================================

end
