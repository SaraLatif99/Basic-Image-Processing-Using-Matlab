clear all;
close all;
img = imread('C:\Users\user\Desktop\MatlabImages\cameraman.tif');
%imgdbl = im2double(img);
function [filtered_img] = average_filter(noisy_img)
    [m,n] = size(noisy_img);
    filtered_img = zeros(m,n);
    for i = 1:m-2
        for j = 1:n-2
            sum = 0;
            for k = i:i+2
                for l = j:j+2
                    sum = sum+noisy_img(k,l);
                end
            end
            filtered_img(i+1,j+1) = sum/9.0;
        end
    end
end