%% 
cl;

res = 480;
cpfov = 16;
contrast = 1;
%
grating1 = creategrating(res, 'orientation',45,'contrast', 0.5, 'maskType','none', 'cpfov', 16);
grating2 = creategrating(res, 'orientation',-45, 'contrast', 0.5, 'maskType','none', 'cpfov', 16);
figure(1);
imagesc(grating1.gratingImg);
figure(2);
imagesc(grating2.gratingImg);

plaid = grating1.gratingImg+grating2.gratingImg-127;
figure(3);
imagesc(plaid);

% RMS contrast 
rms = sqrt(sum((flatten(plaid)-127).^2)/(res^2));

%% calculate grating
[xx,yy]=calcunitcoordinates(res);
f = cpfov * 2 * pi;
a = cosd(0)*f; b=sind(0)*f;
tmp = sqrt(sum(flatten(sin(a*xx+b*yy)*127).^2)/(res^2));
rms/tmp

