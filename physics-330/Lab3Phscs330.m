%% Lab 3
%% 3.1a

x=-5:0.1:6;

y=-5:0.1:6;
[X,Y]=ndgrid(x,y);
F=exp(-abs(X-sin(Y))).*(1+1/5*cos(X./2)).*(1+4./(3+10.*Y.*Y));

surf(X,Y,F);

%% 3.1b

x=-10:1:10;
y=-10:1:10;
[X,Y]=meshgrid(x,y);

vx=0.2.*X.*X+0.5.*Y.*Y+20;
vy=-0.1.*Y.^3+0.5.*X.*X-10;


figure
quiver(X,Y,vx,vy);
axis equal
title('Wind Data')
starty = -10:10;
startx = -10*ones(size(starty));

streamline(X,Y,vx,vy,startx,starty)

%% 3.2
g=9.8;
x=0:10;
v=0:10;
[X,V]=meshgrid(x,v);
dxdt=V
dvdt=-g*ones(size(V));
startx=-10:10
starty=10*ones(size(startx));

quiver(X,V,dxdt,dvdt)
streamline(X,V,dxdt,dvdt,startx,starty,[0.001,1e5])
title('1D Projectile');
%% 3.3
x=-5:5;
v=-5:5;
[X,V]=meshgrid(x,v);
dxdt=V;
dvdt=-X;
startx=-6:6;
starty=zeros(size(startx));

quiver(X,V,dxdt,dvdt,1)
streamline(X,V,dxdt,dvdt,startx,starty,[0.001,1e5])
title('SHO motion');

%% 3.4
theta=-pi:pi;
omega=-pi:pi;
[Theta,Omega]=meshgrid(theta,omega);
dthetadt=Omega;
domegadt=-sin(Theta);
startT=-2:0.1:2;
startO=-2:0.1:2;

quiver(Theta,Omega,dthetadt,domegadt)
streamline(Theta, Omega, dthetadt, domegadt, startT, startO,[0.001,1e5])
title('Rigid Pendulum');
%% 3.5
n=5;
y=-n:n;
dydt=-n:n-1;
[Y,Dydt]=meshgrid(y,dydt);
dy2dt2=-Y.^2;
starty=ones([1 5]);
startd=zeros(size(starty));

quiver(Y,Dydt,Dydt,dy2dt2)
streamline(Y,Dydt,Dydt,dy2dt2,1,0,[0.001,1e5])
title('ODE Solver')
%% 3.6a
%[EulersNum,Error]=EulerSum(1000)
EulersNum=zeros([1 1000]);
ErrX=zeros([1 1000]);
for x=1:1000
    [tmp1,tmp2]=EulerSum(x);
    EulersNum(x)=tmp1;
    ErrX(x)=tmp2;
end
x=1:1000
loglog(x,ErrX)
title('EulerSum.m loglog')
%% 3.6b
N=200;
A=[];
B=[];
f= @(n,x) 4/(n*pi)*sin(n*pi*x);

for x=-5:0.001:5
    for n=1:2:N
        A(end+1)=f(n,x);
    end
    B(end+1)=sum(A);
    A=[];
end

x=-5:0.001:5;
plot(x,B)
    