close all
clear all
A=imread('C:\Users\Sara Latif Khan\OneDrive\Desktop\imgs\binary.GIF');
se = strel('square',3);
imgEout = imerode(A,se);
st = strel('square',3);
outBound = A - imerode(A,se);
intBound = imerode(A,se) - A;

figure,imshow(A);title('Original Image');

figure,imshow(outBound);title('OutBoundary Image');

figure,imshow(intBound);title('intBoundary Image');