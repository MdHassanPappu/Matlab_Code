M=[6 2 -1;2 1 -2; -3 1 1]
b=[3 ;3;-6]
A=[M b]
n=3
for j=1:n-1
    for i=j+1:n
        m=A(i,j)/A(j,j)
        A(i,:)=A(i,:)-m*A(j,:)
    end 
end 

Aug=A
b=A(:,end)
x(n)=b(n)/A(n,n)
for i=n-1:-1:1
    sum=b(i);
     
    for j=i+1:n
        sum=sum-A(i,j)*x(j)
    end 
    x(i)=sum/A(i,i)
end 
