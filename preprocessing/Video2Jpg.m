clc;
clear;
close all;
video=VideoReader('data\M_00227.avi');
frame_number=floor(video.Duration * video.FrameRate);
dir_name=video.name(1:end-4); mkdir(dir_name);

for i=1:frame_number
    image_name=fullfile(dir_name,'\',num2str(i));
    image_name=strcat(image_name,'.png');
    I=read(video,i); 
    imwrite(I,image_name,'png');                   
    I=[];

end



% vid_path='D:\WANG Jiangliu\Research\methodology\orientation\code\compute_angular_velocity\preprocessing';
% %addpath(vid_path);
% all_vid_path=fullfile(vid_path,'\*.avi');
% vid_name_list=dir(all_vid_path);
% vid_num=length(vid_name_list);
% tic;
% for i=1:1
%     fprintf('%s\n',vid_name_list(i).name);
%     %fprintf('%s\n',vid_name_list(i).name(1:end-4));
%     dir_name=fullfile(vid_path,vid_name_list(i).name(1:end-4));
%     mkdir(dir_name);
%     
%     video=VideoReader(vid_name_list(i).name);
%     frame_number=floor(video.Duration * video.FrameRate);
%     
%     for i=1:frame_number
%         image_name=fullfile(dir_name,'\',num2str(i));
%         image_name=strcat(image_name,'.jpg');
%         I=read(video,i); 
%         %I=gpuArray(I);
%         imwrite(I,image_name,'jpg');                   
%         I=[];
%     end  
%     
% end
% toc;


