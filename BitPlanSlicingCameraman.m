close all
clear all
img = imread('C:\Users\user\Desktop\MatlabImages\cameraman.tif');
subplot(5,2,1),imshow(img),title('Orignal Image');
FirstPlane = bitget(img,1);
subplot(5,2,2),imshow(logical(FirstPlane)),title('Ist Plane');
SecondPlane = bitget(img,2);
subplot(5,2,3),imshow(logical(SecondPlane)),title('2nd Plane');
ThirdPlane = bitget(img,3);
subplot(5,2,4),imshow(logical(ThirdPlane)),title('3rd Plane');
FourthPlane = bitget(img,4);
subplot(5,2,5),imshow(logical(FourthPlane)),title('4th Plane');
FifthPlane = bitget(img,5);
subplot(5,2,6),imshow(logical(FifthPlane)),title('5th Plane');
SixthPlane = bitget(img,6);
subplot(5,2,7),imshow(logical(SixthPlane)),title('6th Plane');
SeventhPlane = bitget(img,7);
subplot(5,2,8),imshow(logical(SeventhPlane)),title('7th Plane');
EighthtPlane = bitget(img,8);
subplot(5,2,9),imshow(logical(EighthPlane)),title('8th Plane');

