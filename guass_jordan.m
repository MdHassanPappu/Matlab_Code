M=[6 2 -1;2 1 -2; -3 1 1]
b=[3 ;3;-6]
A=[M b]
for i=1:3
    A(i,:)=A(i,:)/A(i,i)
end
for j=1:3
    if j ~=i
    m=A(j,i) /A(i,i)
    A(j,:)=A(j,:)-m*A(i,:)
    end 
end 