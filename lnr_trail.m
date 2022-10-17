a=input(' enter any matrix') 
b=input('enter constant')
n=length(b) 
A=[ a b' ]
for j=1:n-1
    for i=j+1:n
        m=(A(i,j)/A(j,j))
        A(i,:)=A(i,:)-m *A(j,:)
    end 
end 