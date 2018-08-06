function mylines(im,peak,rho,theta)
[row,col]=size(peak);
imshow(im);
hold on;
for i = 1: row
    rho_i = rho(peak(i,1));
    theta_i=theta(peak(i,2))* pi/180;
     x1 = 1;
     x2 = size(im, 2);
     y1 = (rho_i - x1 * cos(theta_i)) / sin(theta_i);
     y2 = (rho_i - x2 * cos(theta_i)) / sin(theta_i);
     plot([x1,x2],[y1,y2],'r','LineWidth',3); 
end