function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));
P0 = zeros(m);
P1 = zeros(m);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%
%Developer comments
%P0 and P1 are probabilities
z= X*theta;
H = sigmoid(z);
P0 = log(sigmoid(z));
%fprintf('P0 = %f\n', P0);
P1 = log(1-sigmoid(z));
%fprintf('P1 = %f\n', P1);
J = (-(P0'*y)-(P1'*(1-y)))/m;

%Calculating Gradient
grad= X'*(H-y)/m;

% =============================================================

end
