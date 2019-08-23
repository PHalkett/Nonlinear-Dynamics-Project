function [x, L] = Lorenz1Dderivative(alpha, beta, t)

for i = 1:t
x(1) = 0;
%x(1) = 0.51;
%x(1) = 0.0001;
if x(i) >= 0 && x(i) <=1
    x(i+1) = (alpha*beta*(abs(1 - x(i))^beta)) / (1 - x(i));
end
end
figure(1);
L = [x(1:end-1);x(2:end)];
plot(L(1,:),L(2,:),'k.');
xlabel('x_n')
xlim([-1 1])
ylabel('x_n_+_1')
ylim([-1 1])
title('One Dimension Lorenz Map Approx.')