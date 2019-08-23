function [x, L] = Lorenz1Dnew(alpha, t)
for i = 1:t
%x(1) = 0.6;
%x(1) = rand(1,1);
%x(1) = 0.01;
x(1) = 0.2;
if x(i) >= 0 && x(i) <0.5
    x(i+1) = alpha*(1 - sqrt(1 - 2*x(i)));
else
    if x(i)>= 0.5 && x(i)<=1
    x(i+1) = alpha*(1 - sqrt(2*x(i) - 1));
    end
end
end
figure(1);
L = [x(1:end-1);x(2:end)];
plot(L(1,:),L(2,:),'k.');
xlabel('x_n')
xlim([0 1])
ylabel('x_n_+_1')
ylim([0 1])
title('Alternative 1D Lorenz Map')