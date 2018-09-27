close all;clear all;
clc;

%im=imread('/home/badri/RenderForCNN/data/syn_images/fix/02958343_1a0bc9ab92c915167ae33d942430658c_a074_e033_t005_d003.png');
im=imread('/home/badri/RenderForCNN/data/syn_images/fix/02958343_1a0bc9ab92c915167ae33d942430658c_a074_e033_t005_d003.png');
%im=imread('/home/badri/RenderForCNN/data/syn_images/02958343/test/02958343_1ca64f9d6e008fb35fcb05674109534a_a101_e027_t002_d002.png');
figure,imshow(im);

% red = im(:,:,1); green = im(:,:,2); blue = im(:,:,3);
% 
% mred = red >= 130 & red <= 150; 
% mgreen = green >= 130 & green <= 150; 
% mblue = blue >= 130 & blue <= 150;
% 
% final_mask = mred & mgreen & mblue;
% red(final_mask) = 255; green(final_mask) = 255; blue(final_mask) = 255;
% out = cat(3, red, green, blue);
% figure,imshow(out);
% 
% for i=1:540
%     for j=1:960
%         if out(i,j,1)==out(i,j,2) && out(i,j,1)==out(i,j,3)
%             out(i,j,:)=255;
%         end
%     end
% end
% figure,imshow(out);

% for i=1:540
%     for j=1:960
%         if im(i,j,1)==im(i,j,2) && im(i,j,1)~=im(i,j,3)&& im(i,j,1)>140
%             im(i,j,1)=255;
%             im(i,j,2)=255;
%             im(i,j,3)=0;
%         end
%     end
% end
%figure,imshow(im);

% for i=1:540
%     for j=1:960
%         if im(i,j,1)==im(i,j,3) && im(i,j,1)~=im(i,j,2)
%             im(i,j,1)=255;
%             im(i,j,3)=255;
%             im(i,j,2)=0;
%         end
%     end
% end
% figure,imshow(im);

% % for i=1:540
% %     for j=1:960
% %         if im(i,j,1)==im(i,j,3) && im(i,j,1)>im(i,j,2) && im(i,j,1)>140
% %             im(i,j,1)=255;
% %             im(i,j,3)=255;
% %             im(i,j,2)=0;
% %         end
% %     end
% end
%figure,imshow(im);

% for i=1:540
%     for j=1:960
%         if im(i,j,1)==im(i,j,3) && im(i,j,1)<im(i,j,2) && im(i,j,2)>140
%             im(i,j,2)=255;
%             im(i,j,3)=0;
%             im(i,j,1)=0;
%         end
%     end
% end
%figure,imshow(im);

for i=1:540
    for j=1:960
        if im(i,j,2)>im(i,j,1) && im(i,j,1)==im(i,j,3) && im(i,j,2)>180
            im(i,j,2)=255;
            im(i,j,1)=0;
            im(i,j,3)=0;
        end
    end
end

for i=1:540
    for j=1:960
        if im(i,j,1)>im(i,j,3) && im(i,j,3)==im(i,j,2) && im(i,j,1)>180
            im(i,j,1)=255;
            im(i,j,3)=0;
            im(i,j,2)=0;
        end
    end
end

for i=1:540
    for j=1:960
        if im(i,j,1)<im(i,j,3) && im(i,j,3)==im(i,j,2) && im(i,j,1)<100
            im(i,j,1)=0;
            im(i,j,3)=255;
            im(i,j,2)=255;
        end
    end
end

for i=1:540
    for j=1:960
        if im(i,j,3)>im(i,j,1) && im(i,j,1)==im(i,j,2)&& im(i,j,3)>140
            im(i,j,3)=255;
            im(i,j,1)=0;
            im(i,j,2)=0;
        end
    end
end
figure,imshow(im);
