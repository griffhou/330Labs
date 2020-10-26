%% 5.1b
clear; close all;

g=9.8;

% choose the number of time steps to take
%N=input(' Enter the number of time steps to take - ')
N=10000;
% Pre-allocate the arrays to make the code faster
tau=0.01;
t=(0:tau:N*tau);
y=zeros(1,N+1);
v=zeros(1,N+1);
% calculate the time step

% initialize the time array
t(1)=0;
% set the initial values of position and velocity
y(1)=10;v(1)=0;
% Do Euler's method for N time steps
k=0;
for n=1:N
    t(n+1)=n*tau;
    y(n+1)=y(n) + v(n)*tau;
    v(n+1)=v(n) - g*tau;
    k=k+1;
    if y(n+1)<0
        y(n+1)=0;
        v(n+1)=0;
        break;
    end
end

plot(t(1:k),y(1:k),'r-')



%% 5.1c
clear; close all;

g=9.8;

% choose the number of time steps to take
%N=input(' Enter the number of time steps to take - ')
N=10000;
tfinal=1.43;
tau=tfinal/N;
% Pre-allocate the arrays to make the code faster
t=zeros(1,N+1);
y=zeros(1,N+1);
v=zeros(1,N+1);

% initialize the time array
t(1)=0;
% set the initial values of position and velocity
y(1)=10;v(1)=0;
% Do Euler's method for N time steps
for n=1:N
    t(n+1)=n*tau;
    vhalf=v(n)-g*tau*0.5;
    
    y(n+1)=y(n) + vhalf*tau;
    v(n+1)=v(n) - g*tau;
    if y(n+1)<0
        y(n+1)=0;
        v(n+1)=0;
        break;
    end
end
% plot the result and compare it with the exact solution
plot(t,y,'r-')

%% 5.2a

clear;close all;
% declare the oscillator frequency to be global and set it
global g;
g=9.8;
% set the initial and final times
tstart=0;tfinal=1.43;
% set the initial conditions in the y0 column vector
u0=zeros(2,1);
u0(1)=10; % initial position
u0(2)=0; % initial velocity
% set the solve options
options=odeset('RelTol',1e-8);
% do the solve
[t,u]=ode45(@rhs,[tstart,tfinal],u0,options);
% unload the solution that comes back in y into x and v arrays
y=u(:,1);v=u(:,2);
% plot the position vs. time
plot(t,y)
title('Position vs. Time')
% make a "phase-space" plot of v vs. x
figure
plot(y,v)
title('Phase Space Plot (v vs. x)')

%% 5.2b

clear;close all;
% declare the oscillator frequency to be global and set it
global g;
g=9.8;
% set the initial and final times
tstart=0;tfinal=1.43;
% set the initial conditions in the y0 column vector
u0=zeros(2,1);
u0(1)=10; % initial position
u0(2)=0; % initial velocity
% set the solve options
options=odeset('RelTol',1e-8);
% do the solve
rhsb = @(t,u)[u(2);-g];
[t,u]=ode45(rhsb,[tstart,tfinal],u0,options);
% unload the solution that comes back in y into x and v arrays
y=u(:,1);v=u(:,2);
% plot the position vs. time
plot(t,y)
title('Position vs. Time')
% make a "phase-space" plot of v vs. x
figure
plot(y,v)
title('Phase Space Plot (v vs. x)')

%% 5.3

clear;close all;

% set the initial and final times
tspan = [0 100];
y0=1; % initial position

% set the solve options
options=odeset('RelTol',1e-8);

[t,u]=ode45(@(t,y) y.*sin(t),tspan,y0,options);
% unload the solution that comes back in y into x and v arrays

% plot the position vs. time
plot(t,u,'r-',t,exp(1-cos(t)),'-.bo')
title('Position vs. Time')

%% 5.4a

clear;close all;

global Cd a g p m v0 theta;
Cd=0.35;
a=0.037;
g=9.8;
p=1.2;
m=0.145;
v0=60;
theta=45;

% set the initial and final times
tstart=0;tfinal=10.5;
% set the initial conditions in the y0 column vector
u0=zeros(4,1);
u0(1)=0; % initial position x
u0(2)=0; % initial position y
u0(3)=v0*cos(theta) % initial velocity x
u0(4)=v0*sin(theta); % initial velocity y
% set the solve options
options=odeset('RelTol',1e-8);
% do the solve
[t,u]=ode45(@rhs54,[tstart,tfinal],u0,options);
[t1,u1]=ode45(@rhs54b,[tstart,tfinal],u0,options);
% unload the solution that comes back in y into x and v arrays

x=u(:,1);y=u(:,2);vx=u(:,3);vy=u(:,4);
x1=u1(:,1);y1=u1(:,2);vx1=u1(:,3);vy1=u1(:,4);
% plot the x vs. y

plot(x,y,'r-',x1,y1,'b-')
axis([0 inf 0 inf])
title('x vs. y')
%% y and x plots
plot(t,x)
title('x vs. t')
figure
plot(t,y)
title('y vs. t')

%% 5.4c
clear;close all;

global Cd a g p pD m v0 theta;
Cd=0.35;
a=0.037;
g=9.8;
p=1.2;
pD=1.2*(1-.15);
m=0.145;
v0=60;
theta=45;

% set the initial and final times
tstart=0;tfinal=10.5;
% set the initial conditions in the y0 column vector
u0=zeros(4,1);
u0(1)=0; % initial position x
u0(2)=0; % initial position y
u0(3)=v0*cos(theta) % initial velocity x
u0(4)=v0*sin(theta); % initial velocity y
% set the solve options
options=odeset('RelTol',1e-8);
% do the solve
[t,u]=ode45(@rhs54,[tstart,tfinal],u0,options);
[t1,u1]=ode45(@rhs54c,[tstart,tfinal],u0,options);
% unload the solution that comes back in y into x and v arrays

x=u(:,1);y=u(:,2);vx=u(:,3);vy=u(:,4);
x1=u1(:,1);y1=u1(:,2);vx1=u1(:,3);vy1=u1(:,4);
% plot the x vs. y

plot(x,y,'r-',x1,y1,'b-') % blue is denver
axis([0 inf 0 inf])
title('x vs. y')


