clc;
clear all;
close all;

rgbImage = imread('/home/badri/RenderForCNN/data/syn_images/02958343/test/02958343_1ca64f9d6e008fb35fcb05674109534a_a067_e006_t351_d004.png');
figure, imshow(rgbImage) 
[rows, columns, numberOfColorBands] = size(rgbImage);

hsv = rgb2hsv(rgbImage);
h = hsv(:,:,1);
s = hsv(:,:,2);
v = hsv(:,:,3);
figure, imshow(hsv, []);
figure, imshow(h, []);
figure, imshow(s, []);
figure, imshow(v, []);