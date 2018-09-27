
clc;
clear all;
close all;
list = dir('/tmp/badri/chair_data/03001627/added_color/*.csv');
path = '/tmp/badri/chair_data/03001627/added_color/';
g = 0;
for j = 1:size(list)
    filename = string(list(j).name);
    M = csvread(strcat(path,filename));
    g = g + 1;
    disp(g);
    P=M(:,1:3);
    Q=M(:,4:6);
    
    ptCloud=pointCloud(P,'Color',Q);
    pcwrite(ptCloud,extractBefore(strcat('/tmp/badri/chair_data/03001627/PLY_final/', filename),".csv"),'PLYFormat','binary');
end 
