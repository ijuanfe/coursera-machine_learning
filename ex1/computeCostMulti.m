function J = computeCostMulti(X, y, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

% 1. Solution using loops:
JAux = 0;
t = length(theta);

for i = 1:m
  for j = 1:t
    JAux += theta(j) * X(i, j);
  end
  J += power(JAux - y(i), 2);
  JAux = 0;
end

J = 1/(2*m) * J;

% 2. Solution using vectorization:
% - Vectorization is the process of converting an algorithm from operating
%   on a single value at a time to operating on a set of values at one time
%J = sum(((theta' * X')' - y).^2) / (2 * m)

% Alternative to 2nd solution:
% - Recall some matrix properties
%  - Conversion 1. (AB)' = B'A' --> theta' * X'   = (X * theta)'
%  - Conversion 2. (A')' = A    --> (X * theta)'' = X * theta
%J = sum(((X * theta) - y).^2) / (2 * m)

% =========================================================================

end
