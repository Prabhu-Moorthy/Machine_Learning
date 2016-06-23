function [J, grad] = lrCostFunction(theta, X, y, lambda)

%Variable initilization
m = length(y);
J = 0;
grad = zeros(size(theta));
%Before calculating the cost function we need to compute the hypothesis function(h) using the sigmoid function that we computed earlier
h = sigmoid(X*theta);
theta_reg = [0;theta(2:end)];

%First we will compute the un regularized cost function J(theta) in a vectorized way
%For understanding we are going to break the cost function into 2 parts
%In the first part(fp) we will compute -ylog(h)
%In the second part(sp) we will compute (1-y)log(1-h)
fp = y' * log(h);
sp = (1-y') * log(1-h)
reg = (lambda/(2*m))*(theta_reg'*theta_reg);
J = -((1/m)*(fp+sp))+reg

%So, now we have calculated the cost function J(theta) (J), next we need to calculate the partial derivative of J(theta) (J_Part)
grad =(1/m)*(X'*(h-y)+lambda*theta_reg);

end

