function corrheatmap(desch, data, lutmx, center, step)

figure(98);
z = 0;
mxdim = 8;

RxyAmpLag1 = zeros(1,64);
RxyAmpLag2 = zeros(1,64);
RxyAmpLag3 = zeros(1,64);
RxyAmpLag4 = zeros(1,64);
RxyAmpLag5 = zeros(1,64);
RxyAmpLag6 = zeros(1,64);
RxyAmpLag7 = zeros(1,64);
RxyAmpLag8 = zeros(1,64);
RxyAmpLag9 = zeros(1,64);
RxyAmpLag10 = zeros(1,64);
RxyAmpLag11 = zeros(1,64);
RxyAmpLag12 = zeros(1,64);
RxyAmpLag13 = zeros(1,64);
RxyAmpLag14 = zeros(1,64);
RxyAmpLag15 = zeros(1,64);

for i = 1:mxdim
    for j = 1:mxdim
        z=z+1;
        subplot(mxdim,mxdim,z);
        lutmxch = lutmx(i,j);
        if ((lutmxch <= 60))
            [Rxy, lags] = xcorr(data((desch),:), data((lutmxch),:));
 
            RxyAmpLag1(z) = Rxy(lags==-7*step + center);
            RxyAmpLag2(z) = Rxy(lags==-6*step + center);
            RxyAmpLag3(z) = Rxy(lags==-5*step + center);
            RxyAmpLag4(z) = Rxy(lags==-4*step + center);
            RxyAmpLag5(z) = Rxy(lags==-3*step + center);
            RxyAmpLag6(z) = Rxy(lags==-2*step + center);
            RxyAmpLag7(z) = Rxy(lags==-step + center);
            RxyAmpLag8(z) = Rxy(lags==center);
            RxyAmpLag9(z) = Rxy(lags==step + center);
            RxyAmpLag10(z) = Rxy(lags==2*step + center);
            RxyAmpLag11(z) = Rxy(lags==3*step + center);
            RxyAmpLag12(z) = Rxy(lags==4* step + center);
            RxyAmpLag13(z) = Rxy(lags==5*step + center);
            RxyAmpLag14(z) = Rxy(lags==6*step + center);
            RxyAmpLag15(z) = Rxy(lags==7*step + center);

        else
            plot(0, 0);
            title('DNE');
       
        end
    end
end

for idx=1:64
    if RxyAmpLag1(idx) == 0
        RxyAmpLag1(idx) = NaN;
    end
    if RxyAmpLag2(idx) == 0
        RxyAmpLag2(idx) = NaN;
    end
    if RxyAmpLag3(idx) == 0
        RxyAmpLag3(idx) = NaN;
    end
    if RxyAmpLag4(idx) == 0
        RxyAmpLag4(idx) = NaN;
    end
    if RxyAmpLag5(idx) == 0
        RxyAmpLag5(idx) = NaN;
    end
    if RxyAmpLag6(idx) == 0
        RxyAmpLag6(idx) = NaN;
    end
    if RxyAmpLag7(idx) == 0
        RxyAmpLag7(idx) = NaN;
    end
    if RxyAmpLag8(idx) == 0
        RxyAmpLag8(idx) = NaN;
    end
    if RxyAmpLag9(idx) == 0
        RxyAmpLag9(idx) = NaN;
    end
    if RxyAmpLag10(idx) == 0
        RxyAmpLag10(idx) = NaN;
    end
    if RxyAmpLag11(idx) == 0
        RxyAmpLag11(idx) = NaN;
    end
    if RxyAmpLag12(idx) == 0
        RxyAmpLag12(idx) = NaN;
    end
    if RxyAmpLag13(idx) == 0
        RxyAmpLag13(idx) = NaN;
    end
    if RxyAmpLag14(idx) == 0
        RxyAmpLag14(idx) = NaN;
    end
    if RxyAmpLag15(idx) == 0
        RxyAmpLag15(idx) = NaN;
    end
end           


RxyAmpMxM7 = reshape(RxyAmpLag1,mxdim,mxdim);
RxyAmpMxM7 = RxyAmpMxM7.';

RxyAmpMxM6 = reshape(RxyAmpLag2,mxdim,mxdim);
RxyAmpMxM6 = RxyAmpMxM6.';

RxyAmpMxM5 = reshape(RxyAmpLag3,mxdim,mxdim);
RxyAmpMxM5 = RxyAmpMxM5.';

RxyAmpMxM4 = reshape(RxyAmpLag4,mxdim,mxdim);
RxyAmpMxM4 = RxyAmpMxM4.';

RxyAmpMxM3 = reshape(RxyAmpLag5,mxdim,mxdim);
RxyAmpMxM3 = RxyAmpMxM3.';

