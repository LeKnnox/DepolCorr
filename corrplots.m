function corrplots(desch, data, lutmx)

figure(100);
z = 0;
mxdim = 8;

for i = 1:mxdim
    for j = 1:mxdim
        z=z+1;
        subplot(mxdim,mxdim,z);
        lutmxch = lutmx(i,j);
        if ((lutmxch <= 60))
            [Rxy, lags] = xcorr(data((desch),:), data((lutmxch),:));
            plot(lags, Rxy);
            title(['ch ' num2str(desch) ' and ch '  num2str(lutmxch)]);
 else
            plot(0, 0);
            title('DNE');
       
        end
    end
end
%[Rxy, lags] = xcorr(data((desch),:), data((lutmxch),:));
