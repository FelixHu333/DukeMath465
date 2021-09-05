x=rand(300,1);
y=rand(300,1);

% mean center
x_center = x-mean(x);
y_center = y-mean(y);

%scatter(x_center,y_center);

Z = [x_center y_center];

% calculate cov matrix

Cov = (Z' * Z) / 300
%cov(Z)

% eigen decomposition
[V D] = eig(Cov)

% percentage variation caused by first principle component

principle_eigen = max(D(1,1), D(2,2));
eigen_sum = D(1,1) + D(2,2);
percent = principle_eigen / eigen_sum

% sanity check
[a b c d e] = pca(Z);
e

plotv(V, '-')
