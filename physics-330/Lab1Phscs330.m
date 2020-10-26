%Lab 1 GHouston 1 Sept, 2020

%% Chapter 1
%1.2 It's a Calculator
1+2
5/6
cos(pi)

sind(90)

2*2
ans+1

1.23e15

%% 1.3 Variables
a=20
a=a+1

%String Variables
s='This is a string'

%Numerical Accuracy
x=355/113
format long e
x
format short
pi
format long
pi
format long e
pi
format short e
pi

%Clearing the Workspace
pi=2
clear pi
clear

%% 1.4 Matrix Variables
N=2
size(N)
a=[1,2,3,4]
size(a)
b=[1;2;3;4]
size(b)
A=[1,2,3;4,5,6;7,8,9]
size(A)
%A(3,5) too large for pre-determined A

%The Colon Command
b(end)
A(3,end)

x=0:.5:10
t=0:20

%Selecting Rows and Columns
c=A(2,1:2)
b=A(1:end,3)
b=A(:,3)
c=A(2,:)

s='This is a string'
s(1:7)

%% 1.5 Calculating
%Add and Subtract
A=[1,2,3;4,5,6;7,8,9]
B=[3,2,1;6,4,5;8,7,9]
A+B
A-B

%Multiplication and Division
A*B
A*[1;2;3]
A^3

%Arithmetic with Array Elements
%a(3)/b(2)

%Sum the Elements
[1,2,3].*[3,2,1]
[1,2,3]./[3,2,1]
[1,2,3].^2

n=1:10000;
sum(1./n.^2)
ans-pi^2/6

A=[1,2,3;4,5,6;7,8,9]
sum(A)
sum(sum(A))

%Complex Arithmetic
a=1+2i
b=2-3i

a+b
a-b
a*b
a/b

z=3+4i
real(z)
imag(z)
conj(z)
abs(z)
angle(z)

exp(i*pi/4)
cos(pi/4)
sin(pi/4)

%% 1.6 Matlab Functions
sin([pi/4,pi/2,pi])
cosd([0,45,90])

%Housekeeping Functions
x=0:.01:5;
y=x.*exp(-x.^2);
ymin=min(y)
ymax=max(y)

[ymin,imin]=min(y)
[ymax,imax]=max(y)

floor([1.5,2.7,-1.5])

%% P1.1 Basic Syntax

A=[1,2,3;4,5,6;7,8,9]
B=[1,4,5;9,6,3;2,3,1]

v1=[1,1,2]
v2=[0.40824829 ; -0.81649658 ; 0.40824829]

A*B %uses vector multiplication
A.*B %multiplies each of the elements and keeps the same size

A./B %divides element by element

%A*v1 %impossible by vector multiplication
v1*A %multiplies row by columns
A*v2 %multiplies row by columns

A(2,2)*B(2,2)

exp(A+i*B) %makes a matrix with each term expressed through Euler's equation

A(:,2)./v2

%% Chapter 2
%2.2 Script files

clear;
close all;

a=sin(5);
b=cos(5);

%% 2.4 Input

N=input(' Enter a value for N - ')

%% 2.5 Output

fprintf(' N =%g \n',500)
fprintf(' x =%1.12g \n',pi)
fprintf(' x =%1.10e \n',pi)
fprintf(' x =%6.2f \n',pi)
fprintf(' x =%12.8f y =%12.8f \n',5,exp(5))

%% P1.2a

v=input(' Enter a value for v - ')
theta=input(' Enter a value for theta - ')

d=v^2/9.8*sind(2*theta);
fprintf(' Range: %g',d);
fprintf(' meters');

%% P1.2b

v1 = [30000, 0, 0];
v2 = [-5000, 8000, 1000];
m1 = 6e24;
m2 = 1e19;

vf = (m1.*v1 + m2.*v2)./(m1+m2)

%% Chapter 3 Debugging Code

%f=1-exp(-g*t) % compute the decay fraction

%a=sin(x)*exp(-y) + sqrt(b^2-4*a*c)/2/a + c1*d3 +...
%log(z) + sqrt(b);

