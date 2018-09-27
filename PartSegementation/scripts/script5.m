
clc;
clear all;
close all;
list = dir('/tmp/badri/data/points+label_colored.csv/*.csv');
path = '/tmp/badri/data/points+label_colored.csv/';
for j = 1:size(list)
    filename = string(list(j).name);
    M = csvread(strcat(path,filename));
    
    P=M(:,1:3);
    Q=M(:,4:6);
    
    ptCloud=pointCloud(P,'Color',Q);
    pcwrite(ptCloud,extractBefore(strcat('/tmp/badri/data/PLY_final/', filename),".csv"),'PLYFormat','binary');
    %ptCloud2 = pcread('/home/badri/scripts/output/1a0c91c02ef35fbe68f60a737d94994a.ply');
    %pcshow(ptCloud2); 
end %%Conversion of data to pointCloud and ply format


% 
% 
% clc;
% clear all;
% close all;
% list = dir('/home/badri/Documents/project/test/*.csv');
% %disp(size(list))
% 
% for j = 1:size(list)
%     filename = list(j).name;
%     disp(filename)
%     M = csvread(filename);
%     
%     P=M(:,1:3);
%     Q=M(:,4:6);
%     
%     ptCloud=pointCloud(P,'Color',Q);
%     name = strcat('/home/badri/Documents/project/test/', filename)
%     path = strtok(name,'.') 
%     pcwrite(ptCloud,path,'PLYFormat','binary');
%     %ptCloud2 = pcread('/home/badri/scripts/output/1a0c91c02ef35fbe68f60a737d94994a.ply');
%     %pcshow(ptCloud2); 
% end