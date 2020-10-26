%% P4.1a
clear; close all;

N=1000; a=0; b=2; dx=(b-a)/N;
x=.5*dx:dx:b-.5*dx; % build an x array of centered values
% load the function
f= x.^2.*exp(-x).*cos(x);
% do the approximate integral
s=sum(f)*dx
f=@(x) x.^2.*exp(-x).*cos(x);
s1=integral(f,0,2)

err=abs(s1-s)

%% P4.1b 
forward_dfdx=((exp(1+0.5)-exp(1))/(0.5));
centered_dfdx=((exp(1+0.5)-exp(1-0.5))/(1));
exp(1);

err1=abs(forward_dfdx-exp(1))
err2=abs(centered_dfdx-exp(1))

%% P4.1b
clear; close all;
h=[];
forward_dfdx=[];
centered_dfdx=[];
for iter=1:65
    h(iter)=1/2^iter;
    forward_dfdx(end+1)=((exp(1+h(iter))-exp(1))/(h(iter)));
    centered_dfdx(end+1)=((exp(1+h(iter))-exp(1-h(iter)))/(2.*h(iter)));
end

err1=abs(forward_dfdx/exp(1)-1);
err2=abs(centered_dfdx/exp(1)-1);

figure
loglog(h,err1,'r-')
hold on
loglog(h,err2,'b-')
title('Log plots of Derivatives')
hold off

%% P4.2a
x=0; y=1; vx=1; vy=0; g=9.8;
tau=0.01;
while x<10
    if y<0
        vy=abs(vy);
    end
    xnew= x+vx*tau;
    ynew= y+vy*tau;
    vynew= vy-g*tau;

    plot(x,y,'.')
    axis([0 10 0 1.5])
    pause(0.001)
    x=xnew;
    y=ynew;
    vy=vynew;
    
end

%% P4.2b
x=0; y=1; vx=1; vy=0; g=9.8;
tau=0.01;
while x<10

    if y+vy*tau>0
        xnew= x+vx*tau;
        ynew= y+vy*tau;
        vynew= vy-g*tau;
        plot(x,y,'.')
        axis([0 10 0 1.5])
        pause(0.001)
        y=ynew;
        vy=vynew;
        x=xnew;
    else
        tau1=-y/vy;
        xnew= x+vx*tau;
        ynew= y+vy*tau1;
        vynew= abs(vy);
        plot(x,y,'.')
        axis([0 10 0 1.5])
        pause(0.001)
        y=ynew;
        vy=vynew;
        x=xnew;
    end      

end

%% P4.2c
x=0; y=1; vx=1; vy=0; g=9.8;
tau=0.01;
while x<10

    if y+vy*tau>0
        xnew= x+vx*tau;
        ynew= y+vy*tau;
        vynew= vy-g*tau;
        plot(x,y,'.')
        axis([0 10 0 1.5])
        pause(0.001)
        y=ynew;
        vy=vynew;
        x=xnew;
    else
        tau1=-y/vy;
        xnew= x+vx*tau;
        ynew= y+vy*tau1;
        vynew= 0.95*abs(vy);
        plot(x,y,'.')
        axis([0 10 0 1.5])
        pause(0.001)
        y=ynew;
        vy=vynew;
        x=xnew;
    end      

end