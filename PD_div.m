function g=PD_div(f)

%% Computes the divergence of the 2D vector field f

g=zeros(size(f,1),size(f,2));

g(1,:)=f(1,:,1);
g(2:end-1,:)=f(2:end-1,:,1)-f(1:end-2,:,1);
g(end,:)=-f(end-1,:,1);

g(:,1)=g(:,1)+f(:,1,2);
g(:,2:end-1)=g(:,2:end-1)+f(:,2:end-1,2)-f(:,1:end-2,2);
g(:,end)=g(:,end)-f(:,end-1,2);
