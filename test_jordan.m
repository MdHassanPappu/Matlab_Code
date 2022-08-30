M=[6 8 -1;2 1 -2; -3 1 1]
b=[3 ;3;-6]
A=[M b]
n=3
for j=1:n
     A(j,:)=A(j,:)/A(j,j)
    for i=1:n
        if j ~=i 
        m=A(i,j)/A(j,j)
        A(i,:)=A(i,:)-m*A(j,:)
        end 
    end 
end 

