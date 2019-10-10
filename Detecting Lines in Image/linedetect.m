clc;
close all;
i=imread('img_assgn2.png');
[H,theta,rho] = hough(i);
I  = houghpeaks(H,5,'threshold',ceil(0.3*max(H(:))));
figure 1
imshow(H);
lines = houghlines(i,theta,rho,I,'FillGap',30,'MinLength',2);

figure, imshow(i), hold on
for k = 1:length(lines)
   xy = [lines(k).point1; lines(k).point2];
   plot(xy(:,1),xy(:,2),'LineWidth',2,'Color','blue');

   plot(xy(1,1),xy(1,2),'x','LineWidth',2,'Color','yellow');
   plot(xy(2,1),xy(2,2),'x','LineWidth',2,'Color','red');
end
