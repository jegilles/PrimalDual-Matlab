function g=PD_grad(f)

%% computes the gradient of f

g=zeros(size(f,1),size(f,2),2);

g(1:end-1,:,1)=f(2:end,:)-f(1:end-1,:);
g(:,1:end-1,2)=f(:,2:end)-f(:,1:end-1);