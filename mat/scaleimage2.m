file_n = uigetfile("./*.jpg");
im = imread(file_n);
%scale input
r = input("Please type a scale you want ");

%scale ���
scale = [r r];  
%old size
os = size(im);  
%new size
ns = max(floor(scale.*oldSize(1:2)),1);

%�c�̃T�C�Y
row = min(round(((1:newSize(1))-0.5)./scale(1)+0.5),oldSize(1));
%���̃T�C�Y
col = min(round(((1:newSize(2))-0.5)./scale(2)+0.5),oldSize(2));

%output size
om = im(row,col,:);

imshow(om)