% load('test1.mat') % test 1 data
% load('test2.mat') % test 1 and 2 data 
% load('test3.mat') % test 1,2 and 3 data
% load('test4.mat')

%load ('final.mat') % all
trials = [test1.Data(1,:) , test2.Data(1,:), test3.Data(1,:), test4.Data(1,:) , test5.Data(1,:)];
figure()
plot(trials)
hold on
filtered = smooth(trials,400,'moving');
plot(filtered)
%%
trial1 = [mean(zero);mean(one);mean(two);mean(three);mean(four);mean(five);mean(six);mean(seven);mean(eight);mean(nine);mean(ten)]; %loading
trial2 = [mean(zero2);mean(one2);mean(two2);mean(three2);mean(four2);mean(five2);mean(six2);mean(seven2);mean(eight2);mean(nine2);mean(ten2)]; %unloading
trial3 = [mean(zero33);NaN(1,2);mean(two3) ;NaN(1,2);mean(four3);NaN(1,2);mean(six3);NaN(1,2);mean(eight3);NaN(1,2);mean(ten3)]; %double loading
trial4 = [mean(zero4);NaN(1,2);mean(two4);NaN(1,2);mean(four4);NaN(1,2);mean(six4);NaN(1,2);mean(eight4);NaN(1,2);NaN(1,2)]; %double unloading
trial5 = [mean(zero5);NaN(1,2);NaN(1,2);mean(three5);NaN(1,2);NaN(1,2);mean(six5);NaN(1,2);NaN(1,2);mean(nine5);NaN(1,2)]; %triple loading
trialkg = [mean(zerok);mean(k1);mean(k2);mean(k2two);mean(k2three);mean(k3);mean(k3two);mean(k3three);mean(k4)];
%%
t = 0:10;
t = t*0.320;
t_k = [0,1,2,2,2,3,3,3,4];
figure()
scatter(t,trial1(:,2),'filled')
title('Variation of Readings'),xlabel('weight'),ylabel('amplitude');
hold on
scatter(t,trial2(:,2),'filled')
scatter(t,trial3(:,2), 'filled')
scatter(t,trial4(:,2),'filled')
scatter(t,trial5(:,2),'filled')
scatter(t_k,trialkg(:,2),'filled')
hold off
%%
variation1 = trial1(:,2) - mean(zero(:,2));
variation2 = trial2(:,2) - mean(zero2(:,2));
variation3 = trial3(:,2) - mean(zero33(:,2));
variation4 = trial4(:,2) - mean(zero4(:,2));
variation5 = trial5(:,2) - mean(zero5(:,2));
variationkg = trialkg(:,2) - mean(zerok(:,2));

figure()
scatter(t,variation1,'filled')
title('Zero Adjusted Readings'),xlabel('weight'),ylabel('amplitude');
hold on
scatter(t,variation2,'filled')
scatter(t,variation3, 'filled')
scatter(t,variation4,'filled')
scatter(t,variation5,'filled')
scatter(t_k,variationkg,'filled')
hold off