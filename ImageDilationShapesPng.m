clear all
close all
clc
A=imread('C:\Users\Sara Latif Khan\OneDrive\Desktop\imgs\shapes.png');
 s=strel('disk',3);     %Structuring element
F=imdilate(A,s);    %Dialte the image by structuring element
figure,imshow(A);title('Original Image');
figure,imshow(F);title('Imdilate Image');
figure,imshow(F-A);title('Boundary extracted Image with using imdilate');