A = [ 1 2 3 4
5 6 7 8
9 10 11 12
13 14 15 16]

%Force_of_1_on_2 = G*Mass_of_1*Mass_of_2/Distance_between_1_and_2^2

%F=G*m1*m2/r12^2

clear; % clear all variables from memory
close all; % close any figure windows
% N is the largest number to test
N=12;

% steps the value of n from 1 to N
for n=1:N
% calculate the integer remainder of this value of n divided by 3
    r = mod(n,3);
    if (r==0)
% indicate that 3 is a factor of this n
        fprintf(' 3 is a factor of %g \n', n);
    else
% indicate that if 3 is not a factor of this n
        fprintf(' 3 is not a factor of %g \n', n);
    end
end

%% 

clear; close all;
% set s to zero so that 1/n^2 can be repeatedly added to it
s=0;
N=10000; % set the upper limit of the sum
for n=1:N % start of the loop
    s = s + 1/n^2; % add 1/n^2 to s each iteration
end % end of the loop
fprintf(' Sum = %g \n',s) % print the answer

%% 

clear; close all;
P=1; % set the first term in the product
N=20; % set the upper limit of the product
for n=2:N % start the loop at n=2 because we already loaded n=1
    P=P*n; % multiply by n each time, put the answer back into P
end % end of the loop
fprintf(' N! = %g \n',P) % print the answer

factorial(20)

%% 

clear; close all;
a(1)=1; % put the first element into the array
N=19; % the first one is loaded, so let's load 19 more
for n=1:N % start the loop
    a(n+1)=(2*n-1)/(2*n+1)*a(n); % the recursion relation
end
disp(a) % display the resulting array of values

%% 

clear; close all;
a=1;
b=3;
if a>0
    c=1 % If a is positive set c to 1
else
    c=0 %if a is 0 or negative, set c to zero
end
% if either a or b is non-negative, add them to obtain c;
% otherwise multiply a and b to obtain c
if a>=0 | b>=0 % either non-negative
    c=a+b
else
    c=a*b % otherwise multiply them to obtain c
end

%% 

clear; close all;
term=1 % load the first term in the sum, 1/1^2=1

s=term; % load s with this first term
% start of the loop - set a counter n to one
n=1;
while term > 1e-10 % loop until term drops below 1e-10
    n=n+1; % add 1 to n so that it will count: 2,3,4,5,...
    term=1/n^2; % calculate the next term to add
    s=s+term; % add 1/n^2 to s until the condition is met
end % end of the loop
    fprintf(' Sum = %g \n',s)
    
%% 

clear; close all;
term=1; % load the first term in the sum, 1/1^2=1
s=term; % load s with this first term
% start of the loop - set a counter n to one
n=1;
while term > 1e-100 % set a ridiculously small term.
% Don't really do this, as you
% only have 15 digits of precision.
    n=n+1; % add 1 to n so that it will count: 2,3,4,5,...
    term=1/n^2;
    s=s+term;
if (n > 1000) % Break stop if it is taking too long
    disp('This is taking too long. I''m out of here...')
break
end
end % end of the loop
fprintf(' Sum = %g \n',s)

%% P1.3a Loops, Logic, and Debugging

factors = [];
for n=1:18648 %loops from 1 all the way to 18648
    if(mod(18648,n)==0) %if there is not a remainder
        factors = [factors, n]; %add to array of factors
    end             %end the for loop
end

factors

%% P1.3b
d=0;
theta=0;
v=input(' Enter a value for v - ');

while d<5000 
    theta=theta+0.1;
    d=v^2/9.8*sind(2*theta);
end

fprintf(' Velocity: %g \n',v)
fprintf(' Angle: %g \n',theta)

%% P1.3c

balance=100000;
payment=1000;
monthly_interest=0.005;
months=0;

while balance>0
    balance=balance-payment+balance*monthly_interest;
    months=months+1;
end

fprintf(' Number of months: %g \n' ,months)
years = months/12;
fprintf(' Number of years: %g \n', years)
    
    

    
     