function ff=PD_proxl2square(f,g,tau,lambda)

ff=(f+tau*lambda*g)/(1+tau*lambda);