RxyAmpMxM2 = reshape(RxyAmpLag6,mxdim,mxdim);
RxyAmpMxM2 = RxyAmpMxM2.';

RxyAmpMxM1 = reshape(RxyAmpLag7,mxdim,mxdim);
RxyAmpMxM1 = RxyAmpMxM1.';

RxyAmpMx0 = reshape(RxyAmpLag8,mxdim,mxdim);
RxyAmpMx0 = RxyAmpMx0.';

RxyAmpMxP1 = reshape(RxyAmpLag9,mxdim,mxdim);
RxyAmpMxP1 = RxyAmpMxP1.';

RxyAmpMxP2 = reshape(RxyAmpLag10,mxdim,mxdim);
RxyAmpMxP2 = RxyAmpMxP2.';

RxyAmpMxP3 = reshape(RxyAmpLag11,mxdim,mxdim);
RxyAmpMxP3 = RxyAmpMxP3.';

RxyAmpMxP4 = reshape(RxyAmpLag12,mxdim,mxdim);
RxyAmpMxP4 = RxyAmpMxP4.';

RxyAmpMxP5 = reshape(RxyAmpLag13,mxdim,mxdim);
RxyAmpMxP5 = RxyAmpMxP5.';

RxyAmpMxP6 = reshape(RxyAmpLag14,mxdim,mxdim);
RxyAmpMxP6 = RxyAmpMxP6.';

RxyAmpMxP7 = reshape(RxyAmpLag15,mxdim,mxdim);
RxyAmpMxP7 = RxyAmpMxP7.';


subplot(4,4,1)
imagesc(RxyAmpMxM7);
colormap(parula(100)); 
colorbar;
title(['cross correlation with ' num2str(desch) ' lags ' num2str(-7*step + center)]);

subplot(4,4,2)
imagesc(RxyAmpMxM6);
colormap(parula(100)); 
colorbar;
title(['cross correlation with ' num2str(desch) ' lags ' num2str(-6*step + center)]);

subplot(4,4,3)
imagesc(RxyAmpMxM5);
colormap(parula(100)); 
colorbar;
title(['cross correlation with ' num2str(desch) ' lags ' num2str(-5*step + center)]);

subplot(4,4,4)
imagesc(RxyAmpMxM4);
colormap(parula(100)); 
colorbar;
title(['cross correlation with ' num2str(desch) ' lags ' num2str(-4*step + center)]);

subplot(4,4,5)
imagesc(RxyAmpMxM3);
colormap(parula(100)); 
colorbar;
title(['cross correlation with ' num2str(desch) ' lags ' num2str(-3*step + center)]);

subplot(4,4,6)
imagesc(RxyAmpMxM2);
colormap(parula(100)); 
colorbar;
title(['cross correlation with ' num2str(desch) ' lags ' num2str(-2*step + center)]);

subplot(4,4,7)
imagesc(RxyAmpMxM1);
colormap(parula(100)); 
colorbar;
title(['cross correlation with ' num2str(desch) ' lags ' num2str(-1*step + center)]);

subplot(4,4,8)
imagesc(RxyAmpMx0);
colormap(parula(100)); 
colorbar;
title(['cross correlation with ' num2str(desch) ' lags ' num2str(0*step + center)]);

subplot(4,4,9)
imagesc(RxyAmpMxP1);
colormap(parula(100)); 
colorbar;
title(['cross correlation with ' num2str(desch) ' lags ' num2str(1*step + center)]);

subplot(4,4,10)
imagesc(RxyAmpMxP2);
colormap(parula(100)); 
colorbar;
title(['cross correlation with ' num2str(desch) ' lags ' num2str(2*step + center)]);

subplot(4,4,11)
imagesc(RxyAmpMxP3);
colormap(parula(100)); 
colorbar;
title(['cross correlation with ' num2str(desch) ' lags ' num2str(3*step + center)]);

subplot(4,4,12)
imagesc(RxyAmpMxP4);
colormap(parula(100)); 
colorbar;
title(['cross correlation with ' num2str(desch) ' lags ' num2str(4*step + center)]);

subplot(4,4,13)
imagesc(RxyAmpMxP5);
colormap(parula(100)); 
colorbar;
title(['cross correlation with ' num2str(desch) ' lags ' num2str(5*step + center)]);

subplot(4,4,14)
imagesc(RxyAmpMxP6);
colormap(parula(100)); 
colorbar;
title(['cross correlation with ' num2str(desch) ' lags ' num2str(6*step + center)]);

subplot(4,4,15)
imagesc(RxyAmpMxP7);
colormap(parula(100)); 
colorbar;
title(['cross correlation with ' num2str(desch) ' lags ' num2str(7*step + center)]);
 