clc;clear;close all;

data_dir='K_00227'; %depth
img_list=dir(data_dir);

output_dir='depth';
mkdir(output_dir);

MinDepth=865.283;
MaxDepth=2060.67;


for i=3:numel(img_list)
    depth_name=fullfile(data_dir,img_list(i).name);
    depth=imread(depth_name);
    v=sum(depth,3)/3;
    depth_true=uint16((v*(MaxDepth-MinDepth)/255+MinDepth)*5);
    
    depth_true_dir=fullfile(output_dir,img_list(i).name);
    imwrite(depth_true,depth_true_dir);
end

