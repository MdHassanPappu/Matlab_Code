f=input('Declare a function : ');
a=input('Enter intial value  : ');
b=input('Enter terminated  value : ');
n=input('Enter number of iteration : ');
e=input('Tolerance is : ');
if f(a)*f(b)<0
  for i=1:n
    c=(a+b)/2;
    fprintf('x%d= %.4f\n',i,c)
    fprintf("%d , %d \n",a,b)
    if abs(c-b)<e || abs(c-a) <e
        break
    end
    if f(a)*f(c)<0
      b=c;
    elseif f(b)*f(c)<0
        a=c;
    end
  end
fprintf('Root is: %f ',c);
else
    fprintf('No root between %d & %d ',a,b);
end
