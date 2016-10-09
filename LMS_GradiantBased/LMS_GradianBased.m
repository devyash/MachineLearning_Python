function [W ] = LMS_GradientBased()
clear;
load ('training.mat');
load('validate.mat');
N=size(training,1);

for M=3:30
    %W=Calculate_W(M,N);
    W=zeros(M,1);
    e=0;
    X=Calculate_X(M,training);
    R=X*(X')/(N-M);
    Lamda_Max=max(eig(R));
    for j=1:10
            Mu=(1/Lamda_Max)/j;
            W=train(W,e,X,Mu,training,M);      
    end   
    
end

end

