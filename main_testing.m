
clear ; close all; clc

%% Setup the parameters you will use for this part of the exercise
input_layer_size  = 784;  % 28x28 Input Images of Digits
num_labels = 10;          % 10 labels, from 1 to 10   
                          % (note that we have mapped "0" to label 10)


fprintf('Loading and Visualizing Data ...\n')
%testtr=formatting_data('testdata.mat');  %to convert the test data of
%kaggle to our format
load('testtr.mat'); % i have already stored the correct data in testtr.mat

m = size(testtr, 1);

% select 1st 100 data points to display
rand_indices = (1:100);
sel = testtr(rand_indices(1:100), :);

displayData(sel);

fprintf('Program paused. Press enter to continue.\n');
pause;

 pred = predictOneVsAlltest(testtr);
 pred(pred==10)=0; %our code stores 0 as 10
 
 %pred matrix contains the test results

