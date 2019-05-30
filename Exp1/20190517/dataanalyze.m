%%
cl;
data = matchfiles('*compo*');
nFiles = numel(data);
thre_compo = zeros(1,nFiles);
%rng(100);  % You need to set a random seed here to get consistent results.
for i =1: nFiles
    tmp = load(data{i});
    [a,~]=fitpsychometricfun(tmp.data(:,6), tmp.data(:,8),'weibull',struct('scale',1,'slope',nan),0);
    thre_compo(i)=a(1);
end
%
data = matchfiles('*plaid*');
nFiles = numel(data);
thre_plaid = zeros(1,nFiles);
%rng(100);  % You need to set a random seed here to get consistent results.
for i =1: nFiles
    tmp = load(data{i});
    [a,~]=fitpsychometricfun(tmp.data(:,6), tmp.data(:,8),'weibull',struct('scale',1,'slope',nan),0);
    thre_plaid(i)=a(1);
end
thre_compo = thre_compo(thre_compo<100);
thre_plaid = thre_plaid(thre_plaid<100);

figure;
bar1 = mybar(1, mean(thre_compo), se(thre_compo));
bar2 = mybar(2, mean(thre_plaid), se(thre_plaid));

scatter(ones(1,length(thre_compo)), thre_compo, 'bo');
scatter(2*ones(1,length(thre_plaid)), thre_plaid, 'ro');
ylabel('Duration threshold (ms)');
set(bar1, 'FaceColor', 'None', 'EdgeColor','b', 'LineWidth',2);
set(bar2, 'FaceColor', 'None', 'EdgeColor','r', 'LineWidth',2);
set(gca, 'XTick',[1,2]);
set(gca, 'XTickLabels',{'compo', 'plaid'});
%%
cl;
tmp = load('p1_compo_20190524070544.mat');
data = tmp.data;
[a,~]=fitpsychometricfun(data(:,6), data(:,8),'weibull',struct('scale',1),1);

% plot staircase
figure;
x=1:1:size(data,1)/2;
subplot(2,1,1);
myplot(x', data(data(:,2)==1,6)',[],'r.','MarkerSize',10);
ylabel('Duration');
title('2/1 staircase');
hold on;
subplot(2,1,2);
myplot(x', data(data(:,2)==2,6)',[],'r.','MarkerSize',10);
xlabel('Trials');ylabel('Duration');title('3/1 staircase');
hold on;