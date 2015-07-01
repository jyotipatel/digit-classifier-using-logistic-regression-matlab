function [all_theta] = oneVsAll(X, y, num_labels, lambda)
%returns parameter for the model
m = size(X, 1);
n = size(X, 2);
 
all_theta = zeros(num_labels, n + 1);

% Add ones to the X data matrix
X = [ones(m, 1) X];

initial_theta=zeros(n+1,1);
for i=1:num_labels
    temp=(y==i);
    initial_theta=zeros(n+1,1);
    options=optimset('GradObj','on','MaxIter',50);
    [theta]=fmincg(@(t)(lrCostFunction(t,X,temp,lambda)),initial_theta,options);
    all_theta(i,:)=theta;
end


end
