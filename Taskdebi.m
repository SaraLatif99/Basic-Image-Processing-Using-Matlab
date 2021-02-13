close all
clear all
clc
img=imread('C:\Users\user\Desktop\MatlabImages\cameraman.tif');
imgbin=de2bi(img);
imshow(logical(imgbin));
bit1=[];
bit2=[];
bit3=[];
bit4=[];
bit5=[];
bit6=[];
bit7=[];
bit8=[];
for i=1:256
    for j=1:256
        bit1(i,j)=imgbin(i*j,1);
         bit2(i,j)=imgbin(i*j,2);
          bit3(i,j)=imgbin(i*j,3);
           bit4(i,j)=imgbin(i*j,4);
            bit5(i,j)=imgbin(i*j,5);
             bit6(i,j)=imgbin(i*j,6);
              bit7(i,j)=imgbin(i*j,7);
               bit8(i,j)=imgbin(i*j,8);
    end
end
subplot(5,2,1),imshow(img),title('orginal');
subplot(5,2,2),imshow(logical(bit1)),title('bit1');
subplot(5,2,3),imshow(logical(bit2)),title('bit2');
subplot(5,2,4),imshow(logical(bit3)),title('bit3');
subplot(5,2,5),imshow(logical(bit4)),title('bit4');
subplot(5,2,6),imshow(logical(bit5)),title('bit5');
subplot(5,2,7),imshow(logical(bit6)),title('bit6');
subplot(5,2,8),imshow(logical(bit7)),title('bit7');
subplot(5,2,9),imshow(logical(bit8)),title('bit8');