function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)

m = length(y); 
J_history = zeros(num_iters, 1);
theta = [0;0];

for iter = 1:num_iters
	h = X * theta;

	error = h - y;
	
	partial_gradient = error'*X;
	
	gradient = (alpha*(1/m))*partial_gradient';
	
	theta = theta - gradient;
    J_history(iter) = computeCost(X, y, theta);%Adding this comment to test comments

end
end
