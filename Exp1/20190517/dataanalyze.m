%%
cl;
data = matchfiles('*plaid*');
nFiles = numel(data);
thre = zeros(1,nFiles);
for i =1: nFiles
    tmp = load(data{i});
    [a,~]=fitpsychometricfun(tmp.data(:,6), tmp.data(:,8),'weibull',struct('scale',1),1);
    thre(i)=a(1);
end
bar = mybar(1, mean(thre), se(thre));
scatter(ones(1,nFiles), thre, 'o');
ylabel('Duration threshold (ms)');
set(bar, 'FaceColor', 'None', 'EdgeColor','b', 'LineWidth',2);
