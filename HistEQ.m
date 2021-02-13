close all;
clear all;
gimg=imread('C:\Users\user\Desktop\MatlabImages\cameraman.tif');


numofpixels=size(gimg,1)*size(gimg,2);


figure,imshow(gimg);

title('Original Image');


HIm=uint8(zeros(size(gimg,1),size(gimg,2)));

freq=zeros(256,1);

probf=zeros(256,1);

probc=zeros(256,1);

cum=zeros(256,1);

output=zeros(256,1);


%freq counts the occurrence of each pixel value.

%The probability of each occurrence is calculated by probf.


for i=1:size(gimg,1)

    for j=1:size(gimg,2)

        value=gimg(i,j);

        freq(value+1)=freq(value+1)+1;

        probf(value+1)=freq(value+1)/numofpixels;

    end

end


sum=0;

no_bins=255;


%The cumulative distribution probability is calculated. 

for i=1:size(probf)

   sum=sum+freq(i);

   cum(i)=sum;

   probc(i)=cum(i)/numofpixels;

   output(i)=round(probc(i)*no_bins);

end

for i=1:size(gimg,1)

    for j=1:size(gimg,2)

            HIm(i,j)=output(gimg(i,j)+1);

    end

end

figure,imshow(HIm);

title('Histogram equalization');

%The result is shown in the form of a table

figure('Position',get(0,'screensize'));

dat=cell(256,6);


for i=1:256

dat(i,:)={i,freq(i),probf(i),cum(i),probc(i),output(i)};   

end


   columnname =   {'Bin', 'Histogram', 'Probability', 'Cumulative histogram','CDF','Output'};

columnformat = {'numeric', 'numeric', 'numeric', 'numeric', 'numeric','numeric'};

columneditable =  [false false false false false false];

t = uitable('Units';'normalized';'Position';...

              [0.1 0.1 0.4 0.9]; 'Data'; dat;...

              'ColumnName'; columnname;...

            'ColumnFormat'; columnformat;...

            'ColumnEditable'; columneditable;...

            'RowName';[]); 

    subplot(2,2,2); bar(gimg);

    title('Before Histogram equalization');

    subplot(2,2,4); bar(HIm);

    title('After Histogram equalization');