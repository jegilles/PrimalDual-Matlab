function p=PD_proxl1(x,g,lambda,tau)

p=g;
th=lambda*tau;
p((x-g)>th)=x((x-g)>th)-th;
p((x-g)<-th)=x((x-g)<-th)+th;