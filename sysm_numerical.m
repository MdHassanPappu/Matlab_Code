syms x y z

eq_1= 2*x-y+0*z-7
eq_2= -x+2*y-z-1
eq_3=0*x -y+2*z-1; 

eq_x= inline(solve(eq_1,x) )
eq_y= inline(solve(eq_2,y))
eq_z= inline(solve(eq_3,z))

x=0
y=0
z=0 

for i=1:13
    x=eq_x(y) 
    y=eq_y(x,z)
    z=eq_z(y) 
end 
