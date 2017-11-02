clc;
clear;
vid_path='D:\WANG Jiangliu\ROSE data\RGB\nturgbd_rgb_s001\nturgb+d_rgb';
%addpath(vid_path);
all_vid_path=fullfile(vid_path,'\*.avi');
vid_name_list=dir(all_vid_path);
vid_num=length(vid_name_list);
tic;
for i=1:1
    fprintf('%s\n',vid_name_list(i).name);
    %fprintf('%s\n',vid_name_list(i).name(1:end-4));
    dir_name=fullfile(vid_path,vid_name_list(i).name(1:end-4));
    mkdir(dir_name);
    
    video=VideoReader(vid_name_list(i).name);
    frame_number=floor(video.Duration * video.FrameRate);
    
    for i=1:frame_number
        image_name=fullfile(dir_name,'\',num2str(i));
        image_name=strcat(image_name,'.jpg');
        I=read(video,i); 
        %I=gpuArray(I);
        imwrite(I,image_name,'jpg');                   
        I=[];
    end  
    
end
toc;
% while ~feof(name_list)
%     vid_name=fgetl(name_list);
%     fprintf('%s\n',vid_name);
%     fprintf('%s\n',vid_name(1:end-4));
%     
%     %video=VideoReader(vid_name);
%     %frame_number=floor(video.Duration * video.FrameRate);
%     
% %     %for i=1:frame_number
% %     %   image_name=strcat('video3sup\',num2str(i));
% %        image_name=strcat(image_name,'.jpg');
% %        I=read(video,i);                              
% %        imwrite(I,image_name,'jpg');                   
% %        I=[];
% %     end  
% %     num=num+1;
% end
% fprintf('%d\n',num);
% fclose(name_list);
% 
%     
% 
% video_file='S001C001P001R001A001_rgb.avi';
% video=VideoReader(video_file);
% frame_number=floor(video.Duration * video.FrameRate);
% 
% 
% for i=1:frame_number
%     image_name=strcat('video3sup\',num2str(i));
%     image_name=strcat(image_name,'.jpg');
%     I=read(video,i);                               %????
%     imwrite(I,image_name,'jpg');                   %???
%     I=[];
% end