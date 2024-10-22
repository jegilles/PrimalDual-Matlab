function p=PD_proxtvl2multi(x,g,lambda,tau)
Ng=size(g,3);

p=(x+tau*lambda*sum(g,3))/(1+Ng*tau*lambda);