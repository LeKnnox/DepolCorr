close all
clc
clear

load('Rat 17_003_original.mat');

for index = 0
time = 5*60*Fs;

LUT = [61 7 36 6 35 3 1 62 ...      %LUT refrences where specific channels are
    39 10 40 9 38 4 31 2 ...        %in space on the electrode array
    12 42 13 41 11 34 33 32 ...
    44 15 45 14 43 8 37 5 ...
    59 30 60 29 58 24 52 49 ...
    27 57 28 56 26 20 19 18 ...
    54 25 55 63 53 48 17 46 ...
    23 51 22 50 21 47 16 64];
lutmx = reshape(LUT,8,8)           %reshap LUT into 8x8 matrix

% prompt = 'Select a channel to cross-correlate ';    %user inputs desired channel
% desch = input(prompt);

desch = 10;

[desrow,descol] = find(lutmx == desch);     %find desired channel matrix position

figure;
z = 0;
mxdim = 8;

% appendage = ones(1,519999);
% data15 = data(15,520000:end);
% data(15,:) = [data15 appendage];

RxyAmpLag8 = zeros(1,64);

step = 1000;
center = index * 10000;
a = 1;

for i = 1:mxdim
    for j = 1:mxdim
        z=z+1;
        subplot(mxdim,mxdim,z);
        lutmxch = lutmx(i,j);
        if ((lutmxch <= 60))
            [Rxy, lags] = xcorr(data((desch),:), data((lutmxch),:));
            plot(lags, Rxy);
            title(['ch ' num2str(desch) ' and ch '  num2str(lutmxch)]);
%             for k = -7:7
%                a=a+1
%                RxyAmpLagi(a,z) = Rxy(lags==-k*step + center);
%             end
%             maxi=max(Rxy)
%             center=lags(Rxy==maxi)
            RxyAmpLag8(z) = Rxy(lags==0);
        else
            plot(0, 0);
            title('DNE');
       
        end
    end
end


RxyAmpMx0 = reshape(RxyAmpLag8,mxdim,mxdim);
RxyAmpMx0 = RxyAmpMx0.';

figure

imagesc(RxyAmpMx0);
colormap(parula(100)); 
colorbar;
title(['cross correlation with ' num2str(desch) ' lags ' num2str(0*step + center) ...
    ' with all data']);

end
 
 
 
 
 
 