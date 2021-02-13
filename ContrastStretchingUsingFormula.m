clear all
close all
img=imread('C:\Users\user\Desktop\Lab3Images\car_4.jpg');
img = imresize(img,0.5);
a = min(img(:));
b = max(img(:));
c= 0;
d = 255;
subplot(2,2,1),imshow(img),title('OriginalImage');
subplot(2,2,2),imhist(img),title('Histogram of Original Image');
% imNor=imadjust(img,stretchlim(img),[0,1]);
imNor = (img - c)*(b-a/d-c) + a;
subplot(2,2,3),imshow(imNor),title('Normalized image');
subplot(2,2,4),imhist(imNor),title('Normalized Histogram');