clear all
close all
img=imread('binary.gif');
se=strel('square',11);
outputimg=imerode(img,se);
ExternalBoundary=img-outputimg;

InternalBoundary=outputimg-img;
%dilated imag 'and' with not of orignal imag for external boundary
%read erode origanl imag mius for erode image
%imshow(finalimg)
subplot(1,3,1), imshow(img),title('orignal img');
subplot(1,3,2), imshow(ExternalBoundary),title(' External boundaries');
% subplot(1,3,3), imshow(InternalBoundary),title(' Internal boundaries');