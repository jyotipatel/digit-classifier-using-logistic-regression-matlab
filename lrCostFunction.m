function [J, grad] = lrCostFunction(theta, X, y, lambda)
%LRCOSTFUNCTION Compute cost and gradient for logistic regression with 
%regularization

m = length(y); % number of training examples

J = 0;
grad = zeros(size(theta));
b=X*theta;
h=sigmoid(b);
J=J+((1/m)*((-1*log(h')*y-(log(1-h')*(1-y)))+(0.5*lambda*(theta(2:end))'*theta(2:end))));

grad=grad+(((1/m)*(h'-y'))*X)';
temp=theta;
temp(1)=0;
grad=grad+(lambda/m).*temp;

grad = grad(:);

end
