clc;
clear all;
close all;

list = dir('/home/badri/RenderForCNN/data/syn_images/02958343/1b85c850cb4b93a6e9415adaaf77fdbf/*.png');
%I = imread('/home/badri/RenderForCNN/data/syn_images/02958343/1b85c850cb4b93a6e9415adaaf77fdbf/02958343_1b85c850cb4b93a6e9415adaaf77fdbf_a103_e-33_t324_d004.png');
I = imread('/home/badri/RenderForCNN/data/syn_images/02958343/1bcd1366a1f9e50f6a0f511cb16964d/02958343_1bcd1366a1f9e50f6a0f511cb16964d_a203_e-01_t358_d002.png');

figure,imshow(I);
c=I;
d=zeros(540,960);

for i = 1:size(c,1)
    for j=1:size(c,2)
        if c(i,j,1) == 0 & c(i,j,2) == 0 & c(i,j,3) == 0
            d(i, j) = 5;
        elseif c(i,j,1) > 50 & c(i,j,2) < 50 & c(i,j,3) < 50 
            d(i, j) = 1;
        elseif c(i,j,1) > 50 & c(i,j,2) > 50 & c(i,j,3) < 50 
            d(i, j) = 2;
        elseif c(i,j,1) > 50 & c(i,j,2) < 50 & c(i,j,3)> 50
            d(i, j) = 4;
        elseif c(i,j,1)  < 50 & c(i,j,2) > 50 & c(i,j,3) < 50
            d(i, j) = 3;
        elseif c(i,j,1) < 50 & c(i,j,2) > 50 & c(i,j,3)> 50
            d(i, j) = 0;
        elseif c(i,j,1) <50 & c(i,j,2) < 50 & c(i,j,3) > 50
            d(i, j) = 6;
        else
            d(i, j) = 7;
        end
    end
end

%figure, imshow(d);
figure,imagesc(d);
colorbar;
impixelinfo()

imwrite(uint8(d), '/home/badri/mask_image.png');

% q1=mat2gray(d);
% q=imfill(q1);
% figure,imshow(q);
% figure,imagesc(q);
% colorbar;
% q=imhist(d);
% figure,imshow(q);