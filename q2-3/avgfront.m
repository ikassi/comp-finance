function [avg_risk,avg_return,ws] = avgfront(R,S,T,N)
 avg_return = zeros(10,1);
 avg_risk = zeros(10,1);
 ws = zeros(10,5,N);
 for i = 1:N
     R2 = mvnrnd(R,S,T);
     [rsk,ret,ws(:,:,i)] = frontcon(mean(R2),cov(R2),10);
     avg_risk = avg_risk + rsk;
     avg_return = avg_return + ret;
 end
 avg_risk = avg_risk *(1/N);
 avg_return = avg_return * (1/N);
end