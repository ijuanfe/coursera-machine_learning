function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

% Solution using loops:
% - Only works for two theta parameters and two features x (atributes)
% - Check computeCostMulti.m implementation for any number of theta parameters and features
for i = 1:m
  J += power(((theta(1) * X(i, 1) + (theta(2) * X(i, 2))) - y(i)), 2);
end

J = 1/(2*m) * J;

% =========================================================================

end
