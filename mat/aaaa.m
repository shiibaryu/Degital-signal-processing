file_n = uigetfile("./*.jpg");
im = imread(file_n);
r = input("Please type a scale you want ");

scale = [r r];             
os = size(im);                   
ns = max(floor(scale.*oldSize(1:2)),1);

row = min(round(((1:newSize(1))-0.5)./scale(1)+0.5),oldSize(1));
col = min(round(((1:newSize(2))-0.5)./scale(2)+0.5),oldSize(2));


om = im(row,col,:);

imshow(om)