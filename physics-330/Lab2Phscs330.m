%% Lab 2
% --P2.1--
clear;
close all;

A=[14,42,91,79,95,65,3,84,93,67,75,74,39,65,17]; %Initialize array
m=1;

while m<=length(A)-1   %To loop through index 1-end
    for n=1 : length(A)-1   %To compare neighboring indices
        if A(n)>A(n+1)      %If the next is larger
            temp=A(n);      %To ensure it isn't lost
            A(n)=A(n+1);    %Transferring numbers
            A(n+1)=temp;
            A
        end
    end
    m=m+1;
end

%% --P2.2a--
clear;
close all;

figure
x=0:0.01:4*pi
f=x.*sin(x)

plot(x,f)
hold on
title('Graphing an arbitrary f(x)')
xlabel('Independent v')
ylabel('Dependent v')

h=cos(x)
plot(x,h)
legend('x*sin(x)','cos(x)')
hold off
%% --P2.2b--
a=[1];
for n=1 : 19
    a(n+1)=(n/((n-1/2)*(n+1/2)))*a(n);
end

n=1:1:20;
a(20)

semilogy(n,a)
hold on
xlim([0 20])

b=exp(-n);
c=1./(factorial(n));

plot(n, b)
plot(n, c)
legend('recursion','exp','factorial')
hold off 
%% --P2.2c--

x=0:.01:5;
f=zeros(length(x));

for n=1:length(x)-1
    if x(n)<1           %If x is less than 1
        f(n)=exp(x(n)); %first part of piece-wise
    end
    if x(n)>=1          %If x is greater than 1
        f(n)=exp(1)*cos(x(n)-1);    %second part
    end
end

plot(x,f)
xlabel('Independent variable')
ylabel('f(x)')

%% --P2.4--
clear;
close all;

figure;
t=0:0.1:5;
y=-1./(1+t);
plot(t,y)

figure;
x=-5:0.1:5;
z=(exp(-x)+exp(x))/2;
plot(x,z)

