function f=PD_TVL2inpainting(g,M,lambda,tau,theta,N)

sigma=0.01+1/(8*tau);

%initialisation
f=g;
ft=g;
p=PD_grad(g);

%iteration
for n=1:N
    fprintf("Iteration %d/%d \n",n,N);
    %imshow(f,[])
    %pause
   p=PD_projl2(p+sigma*PD_grad(ft));
   fp=f;
   f=PD_proxtvl2inpainting(f+tau*PD_div(p),g,M,tau,lambda);
   ft=f+theta*(f-fp);
end