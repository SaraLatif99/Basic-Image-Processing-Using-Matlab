Matrix1 =[0 0 0];
Matrix2 =[1 1 1];
Matrix3 =[0 1 0];
[m,n]=size(Matrix1);
my_image=[m,n,3];
my_image(:,:,1)=Matrix1;
my_image(:,:,2)=Matrix2;
my_image(:,:,3)=Matrix3;
imshow(my_image);
