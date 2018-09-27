clc;
clear all;
close all;

Point_Cloud = importdata('/tmp/badri/data/XYZ/1a0bc9ab92c915167ae33d942430658c.csv');
% size(point_cloud)
x = Point_Cloud(:,1);
y = Point_Cloud(:,2);
z = Point_Cloud(:,3);

vq = interp3(x, y, z, 'linear');
size(vq)
% size(x)
% size(y)
% size(z)
% Density = 300;
% [X,Y]   = meshgrid(linspace(min(x), max(x), Density), linspace(min(y), max(y), Density));
% F       = scatteredInterpolant(x, y, z, 'natural','linear');
% Z       = F(X,Y);
% Int_PC  = [reshape(X,Density^2,1) reshape(Y,Density^2,1) reshape(Z,Density^2,1)];
% Int_PC(any(isnan(Int_PC{i}),2),:) = [];  