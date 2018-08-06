function [H,theta,rho]=myhough(img , nrho , ntheta)
[rows, cols]=size(img);
H = zeros(nrho,ntheta);
rhomax=sqrt(rows^2 + cols^2);
theta=linspace(-90,89,ntheta);
rho = -rhomax:rhomax;
for i = 1:rows
    for j = 1:cols
        if(img(i,j))
            for index =1:ntheta
            rhod= j*cos(theta(index)* pi / 180)+i*sin(theta(index)* pi / 180);
            rhoindex=round(rhod+rhomax);
            H(rhoindex,index)=H(rhoindex,index)+1;
            end
        end
    end
end

end