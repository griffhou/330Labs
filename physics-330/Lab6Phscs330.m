%% Lab 6
%6.1b
global w0;
w0=2;
x=-10:10;
v=-10:10;
[X,V]=meshgrid(x,v);
dxdt=V;
dvdt=-w0^2.*X;

startx=-10:10;
starty=-10:10;

quiver(X,V,dxdt,dvdt)
streamline(X,V,dxdt,dvdt,startx,starty)
%hold on

%% 6.1c

tstart=0;tfinal=1;
options=odeset('RelTol',1e-8);
% set the initial conditions in the y0 column vector

u01=zeros(2,1);
u01(1)=1; % initial position
u01(2)=0; % initial velocity

u02=zeros(2,1);
u02(1)=1; % initial position
u02(2)=1.4; % initial velocity

u03=zeros(2,1);
u03(1)=1; % initial position
u03(2)=-1; % initial velocity

xpp = @(t,u) [u(2); -w0^2*u(1)];
[t1,u1] = ode45(xpp,[tstart,tfinal],u01,options);
[t2,u2] = ode45(xpp,[tstart,tfinal],u02,options);
[t3,u3] = ode45(xpp,[tstart,tfinal],u03,options);

x1=u1(:,1);v1=u1(:,2);
x2=u2(:,1);v2=u2(:,2);
x3=u3(:,1);v3=u3(:,2);
% plot the position vs. time

plot(x1,v1);
title('Positions vs. Time1')
hold on

plot(x2,v2);
plot(x3,v3);
hold off

%% 6.2a
x=-10:10;
v=-10:10;
global gamma;
gamma=0.5;
%gamma=4;
[X,V]=meshgrid(x,v);
dxdt=V;
dvdt=-w0^2.*X-2*gamma*V
startx=-10:10;
starty=-10:10;

quiver(X,V,dxdt,dvdt)
streamline(X,V,dxdt,dvdt,startx,starty)

%hold on
%% 6.2b

tstart=0;tfinal=20;
options=odeset('RelTol',1e-8);
% set the initial conditions in the y0 column vector

u01=zeros(2,1);
u01(1)=1; % initial position
u01(2)=0; % initial velocity

u02=zeros(2,1);
u02(1)=1; % initial position
u02(2)=1.4; % initial velocity

u03=zeros(2,1);
u03(1)=1; % initial position
u03(2)=-1; % initial velocity

