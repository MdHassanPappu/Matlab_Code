
close all

A=[1,1,1;-1,1,1;1,-1,1;1,1,-1;-1,-1,1;-1,1,-1;1,-1,-1;-1,-1,-1];
b=-ones(8,1);

plotregion(A,b,[],[],[0.7,0.2,0.3]);

axis equal
