close all
clear all
img=imread('img1.GIF');
Se=strel('square',3);
imgOut=imerode(img,Se);

% logic extrnal  dilated img ko and karna hai not of orignl img k sath

% negImg=225-img;
% resImg=imgOut&negImg;

resImg=img-imgOut;
subplot(2,2,1),imshow(img),title('Orginal Image');
subplot(2,2,2),imshow(resImg),title('Boundary Detection with sq 3x3');



imgNew=imread('img1.GIF');
SeN=strel('diamond',3);
imgOutN=imerode(imgNew,SeN);

% extrnal  dilated img ko and karna hai not of orignl img k sath
%imgOutN=imdilate(imgNew,SeN);
% negImgN=225-imgNew;
% resImgN=imgOutN&negImgN;
resImgN=imgNew-imgOutN;
subplot(2,2,3),imshow(imgNew),title('Orginal Image');
subplot(2,2,4),imshow(resImgN),title('Boundary Detection with diamond 3x3');


