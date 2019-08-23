function [x, L] = Lorenz1Dfixed(alpha, beta, t)

for i = 1:t
%x(1) = rand(1,1);
%x(1) = 0.51;
x(1) = 0.41;
if x(i) >= 0 && x(i) <=1
    x(i+1) = alpha*(1 - abs(1 - 2*x(i))^beta);
end
end
figure(1);
L = [x(1:end-1);x(2:end)];
plot(L(1,:),L(2,:),'k.');
xlabel('x_n')
xlim([0.48 0.52])
ylabel('x_n_+_1')
ylim([0.9 1])
title('One Dimension Lorenz Map Approx.')