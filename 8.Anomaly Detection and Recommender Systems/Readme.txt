Implementing the anomaly detection algorithm and apply it to detect failing servers on a network. In the second part,using collaborative ﬁltering to build a recommender 
system for movies.

ex8.m - Octave/MATLAB script for ﬁrst part of exercise
ex8 cofi.m - Octave/MATLAB script for second part of exercise
ex8data1.mat - First example Dataset for anomaly detection
ex8data2.mat - Second example Dataset for anomaly detection
ex8 movies.mat - Movie Review Dataset
ex8 movieParams.mat - Parameters provided for debugging
multivariateGaussian.m - Computes the probability density function for a Gaussian distribution
visualizeFit.m - 2D plot of a Gaussian distribution and a dataset
checkCostFunction.m - Gradient checking for collaborative ﬁltering
computeNumericalGradient.m - Numerically compute gradients

1
fmincg.m - Function minimization routine (similar to fminunc)
loadMovieList.m - Loads the list of movies into a cell-array
movie ids.txt - List of movies
normalizeRatings.m - Mean normalization for collaborative ﬁltering
submit.m - Submission script that sends your solutions to our servers
estimateGaussian.m - Estimate the parameters of a Gaussian distribution with a diagonal covariance matrix
selectThreshold.m - Find a threshold for anomaly detection
cofiCostFunc.m - Implement the cost function for collaborative ﬁltering
