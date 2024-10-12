% Numerical Integration 
% Simpson 1/3  rules for finding Area of Curve in a given interval

clc
clear all
close all
f=@(x) 1/(exp(x)+exp(-x))
a=input('enter the lower limit : ')
b=input('enter the upper limit  : ')
n=input('number of partition  : ')
h=(b-a)/n;
sum1=0;
sum2=0

    for i=1:n-1
        x(i)=a+i*h;
        y(i)=f(x(i));

             if mod(i,2)==0
                sum1=sum1+y(i);
                else 
                 sum2=sum2+y(i);
             end 
    end

simp1_3=(h/3)*(f(a)+f(b)+2*sum1+4*sum2);

disp("simpshon 1/3  result is :")
disp(simp1_3)
