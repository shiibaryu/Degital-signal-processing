file_n = uigetfile("./*.jpg");
im = imread(file_n);

r = input("Please type a scale you want ");
%resize�ŃT�C�Y��傫�� -> r > 0
%resize�ŃT�C�Y�������� -> r < 0
resized_im = imresize(im,r);

%xs/r,ys/r�̏ꍇ
%resize�ŃT�C�Y��傫�� -> r > 0
%resize�ŃT�C�Y�������� -> r < 0
%resized_im = imresize(im,1/r);





imshow(resized_im)