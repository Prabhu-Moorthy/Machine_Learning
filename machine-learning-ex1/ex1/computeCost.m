function J = computeCost(X, y, theta)

m = length(y); % number of training examples

h = X * theta;

error = h - y;

error_sqr = error.^2;

J = (1/(2*m))*(sum(error_sqr));

end
