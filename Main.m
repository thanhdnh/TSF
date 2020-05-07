clearvars; clc;
I = imread('cameraman.tif');
In = imnoise(I, 'salt & pepper', .5);
tic
Id = TSF(In);
toc
imshow([I, In, Id]);
psnr(Id, I)
ssim(Id, I)
