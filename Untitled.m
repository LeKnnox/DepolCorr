close all
clc
clear

load('Rat 17_003_original.mat');
load('Rat 17_10012019_003_Marked.mat');

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

desch = 1;

%[desrow,descol] = find(lutmx == desch);     %find desired channel matrix position

 figure;
z = 0;
mxdim = 8;

% appendage = ones(1,519999);
% data15 = data(15,520000:end);
% data(15,:) = [data15 appendage];

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


step = 20000;
center = 10000;
a = 1;

for i = 1:mxdim
    for j = 1:mxdim
        z=z+1;
        subplot(mxdim,mxdim,z);
        lutmxch = lutmx(i,j);
        if ((lutmxch <= 57) && (lutmxch ~= 15) && (lutmxch ~= 45) && (lutmxch ~= 29) && (lutmxch ~= 5) && (lutmxch ~= 17))
            [Rxy, lags] = xcorr(data((desch),:), data((lutmxch),:));
            plot(lags, Rxy);
            title(['ch ' num2str(desch) ' and ch '  num2str(lutmxch)]);
%             for k = -7:7
%                a=a+1
%                RxyAmpLagi(a,z) = Rxy(lags==-k*step + center);
%             end
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

