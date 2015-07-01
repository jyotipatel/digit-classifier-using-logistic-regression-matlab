function p = predictOneVsAlltest(X)

load('all_theta92.mat'); %load the trained parameters
m = size(X, 1);
num_labels = size(all_theta, 1);

p = zeros(size(X, 1), 1);

% Add ones to the X data matrix
X = [ones(m, 1) X];
temp=sigmoid(X*all_theta');
[x,p]=max(temp,[],2);
p(p==10)=0;

end
