clc;
clear all;
close all;

path = '/tmp/badri/data/points+label.csv/';
list = dir('/tmp/badri/data/points+label.csv/*.csv');
%cd('/home/badri/scripts/output/')
for j = 1:size(list)
    filename = string(list(j).name);
    M = csvread(strcat(path,filename));

    s = 100;
    x = M(:, 1);
    y = M(:, 2);
    z = M(:, 3);
    d = M(:, 4:6);
    c = M(:, 4:6);
    
    for i = 1:size(c,1)
        if x(i) > 0 & y(i) < 0 & z(i) > 0 & d(i,3) == 1
            c(i, :) = [1 1 0];
        elseif x(i) < 0 & y(i) < 0 & z(i) > 0 & d(i,3) == 1 
            c(i, :) = [1 0 1];
        elseif x(i) > 0 & y(i) < 0 & z(i) < 0 & d(i,3) == 1
            c(i, :) = [0 1 1];
         elseif x(i) < 0 & y(i) < 0 & z(i) < 0 & d(i,3) == 1
             c(i, :) = [0 0 1];
        elseif d(i,1) == 0 & d(i,2) == 0 & d(i,3) == 0 
            c(i, :) = [1 1 1];       
        end
    end
    o=[x y z c];
    
    csvwrite(strcat('/tmp/badri/data/points+label_colored.csv/', filename), o)
   %csvwrite(filename,c)
end
%%Adding color to wheels

