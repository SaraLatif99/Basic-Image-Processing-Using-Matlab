close all
clear all
im = imread('C:\Users\user\Desktop\MatlabImages\flowers.jpg');
imNew = uint8(zeros(768,1024,3));
imR = im(:,:,1);
imG = im(:,:,2);
imB = im(:,:,3);
figure;
im1 = bitget(imR,1); subplot(4,4,1),imshow(logical(im1)),title('bit1');
im2 = bitget(imR,2); subplot(4,4,2),imshow(logical(im2)),title('bit2');
im3 = bitget(imR,3); subplot(4,4,3),imshow(logical(im3)),title('bit3');
im4 = bitget(imR,4); subplot(4,4,4),imshow(logical(im4)),title('bit4');
im5 = bitget(imR,5); subplot(4,4,5),imshow(logical(im5)),title('bit5');
im6 = bitget(imR,6); subplot(4,4,6),imshow(logical(im6)),title('bit6');
im7 = bitget(imR,7); subplot(4,4,7),imshow(logical(im7)),title('bit7');
im8 = bitget(imR,8); subplot(4,4,8),imshow(logical(im8)),title('bit8');
figure;

imG1 = bitget(imG,1); subplot(4,4,1),imshow(logical(imG1)),title('bitG1');
imG2 = bitget(imG,2); subplot(4,4,2),imshow(logical(imG2)),title('bitG2');
imG3 = bitget(imG,3); subplot(4,4,3),imshow(logical(imG3)),title('bitG3');
imG4 = bitget(imG,4); subplot(4,4,4),imshow(logical(imG4)),title('bitG4');
imG5 = bitget(imG,5); subplot(4,4,5),imshow(logical(imG5)),title('bitG5');
imG6 = bitget(imG,6); subplot(4,4,6),imshow(logical(imG6)),title('bitG6');
imG7 = bitget(imG,7); subplot(4,4,7),imshow(logical(imG7)),title('bitG7');
imG8 = bitget(imG,8); subplot(4,4,8),imshow(logical(imG8)),title('bitG8');
figure;
imB1 = bitget(imB,1); subplot(4,4,1),imshow(logical(imB1)),title('bitB1');
imB2 = bitget(imB,2); subplot(4,4,2),imshow(logical(imB2)),title('bitB2');
imB3 = bitget(imB,3); subplot(4,4,3),imshow(logical(imB3)),title('bitB3');
imB4 = bitget(imB,4); subplot(4,4,4),imshow(logical(imB4)),title('bitB4');
imB5 = bitget(imB,5); subplot(4,4,5),imshow(logical(imB5)),title('bitB5');
imB6 = bitget(imB,6); subplot(4,4,6),imshow(logical(imB6)),title('bitB6');
imB7 = bitget(imB,7); subplot(4,4,7),imshow(logical(imB7)),title('bitB7');
imB8 = bitget(imB,8); subplot(4,4,8),imshow(logical(imB8)),title('bitB8');