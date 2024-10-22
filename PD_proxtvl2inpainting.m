function p=PD_proxtvl2inpainting(x,g,M,lambda,tau)

p=(x+lambda*tau*M.*g)./(1+lambda*tau*M);