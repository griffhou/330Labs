%% Lab 7
%7.2
w0=2;
theta=-2*pi:pi/8:2*pi;
w=-2*pi:pi/8:2*pi;
[Theta,W]=meshgrid(theta,w);

dthetadt=W;
dwdt=-w0^2*sin(Theta);

startT=-4*pi:pi/4:4*pi;
starty=-4*pi:pi/4:4*pi;

quiver(Theta,W,dthetadt,dwdt)
streamline(Theta,W,dthetadt,dwdt,startT,starty)

%% 7.4

theta=0:0.1:pi;
M=sin(theta./2).^2;
wt0=pi./(2*ellipke(M))
plot(theta,wt0)
%goes to zero because ellipke has Sqrt(1-...) in the denom
%at pi ... evaluates to 1

%% 7.5
tstart=0;tfinal=10;
theta0=[0.1 0.5 1.0 pi/2 0.9*pi]
clear('max')
clear('t1')

for k=1:5
    
thetanot=theta0(k);
u0=zeros(2,1);
u0(1)=thetanot; % initial theta
u0(2)=0; % initial w

%Defines a two-dimensional function of t and u where 1stD is xprime and 2ndD
%is xpprime (don't fully understand this but it works
tpp = @(t,u) [u(2); -w0^2*sin(u(1))];
[t1,u1] = ode45(tpp,[tstart,tfinal],u0);

theta=u1(:,1);w=u1(:,2);
%figure out the cosine wave next door
mv=max(theta);
M=sin(thetanot/2)^2;
wt0=pi./(2*ellipke(M));

% plot the position vs. time
figure
hold on
plot(t1,mv*cos(2*wt0.*t1),'-r') %why times 2?
plot(t1,theta,'-b');
title('Position vs. Time')
hold off

k=k+1;
end


%% 7.6
tstart=0; tfinal=500;
u0=zeros(2,1);
u0(1)=4; % initial y
u0(2)=0; % initial v
F0=1;

%Defines a two-dimensional function of t and u where 1stD is xprime and 2ndD
%is xpprime (don't fully understand this but it works
ypp = @(t,u) [u(2); F0*sin(t)-u(1)];
[t1,u1] = ode45(ypp,[tstart,tfinal],u0);
y=u1(:,1);
plot(t1,y)

%% 7.6b
tstart=0; tfinal=500;
u0=zeros(2,1);
u0(1)=.1; % initial y
u0(2)=0; % initial v
a=0.1;

%Defines a two-dimensional function of t and u where 1stD is xprime and 2ndD
%is xpprime (don't fully understand this but it works
ypp = @(t,u) [u(2); a*sin(t)-sin(u(1))];
[t1,u1] = ode45(ypp,[tstart,tfinal],u0);
y=u1(:,1);
plot(t1,y)

%% 7.6c
tstart=0; tfinal=500;
u0=zeros(2,1);
u0(1)=.1; % initial y
u0(2)=0; % initial v
a=0.1;
gamma=0.1;
hold on
for k=0.9:0.1:1.05
    w0=k;
    
%Defines a two-dimensional function of t and u where 1stD is xprime and 2ndD
%is xpprime (don't fully understand this but it works
ypp = @(t,u) [u(2); a*sin(t)-w0^2*sin(u(1))-gamma*u(2)];
[t1,u1] = ode45(ypp,[tstart,tfinal],u0);
y=u1(:,1);
plot(t1,y)
end
hold off

