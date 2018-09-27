clc;
clear all;
close all;

path = '/home/badri/RenderForCNN/data/syn_images/02958343/1a6f615e8b1b5ae4dbbc9440457e303e/02958343_1a6f615e8b1b5ae4dbbc9440457e303e_a052_e-16_t009_d004.png';
        c = imread(path);
%  figure, imshow(c);
%  impixelinfo()
        
        
        for i = 1:size(c,1)
            for j=1:size(c,2)
                if c(i,j,1) == 0 & c(i,j,2) == 0 & c(i,j,3) == 0
                    d(i, j) = 5;
                elseif c(i,j,1) > 50 & c(i,j,2) > 50 & c(i,j,3) < 50 
                    d(i, j) = 2;    
                elseif c(i,j,1) > 50 & c(i,j,2) > 20 & c(i,j,3) < 20 
                    d(i, j) = 9;          
                elseif c(i,j,1) > 50 & c(i,j,2) <= 20 & c(i,j,3) < 20 
                    d(i, j) = 1;
                elseif c(i,j,1) > 50 & c(i,j,2) < 50 & c(i,j,3)> 50
                    d(i, j) = 4;
                elseif c(i,j,1)  < 50 & c(i,j,2) > 50 & c(i,j,3) < 50
                    d(i, j) = 3;
                elseif c(i,j,1) < 50 & c(i,j,2) > 50 & c(i,j,3)> 50
                    d(i, j) = 8;
                elseif c(i,j,1) <50 & c(i,j,2) < 50 & c(i,j,3) > 50
                    d(i, j) = 6;
                else
                    d(i, j) = 7;
                end
            end
        end
    
     figure,imagesc(d);
     colorbar;
     impixelinfo();
%     name = strtok(filename, '.');
%     
%     
%     imagePath = fullfile(path2,temp{1},strcat(name,'.png'));
%     imwrite(uint8(d), imagePath,'png');

