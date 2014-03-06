function [act_risk,act_return] = actualfront(R,S,W,N)
 act_risk = zeros(10,1);
 act_return = zeros(10,1);
 for i = 1:N     
     [rsk,ret] = portstats(R,S,W(:,:,i));
     act_risk = act_risk + rsk;
     act_return = act_return + ret;
 end
 act_return = act_return *(1/N);
 act_risk = act_risk * (1/N);
end

