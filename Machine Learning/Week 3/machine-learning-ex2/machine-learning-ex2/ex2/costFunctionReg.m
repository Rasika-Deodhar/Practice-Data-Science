function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta


%J = (1/m) * sum(-(y) * (log(sigmoid(X*theta)))' - (1-y) * (log(1 - sigmoid(X*theta)))') + (lambda/(2*m)) * sum(theta.^2);
%J = (1/m) * (-y)' * (log(sigmoid(X*theta))) - (1-y)' * (log(1 - sigmoid(X*theta))) + (lambda/(2*m)) * theta(2:size(theta)).^2;
%theta = theta - [(1/m) * sum((sigmoid(X*theta) .- y)' * X)] + (lambda/m * theta);
%theta(1) = theta(1) .- [(1/m) * sum((sigmoid(X*theta) .- y)' * X)];
%theta(1) = theta(1) - [(1/m) * sum((sigmoid(X(1,:)' .* theta(1)).-y(1))' * X(1,:))];
%grad = [(1/m) * (sigmoid(X*theta) - y)' * X] + (lambda/m * theta(2:size(theta)));

theta_new=theta(2:size(theta));
theta_regul=[0;theta_new];
%
%J = (1/m) * (-y' * log(sigmoid(X*theta) - (1-y)'  * log(1-sigmoid(X*theta))) + (lambda/(2*m))) * theta_regul' * theta_regul;
%grad = (1/m) * ((sigmoid(X*theta)-y)' * X + lambda * theta_regul);

J = (1/m) * sum(-(y)' * (log(sigmoid(X*theta))) - (1-y)' * (log(1 - sigmoid(X*theta)))) + (lambda/(2*m)) * sum(theta_regul.^2);
grad = [(1/m) * sum((sigmoid(X*theta)-y)' * X)] + [(lambda/m) * theta_regul];

% =============================================================

end
