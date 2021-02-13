clear all
close all
clc
%Matlab Code for vertical edges:
img = imread('C:\Users\user\Desktop\Matlab\cameraman.tif');
I=double(img); %read image  
In=I;      %copy image  
mask=[1, 0, -1;1, 0, -1;1, 0, -1]; 
  
%Rotate image by 180 degree first flip up to down then left to right 
mask=flipud(mask);  
mask=fliplr(mask); 
for i=2:size(I, 1)-1
    for j=2:size(I, 2)-1
  
        %multiplying mask value with the corresponding image pixel value 
        neighbour_matrix=mask.*In(i-1:i+1, j-1:j+1);  
        avg_value=sum(neighbour_matrix(:)); 
        I(i, j)=avg_value; 
    end 
end 
figure, imshow(uint8(I)); 
%Matlab code for horizontal edges:
% I=double((imread('image1.jpg')); 
In=I; 
mask=[1, 1, 1;0, 0, 0;-1, -1, -1]; 
mask=flipud(mask); 
mask=fliplr(mask); 
for i=2:size(I, 1)-1
    for j=2:size(I, 2)-1
        neighbour_matrix=mask.*In(i-1:i+1, j-1:j+1); 
        avg_value=sum(neighbour_matrix(:)); 
        I(i, j)=avg_value; 
    end 
end 
figure, imshow(uint8(I)); 
%Matlab code for principal diagonal edges:
%I=double((imread('image1.jpg')); 
In=I; 
  
mask=[0, -1, -1;1, 0, -1;1, 1, 0]; 
mask=flipud(mask); 
mask=fliplr(mask); 
  
for i=2:size(I, 1)-1
    for j=2:size(I, 2)-1
        neighbour_matrix=mask.*In(i-1:i+1, j-1:j+1); 
        avg_value=sum(neighbour_matrix(:)); 
        I(i, j)=avg_value; 
    end 
end 
figure, imshow(uint8(I));
%Matlab Code for secondary diagonal edges
%I=double((imread('image1.jpg')); 
In=I; 
  
mask=[1, 1, 1;0, 0, 0;-1, -1, -1]; 
mask=flipud(mask); 
mask=fliplr(mask); 
  
for i=2:size(I, 1)-1
    for j=2:size(I, 2)-1
        neighbour_matrix=mask.*In(i-1:i+1, j-1:j+1); 
        avg_value=sum(neighbour_matrix(:)); 
        I(i, j)=avg_value; 
    end 
end 
figure, imshow(uint8(I));