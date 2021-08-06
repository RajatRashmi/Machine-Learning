function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%
reg = [0.01, 0.1, 1, 10, 0.03, 0.3, 3, 30];
prediction_error = zeros((size(reg,2))^2,1);
%size(prediction_error);
reg_combi = zeros((size(reg,2))^2,2);
k=1
for i = 1:length(reg)
    %reg(i)
    C = reg(i);
    for j = 1:length(reg) 
       % reg(j)       
       sigma = reg(j); 
       reg_combi(k,:) = [C sigma];  
       model = svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma));   
       predictions = svmPredict(model, Xval);
       prediction_error(k) = mean(double(predictions ~= yval));
       k = k+1;
    endfor
endfor
prediction_error
[i,index] = min(prediction_error)
sigma = reg_combi(index,2)
C = reg_combi(index,1)

%predictions = svmPredict(model, Xval);






% =========================================================================

end
