Implement the K-means clustering algorithm and apply it to compress an image. In the second part, using principal
component analysis to ﬁnd a low-dimensional representation of face images.

ex7.m - Octave/MATLAB script for K-mea PCA
ex7data1.mat - Example Dataset for PCA
ex7data2.mat - Example Dataset for K-means
ex7faces.mat - Faces Dataset
bird small.png - Example Image
displayData.m - Displays 2D data stored in a matrix
drawLine.m - Draws a line over an exsiting ﬁgure
plotDataPoints.m - Initialization for K-means centroids
plotProgresskMeans.m - Plots each step of K-means as it proceeds


runkMeans.m - Runs the K-means algorithm

pca.m - Perform principal component analysis
projectData.m - Projects a data set into a lower dimensional space
recoverData.m - Recovers the original data from the projection
findClosestCentroids.m- Find closest centroids (used in K-means)
computeCentroids.m - Compute centroid means (used in K-means)
kMeansInitCentroids.m - Initialization for K-means centroids
