mymap =[ 1,1,0 %yellow
1,0,1   %magenta
0,1,1   %cyan
1,0,0   %red
0,1,0   %green
0,0,1   %blue
1,1,1   %black
0,0,0]; %white

colormap(mymap)

a = [0,0,1,1,1];
image(a)

%imwrite(colormap(mymap),"mymap.jpg");
%I = imread("mymap.jpg");
%imshow(I);
