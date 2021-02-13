close all
clear all
img=imread('fingerprints.GIF');
SeE=strel('square',5);
imgEOut=imerode(img,SeE);
SeD=strel('square',3);
imgDOut=imdilate(imgEOut,SeD);

%imshow(imgOut);
% extrnal  dilated img ko and karna hai not of orignl img k sath
%negImg=255-img;
%resImg=imgOut&negImg;
subplot(1,2,1),imshow(img),title('Orginal Image');
subplot(1,2,2),imshow(imgDOut),title('After errosion and dilation');