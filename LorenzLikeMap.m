%(0.2, 1, 2, 500) is good
%(0.1, 1, 2, 500) is upside down?

function [x, F] = lorenzlikemap(beta,theta,alpha,t)
for k = 1:t
x(1) = rand(1,1);
if x(k) >= 0 && x(k) <0.5
    x(k+1) = theta*(abs(x(k)-0.5).^alpha);
else
    if x(k)>= 0.5 && x(k)<=1
    x(k+1) = 1-theta*(abs(x(k)-0.5).^alpha);
    end
end
end
figure(1);
subplot(1,2,1);
plot(x(1:end-1),x(2:end),'.')
title('lorenz like map T(x)')
xlabel('x(k)')
ylabel('x(k+1)')

for k = 1:t
    y(1) = rand(1,1);
    if x(k) >= 0 && x(k) <0.5
    y(k+1) = (y(k)-0.5)*(abs(x(k)-0.5).^beta)+0.25;
    else
        if x(k)>= 0.5 && x(k)<=1
        y(k+1) = (y(k)-0.5)*(abs(x(k)-0.5).^beta)+0.75;
        end
    end
end
F = [x(2:end);y(2:end)];
subplot(1,2,2)
plot(F(1,:),F(2,:),'.')
title('plot of 2D lorenz map : F(x,y) = (T(x),G(x,y))')