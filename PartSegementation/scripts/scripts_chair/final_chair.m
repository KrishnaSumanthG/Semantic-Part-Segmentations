clc;
clear all;
close all;

path = '/tmp/badri/chair_data/03001627/final_1a6f615e8b1b5ae4dbbc9440457e303e.csv';
filename = 'final_1a6f615e8b1b5ae4dbbc9440457e303e.csv'

M = csvread(path);
P=M(:,1:3);
Q=M(:,4:6);
    
ptCloud=pointCloud(P,'Color',Q);
pcwrite(ptCloud,extractBefore(strcat('/tmp/badri/chair_data/03001627/', filename),".csv"),'PLYFormat', 'binary');

