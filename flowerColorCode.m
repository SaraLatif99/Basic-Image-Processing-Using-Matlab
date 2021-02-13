clear all
close all
img = imread('C:\Users\user\Desktop\Lab3Images\flowers.jpg');
img=im2uint8(img);
[row,col,ch] = size(img);
imgN1 = unit8(zeros(row,col,ch));
imgN1(:,:,1) = 255 - img(:,:,1);
imgN1(:,:,2) = 255- img(:,:,2);
imgN1(:,:,3) = 255 - img(:,:,3);
subplot(1,2,1), imshow(img),title('Original Image')
subplot(1,2,2),imshow(imgN),title('Negtive')
Img -ve for Color