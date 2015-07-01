
clear ; close all; clc

%% Setup the parameters
input_layer_size  = 784;  % 28x28 Input Images of Digits
num_labels = 10;          % 10 labels, from 1 to 10   
                   

%% =========== Part 1: Loading and Visualizing Data =============
fprintf('Loading and Visualizing Data ...\n')
%Xtrans=formatting_data(X); % to convert kaggle data to our format
load('Xtrans.mat'); % correct training data already stored in arrays Xtrans, y
load('y.mat');
y(y==0)=10;         %0 is labeled 10 for this code
m = size(Xtrans, 1);

% Randomly select 100 data points to display
rand_indices = (1:100);
sel = Xtrans(rand_indices(1:100), :);

displayData(sel);

fprintf('Program paused. Press enter to continue.\n');
pause;

 
fprintf('\nTraining One-vs-All Logistic Regression...\n')
% 
lambda = 0.2;
 [all_theta] = oneVsAll(Xtrans, y, num_labels, lambda);
% 
 fprintf('Program paused. Press enter to continue.\n');
% 
% 

 pred = predictOneVsAll(all_theta, Xtrans);
% 
 fprintf('\nTraining Set Accuracy: %f\n', mean(double(pred == y)) * 100);

