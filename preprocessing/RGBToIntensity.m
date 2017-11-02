clc;clear;close all;

data_dir='M_00227' %RGB
img_list=dir(data_dir);

output_dir='intensity';
mkdir(output_dir);

for i=3:numel(img_list)
    RGB_name=fullfile(data_dir,img_list(i).name);
    RGB=imread(RGB_name);
    I= rgb2gray(RGB);
    
    I_dir=fullfile(output_dir,img_list(i).name);
    imwrite(I,I_dir);
    
    
end

