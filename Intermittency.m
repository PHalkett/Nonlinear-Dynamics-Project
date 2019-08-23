function doall=Lorenz
clear all; close all

%Parameters
sigma=10.0;
b=8.0/3.0;
r=25;

nprint=1;
delta=0.001;
iterations=500;

%Number of Steps
N=floor(iterations/delta);
NP=floor(N/nprint);

%Initial Conditions
n=1;
x=zeros(3,NP);
n=1;
x(:,n)=[0.1,0,0]';

for n=1:1:NP-1
  xp=x(:,n);
  for j=1:1:nprint
    x_next=xp+delta*rhs(xp,sigma,b,r);
    xp=xp+0.5*(rhs(xp,sigma,b,r)+rhs(x_next,sigma,b,r))*delta;
  end
  x(:,n+1)=xp;
end

% plot iterations:
beg=floor(NP*9/10);
end1=NP;
Iterate=delta*[1:1:NP];
plot(Iterate(beg:end1),x(1,beg:end1),'k')
title('Lorenz Iterations, r = 25', 'FontSize', 12)
xlabel('Iterations', 'FontSize', 12)
ylabel('x', 'FontSize', 12)
set(gca, 'FontSize', 12)

function ff=rhs(x,sigma,b,r)
ff=[sigma*(x(2)-x(1)),r*x(1)-x(2)-x(1)*x(3),x(1)*x(2)-b*x(3)]';


