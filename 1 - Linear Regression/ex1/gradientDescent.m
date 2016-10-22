function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
  
    
    const = alpha*(1/m);
    test = const*(X*theta-y);
    lenttest=length(test);
    xx = X(:,2);
    yy = X*theta-y;
    lenxx = length(xx);
    lenyy = length(yy);
    theta0 = theta(1)-sum(const*(X*theta-y));
    theta1 = theta(2)-sum(const*yy.*xx);
    theta = [theta0 theta1]';






    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
