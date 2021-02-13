close all
clear all
clc

A=imread('C:\Users\Sara Latif Khan\OneDrive\Desktop\imgs\img1.GIF');
%se = strel('square',3);
%se = [1 1 1; 1 1 1; 1 1 1];
se = [ 0 1 0; 1 1 1; 0 1 0];
imgEout = imerode(A,se);
%st = strel('square',3);
%st = [1 1 1; 1 1 1; 1 1 1];
st = [ 0 1 0; 1 1 1; 0 1 0];
outBound = A - imerode(A,se);
intBound = imerode(A,se) - A;

figure,imshow(A);title('Original Image');

figure,imshow(outBound);title('OutBoundary Image');

figure,imshow(intBound);title('intBoundary Image');