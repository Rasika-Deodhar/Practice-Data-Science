function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

i=1; j=1;
while(i<=size(z,1))
j=1;
  while(j<=size(z,2))
    g(i,j) = 1/(1+(e.^(-z(i,j))));
    j++;
  end
  i++;
end  


% =============================================================

end
