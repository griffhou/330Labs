function [outputArg1,outputArg2] = EulerSum(N)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
global gamma
gamma = 0.577215664901532;
A=zeros([1 N]);

for h=1:N
    A(h)=1/h;
end
outputArg1=sum(A)-log(N);
outputArg2=abs(outputArg1-gamma);
end