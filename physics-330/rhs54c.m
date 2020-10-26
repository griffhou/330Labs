function F=rhs54(t,u)
% right-hand side function for Matlab's ODE solver,
% simple harmonic oscillator example
% Write comments to remind yourself how the variables are arranged in u.
% In our case we will use:
% u(1) -> y
% u(2) -> v
% declare the frequency to be global so its value
% set in the main script can be used here
global Cd a g pD m v0 theta;
% make the column vector F filled
% with zeros
F=zeros(length(u),1);
% Now build the elements of F
% Recall that in our ordering of the vector u we have:
%
% du(1)          dx 
% ---- = F(1) -> -- = vx
% dt             dt
%
% so the equation dy/dt=v means that F(1)=u(3)
F(1)=u(3);
% Again, in our ordering we have:
%
% du(2)          dy
% ---- = F(2) -> -- = vy
% dt             dt
%
% so the equation dy/dt=v means that F(1)=u(4)
F(2)=u(4);
% Now build the elements of F
% Recall that in our ordering of the vector u we have:
%
% du(3)          dvx 
% ---- = F(1) -> -- = -Cd p pi a^2 vx*sqrt(vx^2+vY^2)/2m
% dt             dt
%
F(3)=-Cd*pD*pi*a^2*u(3)*sqrt(u(3)^2+u(4)^2)/(2*m);
% Again, in our ordering we have:
%
% du(2)          dvy
% ---- = F(2) -> -- = -Cd...-g
% dt             dt
%
F(4)=-Cd*pD*pi*a^2*u(4)*sqrt(u(3)^2+u(4)^2)/(2*m)-g;