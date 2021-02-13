close all
clear all
img=imread('sketch.GIF');
Se=strel('diamond',3);
imgOut=imerode(img,Se);
% extrnal  dilated img ko and karna hai not of orignl img k sath

% imgOut=imdilate(img,Se);
% negImg=225-img;
% resImg=imgOut&negImg;
resImg=img-imgOut;
subplot(1,2,1),imshow(img),title('Orginal Image');
subplot(1,2,2),imshow(resImg),title('Boundary Detection with  3x3');