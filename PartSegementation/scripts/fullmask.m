clc;
clear all;
close all;
path = '/tmp/badri/chair_data/03001627/semantic-segmentation-pytorch/data/whiteData/annotations/validation';
%path = '/home/badri/test/';
files = dir(path);
dirNames = {files([files.isdir]).name};
newNames = dirNames(~ismember(dirNames,{'.', '..'}));
folder=mkdir('/tmp/badri/chair_data/03001627/semantic-segmentation-pytorch/data/whiteData/annotations_val');
g=1;
path2= '/tmp/badri/chair_data/03001627/semantic-segmentation-pytorch/data/whiteData/annotations_val';

for k = 1:size(newNames,2)
    newpath = fullfile(path, newNames(k), '*.png');
    list = dir(newpath{1});
    temp=newNames(k);
    mkdir(path2, temp{1});
    for j = 1:size(list)
        filename = list(j).name;
        f = fullfile(path,newNames(k), filename);
        c = imread(f{1});
%     figure,imshow(c);
       [a, b, q] = size(c);
        d=zeros(a,b);
        
       for i = 1:size(c,1)
            for j=1:size(c,2)
                if c(i,j,1) <= 2 & c(i,j,2) <= 2 & (c(i,j,3) >= 250 || c(i,j,3) == 128) %back
                    d(i, j) = 1;
                elseif c(i,j,1) <= 5 & c(i,j,2) >= 250 & c(i,j,3) >= 250 %seat
                    d(i, j) = 2;    
                elseif c(i,j,1) >=  250 & (c(i,j,2) >= 125 & c(i,j,2) <= 130)  & c(i,j,3) <= 5 %rf
                    d(i, j) = 3;          
                elseif c(i,j,1) >= 250 & c(i,j,2) <= 5 & c(i,j,3) <= 5 %lf
                    d(i, j) = 4;
                elseif c(i,j,1) >= 250 & c(i,j,2) >= 250 & c(i,j,3)<= 5 %lb
                    d(i, j) = 5;
                elseif c(i,j,1) <=5 & c(i,j,2) >= 250 & c(i,j,3) <= 5 %rb
                    d(i, j) = 6;
                elseif c(i,j,1) >= 250 & c(i,j,2) <= 5 & c(i,j,3) >= 250 %rh
                    d(i, j) = 7;
                elseif c(i,j,1) >=250 & (c(i,j,2) >= 125 & c(i,j,2) <= 130) & (c(i,j,3) >= 125 & c(i,j,3) <= 130) %lh
                    d(i, j) = 8;
                else
                    d(i, j) = 9;
                end
            end
        end


%        for i = 1:size(c,1)
%             for j=1:size(c,2)
%                 if c(i,j,1) == 0 & c(i,j,2) == 0 & c(i,j,3) == 0
%                     d(i, j) = 5;
%                 elseif c(i,j,1) > 50 & c(i,j,2) > 50 & c(i,j,3) < 50 
%                     d(i, j) = 2;    
%                 elseif c(i,j,1) > 50 & c(i,j,2) > 20 & c(i,j,3) < 20 
%                     d(i, j) = 9;          
%                 elseif c(i,j,1) > 50 & c(i,j,2) <= 20 & c(i,j,3) < 20 
%                     d(i, j) = 1;
%                 elseif c(i,j,1) > 50 & c(i,j,2) < 50 & c(i,j,3)> 50
%                     d(i, j) = 4;
%                 elseif c(i,j,1)  < 50 & c(i,j,2) > 50 & c(i,j,3) < 50
%                     d(i, j) = 3;
%                 elseif c(i,j,1) < 50 & c(i,j,2) > 50 & c(i,j,3)> 50
%                     d(i, j) = 8;
%                 elseif c(i,j,1) <50 & c(i,j,2) < 50 & c(i,j,3) > 50
%                     d(i, j) = 6;
%                 else
%                     d(i, j) = 7;
%                 end
%             end
%         end

%     figure,imagesc(d);
%     colorbar;
    name = strtok(filename, '.');
    
    
    imagePath = fullfile(path2,temp{1},strcat(name,'.png'));
    imwrite(uint8(d), imagePath,'png');
    end
    disp(g);
    g=g+1;
end

