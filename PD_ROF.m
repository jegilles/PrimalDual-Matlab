function f=PD_ROF(g,lambda,tau,theta,N)

sigma=0.01+1/(8*tau);

%initialisation
f=g;
ft=g;
p=PD_grad(g);

%iteration
for n=1:N
    %imshow(f,[])
   p=PD_projl2(p+sigma*PD_grad(ft));
   fp=f;
   f=PD_proxl2square(f+tau*PD_div(p),g,tau,lambda);
   ft=f+theta*(f-fp);
end