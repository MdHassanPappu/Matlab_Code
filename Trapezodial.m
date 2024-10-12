% Numerical Integration 
% Trapezodial rules for finding Area of Curve in a given interval

clc
clear all
close all
f=@(x) 1/(exp(x)+exp(-x))
a=input('enter the lower limit : ')
b=input('enter the upper limit  : ')
n=input('number of partition  : ')
h=(b-a)/n;
sum=0;

    for i=1:n-1
        x(i)=a+i*h;
        y(i)=f(x(i));
        sum=sum+y(i);
    end 

trap=(h/2)*(f(a)+f(b)+2*sum)

disp("Trapzodial result is : ")
disp(trap)
