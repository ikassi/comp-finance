%%clear;
%correlation matrix
C = [ 1, 0.3, 0.3, 0.3, 0.3;
      0.3, 1, 0.3, 0.3, 0.3;
      0.3, 0.3, 1, 0.3, 0.3;
      0.3, 0.3, 0.3, 1, 0.3;
      0.3, 0.3, 0.3, 0.3, 1];
  
%means and sds
r = [0.006,0.01,0.014,0.018,0.022];  
sd = [0.085,0.08,0.095,0.09,0.1]; 
N = 10000;
%covariance matrix
S = C .* repmat(sd,length(sd),1) .* repmat(sd',1,length(sd)); 
 
% theoretical efficient frontier
[thr_risk,thr_return,~] = frontcon(r,S,10); 
%average efficient frontier
[avg_risk2,avg_return2,w2] = avgfront(r,S,12*2,N);
[avg_risk30,avg_return30,w30] = avgfront(r,S,12*30,N);
[avg_risk150,avg_return150,w150] = avgfront(r,S,12*150,N);

%actual effient frontier
[act_risk2,act_return2] = actualfront(r,S,w2,N);
[act_risk30,act_return30] = actualfront(r,S,w30,N);
[act_risk150,act_return150] = actualfront(r,S,w150,N);

plot_q3;