%Defines a two-dimensional function of t and u where 1stD is xprime and 2ndD
%is xpprime (don't fully understand this but it works
xpp = @(t,u) [u(2); -w0^2*u(1)-2*gamma*u(2)];
[t1,u1] = ode45(xpp,[tstart,tfinal],u01,options);
[t2,u2] = ode45(xpp,[tstart,tfinal],u02,options);
[t3,u3] = ode45(xpp,[tstart,tfinal],u03,options);

x1=u1(:,1);v1=u1(:,2);
x2=u2(:,1);v2=u2(:,2);
x3=u3(:,1);v3=u3(:,2);
% plot the position vs. time


plot(v1,x1);
title('Positions vs. Time1')
hold on

plot(v2,x2);
plot(v3,x3);
hold off

%% 6.2c
x=-10:10;
v=-10:10;
global gamma;
%gamma=0.5;
gamma=4;
[X,V]=meshgrid(x,v);
dxdt=V;
dvdt=-w0^2.*X-2*gamma*V
startx=-10:10;
starty=-10:10;

quiver(X,V,dxdt,dvdt)
streamline(X,V,dxdt,dvdt,startx,starty)

%hold on
%% 6.2c

tstart=0;tfinal=20;
options=odeset('RelTol',1e-8);
% set the initial conditions in the y0 column vector

u01=zeros(2,1);
u01(1)=1; % initial position
u01(2)=0; % initial velocity

u02=zeros(2,1);
u02(1)=1; % initial position
u02(2)=1.4; % initial velocity

u03=zeros(2,1);
u03(1)=1; % initial position
u03(2)=-1; % initial velocity

%Defines a two-dimensional function of t and u where 1stD is xprime and 2ndD
%is xpprime (don't fully understand this but it works
xpp = @(t,u) [u(2); -w0^2*u(1)-2*gamma*u(2)];
[t1,u1] = ode45(xpp,[tstart,tfinal],u01,options);
[t2,u2] = ode45(xpp,[tstart,tfinal],u02,options);
[t3,u3] = ode45(xpp,[tstart,tfinal],u03,options);

x1=u1(:,1);v1=u1(:,2);
x2=u2(:,1);v2=u2(:,2);
x3=u3(:,1);v3=u3(:,2);
% plot the position vs. time


plot(v1,x1);
title('Positions vs. Time1')
hold on

plot(v2,x2);
plot(v3,x3);
hold off

%% 6.2d
x=-10:10;
v=-10:10;
global gamma;
gamma=0.5;
%gamma=4;
[X,V]=meshgrid(x,v);
dxdt=V;
dvdt=-w0^2.*X-2*gamma*V*V
startx=-10:10;
starty=-10:10;

quiver(X,V,dxdt,dvdt)
streamline(X,V,dxdt,dvdt,startx,starty)

%hold on
%% 6.2d
gamma=0.5;
tstart=0;tfinal=20;
% set the initial conditions in the y0 column vector

u01=zeros(2,1);
u01(1)=1; % initial position
u01(2)=0; % initial velocity

u02=zeros(2,1);
u02(1)=1; % initial position
u02(2)=1.4; % initial velocity

u03=zeros(2,1);
u03(1)=1; % initial position
u03(2)=-1; % initial velocity

%Defines a two-dimensional function of t and u where 1stD is xprime and 2ndD
%is xpprime (don't fully understand this but it works
xpp = @(t,u) [u(2); -w0^2*u(1)-2*gamma*abs(u(2)).*u(2)];
[t1,u1] = ode45(xpp,[tstart,tfinal],u01,options);
[t2,u2] = ode45(xpp,[tstart,tfinal],u02,options);
[t3,u3] = ode45(xpp,[tstart,tfinal],u03,options);

x1=u1(:,1);v1=u1(:,2);
x2=u2(:,1);v2=u2(:,2);
x3=u3(:,1);v3=u3(:,2);
% plot the position vs. time


plot(x1,v1);
title('Positions vs. Time1')
hold on

plot(x2,v2);
plot(x3,v3);
hold off

%% 6.3

tstart=0;tfinal=300;
% set the initial conditions in the y0 column vector
global w0 F0 m w w0 gamma
F0=1;
m=1;
w0=1;
w=1.1;
gamma=0.01;

u01=zeros(2,1);
u01(1)=0; % initial position
u01(2)=0; % initial velocity

%Defines a two-dimensional function of t and u where 1stD is xprime and 2ndD
%is xpprime (don't fully understand this but it works
xpp = @(t,u) [u(2); -w0^2*u(1)-2*gamma*u(2)+F0/m*cos(w*t)];
[t1,u1] = ode45(xpp,[tstart,tfinal],u01,options);

x1=u1(:,1);v1=u1(:,2);

% plot the position vs. time

plot(t1,x1);
title('Positions vs. Time1')
%% 6.4a

tstart=0;tfinal=100;
% set the initial conditions in the y0 column vector
F0=1;
m=1;
w0=1;
w=1.1;
gamma=0.1;

u01=zeros(2,1);
u01(1)=0; % initial position
u01(2)=0; % initial velocity

%Defines a two-dimensional function of t and u where 1stD is xprime and 2ndD
%is xpprime (don't fully understand this but it works
xpp = @(t,u) [u(2); -w0^2*u(1)-2*gamma*u(2)+F0/m*cos(w*t)];
[t1,u1] = ode45(xpp,[tstart,tfinal],u01,options);

x1=u1(:,1);
Amplitude=max(x1(1000:end))

% plot the position vs. time

plot(t1,x1);
title('Positions vs. Time1')

%% 6.4b

tstart=0;tfinal=100;
% set the initial conditions in the y0 column vector
clear Amplitude
warray=0.98:0.001:1.02;
F0=1;
m=1;
w0=1;
a=0;
for k=0.98:0.001:1.02
    w=k;
    gamma=0.1;

u01=zeros(2,1);
u01(1)=0; % initial position
u01(2)=0; % initial velocity

%Defines a two-dimensional function of t and u where 1stD is xprime and 2ndD
%is xpprime (don't fully understand this but it works
xpp = @(t,u) [u(2); -w0^2*u(1)-2*gamma*u(2)+F0/m*cos(w*t)];
[t1,u1] = ode45(xpp,[tstart,tfinal],u01,options);

x1=u1(:,1);
a=a+1;
Amplitude(a)=max(x1(1000:end));
end

plot(warray,Amplitude)

%% 6.5a
clear all;close all;
w0=1;
F0=1;
m=1;
gamma=0.1;
w=0.98:0.001:1.02;

A=F0/m./sqrt((w0.^2-w.*w).^2+4*gamma^2.*w.*w);
phi=atan(2*gamma.*w./(w0^2-w.^2));
plot(w,A)
plot(w,phi)
%% 6.5b
clear all;close all;
w0=1;
F0=1;
m=1;
gamma=0.1;
gamma1=0.01;
gamma2=0.001;
w=0.98:0.001:1.02;

A=F0/m./sqrt((w0.^2-w.*w).^2+4*gamma^2.*w.*w);
A1=F0/m./sqrt((w0.^2-w.*w).^2+4*gamma1^2.*w.*w);
A2=F0/m./sqrt((w0.^2-w.*w).^2+4*gamma2^2.*w.*w);
plot(w,A)
hold on
plot(w,A1)
plot(w,A2)