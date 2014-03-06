 figure(1);
 plot1 = plot(act_risk2,act_return2,'b-',...
     avg_risk2,avg_return2,'g-',...
     thr_risk,thr_return,'r-');
 xlabel('Risk (sd)');
 ylabel('Expected return (r)'); 
 title('2 years');
 legend(plot1, {'Actual','Estimated','Theoretical'});
 
 figure(2);
 plot2 = plot(act_risk30,act_return30,'b-',...
     avg_risk30,avg_return30,'g-',...
     thr_risk,thr_return,'r-');
 xlabel('Risk (sd)');
 ylabel('Expected return (r)'); 
 title('30 years');
 legend(plot2, {'Actual','Estimated','Theoretical'});
 
 figure(3);
 plot3 = plot(act_risk150,act_return150,'b-',...
     avg_risk150,avg_return150,'g-',...
     thr_risk,thr_return,'r-');
 xlabel('Risk (sd)');
 ylabel('Expected return (r)'); 
 title('150 years');
 legend(plot3, {'Actual','Estimated','Theoretical'});