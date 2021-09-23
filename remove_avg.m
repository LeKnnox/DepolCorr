close all
clc
clear

load('Rat 17_003_original.mat');
load('Rat 17_10012019_003_Marked.mat');

LUT = [61 7 36 6 35 3 1 62 ...      %LUT refrences where specific channels are
    39 10 40 9 38 4 31 2 ...        %in space on the electrode array
    12 42 13 41 11 34 33 32 ...
    44 15 45 14 43 8 37 5 ...
    59 30 60 29 58 24 52 49 ...
    27 57 28 56 26 20 19 18 ...
    54 25 55 63 53 48 17 46 ...
    23 51 22 50 21 47 16 64];
lutmx = reshape(LUT,8,8)           %reshap LUT into 8x8 matrix

dedCh=[18, 29, 30, 31, 56];
for idx=1:length(dedCh)
    data(dedCh(idx),:)=NaN;
end

desch = 3;
t = (0:length(data)-1)/Fs;
iCh = [18, 29, 30, 31, 56]; 

% for i = iCh
%     hold on
%     figure(i)
%     plot(t, data(i,:))
% end

%%
NormData = remove_DC(iCh, data, Fs);
figure(99);
legend('18', '29', '30', '31', '56' );
%%
corrplots(desch,data,lutmx);
figure(100);f
%%
center = 0;
step = 10000;
corrheatmap(desch, data, lutmx, center, step);
figure(98);

