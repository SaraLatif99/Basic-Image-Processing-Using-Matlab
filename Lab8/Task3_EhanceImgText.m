close all
clear all
img=imread('brokentext.GIF');
Se=strel('square',11);
imgOut=imdilate(img,Se);
%imshow(imgOut);
% extrnal  dilated img ko and karna hai not of orignl img k sath
%negImg=225-img;
%resImg=imgOut&negImg;
subplot(1,2,1),imshow(img),title('Orginal Image');
subplot(1,2,2),imshow(imgOut),title('Boundary Detection with  3x3');