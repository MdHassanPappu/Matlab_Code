A=[ 2 1 0   ; -1 2 -1 ;0 -1 2   ] 
 B=[ 7 7 1] 
 
 i=sort(abs(A(1,:)))
 j=sort(abs(A(2,:)))
 k=sort(abs(A(3,:)))
 
 if i(:,end)>=(i(:,1)+i(:,2)) & j(:,end)>=(j(:,1)+j(:,2)) &  k(:,end)>=(k(:,1)+k(:,2)) 
    
     syms x y z 
     
            A=[ A B' ] 
            v=[ x y z -1 ] 
     
            eq_1=sum(A(1,:).*v)
            eq_2=sum(A(2,:).*v)
            eq_3=sum(A(3,:).*v)

             eq_x= inline(solve(eq_1,x))
             eq_y= inline(solve(eq_2,y))
             eq_z= inline(solve(eq_3,z))

                      x=0
                      y=0
                      z=0 

            for i=1:100
                X=eq_x(y) 
                Y=eq_y(x,z)
                Z=eq_z(y) 

                x=X
                y=Y
                z=Z

            end 
     
     
 else
     disp('This method will not lead the solution into a specfic values  ' ) 
 end 
 s=[ x y z ]
 r_s=rref(A)