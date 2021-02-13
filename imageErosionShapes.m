clear all
close all
clc

A=imread('C:\Users\Sara Latif Khan\OneDrive\Desktop\imgs\shapes.png');
s=strel('disk',3);            %Structuring element
F=imerode(A,s);          %Erode the image by structuring element
figure,imshow(A);title('Original Image');
figure,imshow(A-F);title('Boundary extracted Image with using imerode');