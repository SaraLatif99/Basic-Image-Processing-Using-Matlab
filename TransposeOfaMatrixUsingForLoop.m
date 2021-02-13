clc
clear all;
close all;
x = [ 1 3; 5 7; 9 11];
[m n] = size(x);
tran = zeros( n,m );
for i =1:n
    for j=1:m
        tran(i,j)= x( j,i);
    end
end
disp('tranpose of matrix is :');
disp(tran);

