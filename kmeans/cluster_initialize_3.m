function [ cluster_center, seed ] = cluster_initialize_3 ( dim_num, ...
  point_num, cluster_num, point, seed )

%*****************************************************************************80
%
%% CLUSTER_INITIALIZE_3 initializes the cluster centers to random values.
%
%  Discussion:
%
%    In this case, each point is randomly assigned to a cluster, and
%    the cluster centers are then computed as the centroids of the points 
%    in the cluster.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license. 
%
%  Modified:
%
%    04 October 2009
%
%  Author:
%
%    John Burkardt
%
%  Parameters:
%
%    Input, integer DIM_NUM, the number of spatial dimensions.
%
%    Input, integer POINT_NUM, the number of points.
%
%    Input, integer CLUSTER_NUM, the number of clusters.
%
%    Input, real POINT(DIM_NUM,POINT_NUM), the coordinates 
%    of the points.
%
%    Input, integer SEED, a seed for the random 
%    number generator.
%
%    Output, real CLUSTER_CENTER(DIM_NUM,CLUSTER_NUM), 
%    the coordinates of the cluster centers.
%
%    Output, integer SEED, a seed for the random 
%    number generator.
%

%
%  Assign one point to each cluster center.
%
  for i = 1 : cluster_num
    cluster_center(1:dim_num,i) = point(1:dim_num,i);
  end

  cluster_population(1:cluster_num) = 1;
%
%  The rest of the points get assigned randomly.
%
  for i = cluster_num + 1 : point_num
    [ j, seed ] = i4_uniform ( 1, cluster_num, seed );
    cluster_center(1:dim_num,j) = cluster_center(1:dim_num,j) + point(1:dim_num,i);
    cluster_population(j) = cluster_population(j) + 1;
  end
%
%  Now average the points to get the centroid.
%
  for i = 1 : cluster_num
    cluster_center(1:dim_num,i) = cluster_center(1:dim_num,i) ...
      / cluster_population(i);
  end
    
  return
end