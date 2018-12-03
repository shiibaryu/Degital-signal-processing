file_n = uigetfile("./*.jpg");
im = imread(file_n);

r = input("Please type a scale you want ");
%resizeでサイズを大きく -> r > 0
%resizeでサイズを小さく -> r < 0
resized_im = imresize(im,r);

%xs/r,ys/rの場合
%resizeでサイズを大きく -> r > 0
%resizeでサイズを小さく -> r < 0
%resized_im = imresize(im,1/r);





imshow(resized_im)