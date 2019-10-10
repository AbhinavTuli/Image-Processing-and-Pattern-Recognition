close all
clear all
r=imread('cameraman.tif');
for len=1:256
  for wid=1:256
    if r(len,wid)<192
      s(len,wid)=(r(len,wid))/3;
    else
      s(len,wid)=(r(len,wid))-170;
      s(len,wid)=3*s(len,wid);
    endif
  endfor
endfor
s=round(s);
imshow(s,[]);
