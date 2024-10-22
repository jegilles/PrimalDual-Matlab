function f=PD_TVL2multi(g,lambda,tau,theta,N)

sigma=0.01+1/(8*tau);

%initialisation
f=g(:,:,1);
ft=g(:,:,1);
p=PD_grad(g(:,:,1));

%iteration
for n=1:N
    %imshow(f,[])
   p=PD_projl2(p+sigma*PD_grad(ft));
   fp=f;
   f=PD_proxtvl2multi(f+tau*PD_div(p),g,tau,lambda);
   ft=f+theta*(f-fp);
end