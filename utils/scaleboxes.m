function [ ds, bs ] = scaleboxes( ds, bs, scale )
%SCALE_DS Summary of this function goes here
%   Detailed explanation goes here

ds(:, 1:4) = (ds(:, 1:4) - 1) .* scale + 1;
bs_flag = (bs == 0);
bs(:, 1:end-2) = (bs(:, 1:end-2) - 1) .* scale + 1;
bs(bs_flag) = 0;

end

