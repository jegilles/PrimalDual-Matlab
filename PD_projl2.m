function pp=PD_projl2(p)

pp=p./repmat(max(1,sqrt(p(:,:,1).^2+p(:,:,2).^2)),1,1,2);