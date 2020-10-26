%% Chapter 5
x=0:.01:10;
y=sin(5*x);
length(x);
length(y);
plot(x,y);
%%
nhalf=ceil(length(x)/2);
plot(x(1:nhalf),y(1:nhalf));
plot(x(nhalf:end),y(nhalf:end))

axis([0 10 -1.3 1.3])
plot(x,y)
xlim([0 10])

plot(x,y)
ylim([-1.3 1.3])

axis equal

%% 
close all;
x=0:.1:8;
y=exp(x);
semilogx(x,y);
title('semilogx')
semilogy(x,y);
title('semilogy')
%loglog(x,y);
%title('loglog')

%%
clear; close all;
dphi=pi/100; % set the spacing in azimuthal angle
N=30; % set the number of azimuthal trips
phi=0:dphi:N*2*pi;

theta=phi/N/2; % go from north to south once
r=1; % sphere of radius 1
% convert spherical to Cartesian
x=r*sin(theta).*cos(phi);
y=r*sin(theta).*sin(phi);
z=r*cos(theta);
% plot the spiral
plot3(x,y,z)
axis([0 10 -1.3 1.3])

%%
x=0:.01:10;
y=sin(5*x);
plot(x,y,'g.')
xlabel('Distance (m)')
ylabel('Amplitude (mm)')

title('Oscillations on a String')
text(10,.5,'Hi');
s=sprintf('Oscillations with k=%g',5)
title(s)

xlabel('\theta')
ylabel('F(\theta)')
title('F(\theta)=sin(5 \theta)')

s=sprintf('F(\\theta)=sin(%i \\theta)',5)
title(s)

%% 
close all;
x=0:.01:20;
f1=sin(x);
f2=cos(x)./(1+x.^2);
figure
plot(x,f1)
figure
plot(x,f2)
%%
close all;
plot(x,f1,'r-',x,f2,'b-')
title('First way')

figure
plot(x,f1,'r-')
hold on
plot(x,f2,'b-')
title('Second way')
hold off

subplot(2,1,1)
plot(x,f1)
subplot(2,1,2)
plot(x,f2)
    