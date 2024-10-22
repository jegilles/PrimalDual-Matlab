%%TEST SCRIPT
clear;

load lena;
lena=f; clear f; %depends on Matlab version, sometime the loaded variable is called f or lena.

N=1000;
tau=0.01;
theta=1;

%create a noisy version
%gnoisy=lena+0.1*rand(size(lena));

%%=========================================================================
% %%Test ROF
% lambda=18;
% f=PD_ROF(gnoisy,lambda,tau,theta,N);
% figure(1);
% subplot(1,2,1);imshow(gnoisy,[]);
% subplot(1,2,2);imshow(f,[]);
% title('ROF');

% %%Test TV-L1
% lambda=1.5;
% f=PD_TVL1(gnoisy,lambda,tau,theta,N);
% figure(2);
% subplot(1,2,1);imshow(gnoisy,[]);
% subplot(1,2,2);imshow(f,[]);
% title('TV-L1');

%%=========================================================================
%%Test TV-L2 inpainting
% M=ones(size(lena));
% I=rand(size(lena));
% M(I>0.4)=0;
% sum(M(:))/256^2
% 

scale=4;
M=Upsample2D(ones(size(lena)/scale),scale);

gmiss=lena.*M;

lambda=1e6;
f=PD_TVL2inpainting(gmiss,M,lambda,tau,theta,N);
figure(3);
subplot(1,2,1);imshow(gmiss,[]);
subplot(1,2,2);imshow(f,[]);
title('TV-L2 inpainting');

%%=========================================================================
%%Test TV-L2 multi-observations
% Ng=20; %number of observations
% gmul=repmat(lena,1,1,Ng);
% gmul=gmul+0.7*rand(size(gmul));
% 
% lambda=2;
% f=PD_TVL2multi(gmul,lambda,tau,theta,N);
% subplot(1,2,1);imshow(gmul(:,:,1),[]);
% subplot(1,2,2);imshow(f,[]);
