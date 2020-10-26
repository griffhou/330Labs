function F=rhs(t,u)
% right-hand side function for Matlab's ODE solver,
% simple harmonic oscillator example
% Write comments to remind yourself how the variables are arranged in u.
% In our case we will use:
% u(1) -> y
% u(2) -> v
% declare the frequency to be global so its value
% set in the main script can be used here
global g;
% make the column vector F filled
% with zeros
F=zeros(length(u),1);
% Now build the elements of F
% Recall that in our ordering of the vector u we have:
%
% du(1)          dy 
% ---- = F(1) -> -- = v
% dt             dt
%
% so the equation dy/dt=v means that F(1)=u(2)
F(1)=u(2);
% Again, in our ordering we have:
%
% du(2)          dv
% ---- = F(2) -> -- = -g
% dt             dt
%
% so the equation dv/dt=-g means that F(2)=-g
F(2)=-g;
end