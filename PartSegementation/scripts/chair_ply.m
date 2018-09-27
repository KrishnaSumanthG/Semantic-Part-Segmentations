clc;
clear all;
close all;

path = '/tmp/badri/chair_data/03001627/chair_combined/';
list = dir('/tmp/badri/chair_data/03001627/chair_combined/*.csv');
g = 0;
for j = 1:size(list)
    filename = string(list(j).name);
    M = csvread(strcat(path,filename));
    g = g + 1;
    disp(g)
    s = 100;
    x = M(:, 1);
    y = M(:, 2);
    z = M(:, 3);
    d = M(:, 4:7);
    c = M(:, 4:6);
    
    for i = 1:size(c,1)
        if x(i) > 0 & y(i) < 0 & z(i) < 0 & d(i,1) == 1
            c(i, :) = [0 0 1];
        elseif x(i) < 0 & y(i) > 0 & z(i) < 0 & d(i,1) == 1
            c(i, :) = [0 0 1];
        elseif x(i) > 0 & y(i) > 0 & z(i) < 0 & d(i,1) == 1
            c(i, :) = [0 0 1];
        elseif x(i) > 0 & y(i) > 0 & z(i) > 0 & d(i,1) == 1
            c(i, :) = [0.95 0.45 0.0745];
        elseif x(i) < 0 & y(i) > 0 & z(i) > 0 & d(i,1) == 1
            c(i, :) = [0.95 0.45 0.0745];
        elseif x(i) > 0 & y(i) < 0 & z(i) > 0 & d(i,1) == 1
            c(i, :) = [0.95 0.45 0.0745];
        elseif d(i,2) == 1
            c(i,:) = [0 1 0];
        elseif d(i,4) == 1
            c(i, :) = [1 1 1];    
        elseif x(i) > 0 & y(i) < 0 & z(i) > 0 & d(i,3) == 1
            c(i, :) = [1 1 0];
        elseif x(i) < 0 & y(i) < 0 & z(i) > 0 & d(i,3) == 1 
            c(i, :) = [1 0 1];
        elseif x(i) > 0 & y(i) < 0 & z(i) < 0 & d(i,3) == 1
            c(i, :) = [1 0 0];
        elseif x(i) < 0 & y(i) < 0 & z(i) < 0 & d(i,3) == 1
             c(i, :) = [0 1 1];       
        end
    end
    o=[x y z c];
    
    csvwrite(strcat('/tmp/badri/chair_data/03001627/added_color/', filename), o)
   %csvwrite(filename,c)
end
%%Adding color to wheels

