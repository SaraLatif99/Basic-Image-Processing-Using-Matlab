
% clear all
% close all
% clc;
% img=imread( 'binary.gif' );
% 
% 
% imgD=imread('binary.gif');
% imgE=imread('binary.gif');
% SeErrosion=strel('square',3);
% OutD=imdilate(imgD,SeDilation);
% SeDilation=strel('square',3);
% OutE=imerode(imgE,SeErrosion);
% subplot(2,3,1), imshow(img),title('orignal img');
% subplot(2,3,2), imshow(DilatedImage),title('Dilated Image');
% subplot(2,3,3), imshow(localMinImage),title(' Errodded Image');
% subplot(2,3,4), imshow(localMinImage),title(' Extraaa');
% subplot(2,3,5), imshow(OutD),title('Dilated Image Buitin');
% subplot(2,3,6), imshow(OutE),title(' Errodded Image Builtin');
 clear all
 close all

img=imread('binary.gif');
A=im2bw(img);
%Structuring element
B=getnhood(strel('square',11));

row=floor(size(B,1)/2);
col=floor(size(B,2)/2);
%Pad array on all the sides
padArr=padarray(A,[row col],1);
%Intialize a matrix with size of matrix A
logicalZeros=false(size(A));
for i=1:size(padArr,1)-(2*row)
    for j=1:size(padArr,2)-(2*col)
       
        Temp=padArr(i:i+(2*row),j:j+(2*col));
       
        logicalZeros(i,j)=min(min(Temp-B));
      
    end
end

subplot(1,2,1),imshow(img),title('Original');
subplot(1,2,2),imshow(~logicalZeros),title('Eroision');





