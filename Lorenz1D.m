function [x, L] = Lorenz1D(alpha, beta, t)
for i = 1:t
x(1) = 0;
%x(1) = rand(1,1);
if x(i) >= 0 && x(i) <0.5
    x(i+1) = alpha*(1 - ();
else
    if x(i)>= 0.5 && x(i)<=1
    x(i+1) = alpha*(abs(x(i)-0.5));
    end
end
end
figure(1);
L = [x(1:end-1);x(2:end)];
plot(L(1,:),L(2,:),'k.');
xlabel('x_n')
ylabel('x_n_+_1')
title('One Dimension Lorenz Map Approx.')