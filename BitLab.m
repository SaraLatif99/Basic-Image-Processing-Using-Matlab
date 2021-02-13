close all
clear all
img=imread('C:\Users\user\Desktop\Lab3Images\cameraman.tif');
subplot(5,2,1),imshow(img),title('org img');
istPlan=bitget(img,1);
subplot(5,2,2),imshow(istPlan),title('ist plan');
secondPlan=bitget(img,2);
subplot(5,2,3),imshow(secondPlan),title('2nd plan');
thirdPlan=bitget(img,3);
subplot(5,2,4),imshow(thirdPlan),title('3rd plan');
fourthPlan=bitget(img,4);
subplot(5,2,5),imshow(fourthPlan),title('4th plan');
fifthPlan=bitget(img,5);
subplot(5,2,6),imshow(fifthPlan),title('5th plan');
siththPlan=bitget(img,6);
subplot(5,2,7),imshow(sixthPlan),title('6th plan');
seventhPlan=bitget(img,7);
subplot(5,2,8),imshow(seventhPlan),title('7th plan');
eighthPlan=bitget(img,8);
subplot(5,2,9),imshow(eighthPlan),title('8th plan');
seventhPlan=bitget(img,9);
