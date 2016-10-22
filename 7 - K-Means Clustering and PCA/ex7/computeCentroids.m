function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returs the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%

for k = 1:K
    l = k*ones(size(idx,1),1); % initialize a vector for logical comparison  
    b = idx == l; %compare idx with the logic vector
    bb = b; % copy above vector
    for i = 1:n-1 % make a logic matrix so can easily use .*
        bb = [bb b];
    end
    Xol = X.*bb; % delete all vectors not in this centroid
    centroids(k,:) = sum(Xol)/sum(b); % cleverly compute the mean
end

% ball so hard got a broke clock



% =============================================================


end

