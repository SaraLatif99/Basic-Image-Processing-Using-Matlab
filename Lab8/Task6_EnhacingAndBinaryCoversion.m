


close all
clear all
imgRice=imread('rice.png');
imgCoins=imread('coins.png');
riceB=imbinarize(imgRice);
coinsB=imbinarize(imgCoins);

img=imread('cameraman.tif');
cameraB=imbinarize(img);


subplot(3,2,1),imshow(imgRice),title('Orginal Image');
subplot(3,2,2),imshow(riceB),title('Binary');
subplot(3,2,3),imshow(imgCoins),title('Orginal Image');
subplot(3,2,4),imshow(coinsB),title('Binary');
subplot(3,2,5),imshow(img),title('Orginal Image');
subplot(3,2,6),imshow(cameraB),title('Binary');






