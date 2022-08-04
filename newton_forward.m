%% newton forword method . 

x=[ 1 2 3 4 5 ]     % the independent values are. 
y=[-1 0 3 8 15 ]  % the dependent values are  .  
h=x(2)-x(1)     ;    % difference between two  point . 
n=length(y)   ;
a=zeros(n,n)   ;   % creating a zeros matrix for finding forward difference .
a(:,1)=y     ;          % replacing first coloum by the values of y . 


b(1)=y(1)      ;     
for j=2:n   % Loop start from 2 beacuse we will  place this diff  value in 2 coloum.  
    for i=j:n  
        a(i,j)=a(i,j-1)-a(i-1,j-1)  ; % finding difference 
        
        if i==j
            b(j)=a(i,j)  ;  % taking main diagonal values . 
        end
         
    end 
end
 



syms z
a=z;
u=(a-x(1))/h;
sum=b(1);
term=1;
for t=2:n
    l=u-(t-2);
    term=(term*l)/(t-1);
    sum=sum+(term*b(t));
end 



syms x 
eq= subs(simplify(sum),z,x);
y=inline(eq) 
fprintf('The equcation is :  y= %s \n ',string(eq))

x=input('Enter the interpolated value : ') 
y=y(x) ; 
fprintf(' The  predicted value of y    = %.3f at %.3f  \n ', y, x  )



