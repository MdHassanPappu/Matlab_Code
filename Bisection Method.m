f=input('Declare a function : ') % f= @(x) 2*x+sin(x)-cos(x) & solution x=0.318...
a=input('Enter intial value  : ');
b=input('Enter terminated  value : ');
n=input('Number of iteration : ');
e=input('Number of decimal of accurrcey');
if f(a)*f(b)<0

        for i=1:n
              c=(a+b)/2;

             if abs(a-b)<e
                   break
             end

            if f(a)*f(c)<0
                 b=c;
             else
                 a=c;
            end
        end

    fprintf(' The approximate Root is : %f ',c);
 else
    fprintf("Functional value of a & b are not opposite sign.");
end
