function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values

m = length(y); % number of training examples
n = length(theta);
% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));
Reg = 0 ;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%
H=X*theta;
SqrErr=sum((H-y).^2);
%fprintf('SqrErr : %f\n', SqrErr);
J=(SqrErr)/(2*m);
temp_theta = [0 ; theta(2:n)];
Reg = (lambda/(2*m))*(sum(temp_theta.^2));

J = J+Reg;

grad = ((X'*(H-y))+ (lambda*temp_theta))/m;
grad = grad(:);
end