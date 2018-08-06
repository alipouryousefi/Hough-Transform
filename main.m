%%READ IMAGE
a = imread('i.jpeg');
img = rgb2gray(a);
gaussianFilter = fspecial('gaussian',20, 10);
img_filted = imfilter(img, gaussianFilter,'symmetric');
BW = edge(img_filted, 'Canny');
%%HOUGH
[H, theta,rho] = myhough(BW,3200,180);
%%Hough peaks
peaks = mypeaks(H, 10); 
%%draw
mylines(img, peaks,rho,theta);
