function up = Upsample2D(x,n)

%==========================================================================
% function up = Upsample2D(x,n)
%
% This function upsamples (by introducing zeros) the input image by a
% factor n.
%
% Inputs:
%   -x: image
%   -n: upscaling factor (must be an integer)
%
% Output:
%   -up: upsampled image
%
% Written by Jerome Gilles - San Diego State University, Dept of
% Mathematics & Statistics
% April 3nd, 2020
%==========================================================================

up=zeros(n*size(x));

for i=1:size(x,1)
    for j=1:size(x,2)
        up((i-1)*n+1,(j-1)*n+1)=x(i,j);
    end
end