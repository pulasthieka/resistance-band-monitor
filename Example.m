% Created by: Simon Lind Kappel - simon@lkappel.dk - November 2017
%
% >>Description<<
% Example of how to use the WiFiUDPlogger class to receive data from an Adafruit Feather board.
%
obj = WiFiUDPlogger;
obj = open(obj);
if obj.Connected
    obj = recordData(obj,1);
    plot(obj);
end
obj = close(obj);

%%
% save('test.mat')
% raw = ValidRaw(:,2);
% [b,a] = butter(8,0.02,'low');
% filtered = filter(b,a,raw);
% plot(filtered)
% l = [mean(loading1(:,1)),mean(loading2(:,1)),mean(loading3(:,1)),mean(loading3(:,1)),mean(loading4(:,1)),mean(loading5(:,1)),mean(loading6(:,1)),mean(loading7(:,1)),mean(loading8(:,1)),mean(loading9(:,1))];
% % u = [mean(unloading1(:,1)),mean(unloading2(:,1)),mean(unloading3(:,1)),mean(unloading3(:,1)),mean(unloading4(:,1)),mean(unloading5(:,1)),mean(unloading6(:,1)),mean(unloading7(:,1)),mean(unloading8(:,1)),mean(unloading9(:,1))];
% 
% figure()
% plot(linspace(0.340,3.40,numel(l)),l-mean(zeroLevel(:,1)));
% % plot(1:numel(u),mean(zeroLevel(:,1))-u,1:numel(l),l-mean(zeroLevel(:,1)));
% legend('unloading curve','loading curve'), xlabel('kg')