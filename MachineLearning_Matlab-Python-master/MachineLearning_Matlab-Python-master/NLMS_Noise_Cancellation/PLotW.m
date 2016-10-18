clear;
load('project1.mat');
mu=0.0009;
M=2;
[e,w,W]=nlms1(mu,M,primary,reference);
W1=W(1,1:100:70000);
W2=W(2,1:100:70000);
plot(1:100:70000,W1,1:100:70000,W2);
ylabel('|W|');
xlabel('Iterations');
legend('W1','W2')