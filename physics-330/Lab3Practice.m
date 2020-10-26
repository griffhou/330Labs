clear;close all;
% Define the arrays x and y
% Don't make the step size too small or you will kill the
% system (you have a large, but finite amount of memory)
x=-1:.1:1;
y=0:.1:1.5;
% Use meshgrid to convert these 1-d arrays into 2-d matrices
% of x and y values over the plane
[X,Y]=meshgrid(x,y);
% Get F(x,y) by using F(X,Y). Note the use of .* with X and Y
% rather than with x and y
F=(2-cos(pi*X)).*exp(Y);
% Plot the function
surf(X,Y,F)
xlabel('x')
ylabel('y')

%%
clear; close all;
% Make the grid
x=-1:.1:1;y=0:.1:1.5;
[X,Y]=ndgrid(x,y);
F=(2-cos(pi*X)).*exp(Y);
% Now make a surface plot of the function
surf(X,Y,F); % or you can use mesh(X,Y,F) to make a wire plot
AZ=30;EL=45;
view(AZ,EL);
title('Surface Plot')
xlabel('x')
ylabel('y')

%%
clear; close all;
x=-1:.1:1;
y=0:.1:1.5;
[X,Y]=ndgrid(x,y);
F=(2-cos(pi*X)).*exp(Y);
surf(X,Y,F);
title('Surface Plot')
xlabel('x')
ylabel('y')
EL=45;
for m=1:100
AZ=30+m/100*360;
view(AZ,EL);
pause(.1); % pause units are in seconds
end

%% 
clear;close
x=-5.25:.5:5.25;y=x; % define the x and y grids (avoid (0,0))
[X,Y]=meshgrid(x,y);
% Electric field of a long charged wire
Ex=X./(X.^2+Y.^2);
Ey=Y./(X.^2+Y.^2);
quiver(X,Y,Ex,Ey) % make the field arrow plot
title('E of a long charged wire')
axis equal % make the x and y axes be equally scaled
% Magnetic field of a long current-carrying wire
Bx=-Y./( X.^2+Y.^2);
By=X./(X.^2+Y.^2);
% make the field arrow plot
figure
quiver(X,Y,Bx,By)
axis equal
title('B of a long current-carrying wire')
% The big magnitude difference across the region makes most arrows too small
% to see. This can be fixed by plotting unit vectors instead
% (losing all magnitude information, but keeping direction)
B=sqrt(Bx.^2+By.^2);
Ux=Bx./B;
Uy=By./B;
figure
quiver(X,Y,Ux,Uy);
axis equal
title('B(wire): unit vectors')
% Or, you can still see qualitative size information without such a big
% variation in arrow size by having the arrow length be logarithmic.
Bmin=min(min(B));
Bmax=max(max(B));
% s is the desired ratio between the longest arrow and the shortest one
s=2; % choose an arrow length ratio
k=(Bmax/Bmin)^(1/(s-1));
logsize=log(k*B/Bmin);
Lx=Ux.*logsize;
Ly=Uy.*logsize;
figure
quiver(X,Y,Lx,Ly);
axis equal
title('B(wire): logarithmic arrows')

%%
clear;close
%Define the position arrays x and y
[x,y] = meshgrid(0:0.1:1,0:0.1:1);
%Define the flow velocity arrays u and v
u = x;
v = -y;
%Create a quiver plot of the flow velocity
figure
quiver(x,y,u,v)
%Plot streamlines that start at different points along the line y=1.
startx = 0.1:0.1:1;
starty = ones(size(startx));
streamline(x,y,u,v,startx,starty);

%% 3.6 Functions
clear;close all;
f = @(x,y) sin(x.*y)./(x.^2+y.^2);

x=-8:.1:8;
y=x;
plot(x,f(x,2))
[X,Y]=ndgrid(x,y);
figure
surf(X,Y,f(X,Y))

%% 
h=0.1;
x=-8:h:8;
y=x;
plot(x,trig(x,2))
[X,Y]=ndgrid(x,y);
figure
surf(X,Y,trig(X,Y))

