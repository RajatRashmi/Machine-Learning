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
j = size(theta,1);
Reg = 0;
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%Developer comments
%Remove theta(0) before calculating regularization factor for cost and gradient
temp_theta = theta([2:size(theta,1)],:);
Reg=(lambda*sum(temp_theta.^2))/(2*m);
[J,grad] = costFunction(theta,X,y);
 J = J + Reg;
% =============================================================

temp_theta = temp_theta*(lambda/m); 
%fprintf('temp_theta = %f\n', temp_theta(1:5));
theta = [0;temp_theta];
grad = grad + theta;
end
