function F=rhs61b(t,u)

global w0;

F=zeros(length(u),1);
F(1)=u(2);

F(2)=-w0^2.*u(1);
end