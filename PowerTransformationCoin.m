close all
clear all
img = imread('C:\Users\user\Desktop\Lab3Images\cell.tif');
imgD = im2double(img);
c=1; gamma=1/2.5;
imgPower = c*(imgD).^gamma;
imgPower = 255*imgPower;
imgPower =uint8(imgPower);
subplot(2,1,1),imshow(img),title('Original Image')
suplot(2,1,2),imshow(imgpower),title('transformed Image')