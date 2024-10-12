%% newton forword method .  
   

% Create the x values
x = 1:2:20;

% Compute the y values by applying the function and subtracting the biases
y_actual= funct(x) ;

% Generate random biases
biases = (0.2 - (-0.2)) .* rand(1, 10 );

y=y_actual- biases;


 
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
 
 y_prediction=[ ]
 p=input('Enter the interpolated value : ') 
 for k=1:length(p)
    
         u=(p(k)-x(1))/h; 
         sum=b(1); 
         term=1; 
     for t=2:n 
        l=u-(t-2); 
        term=(term*l)/(t-1); 
        sum=sum+(term*b(t)); 
     end  
     y_prediction=[ y_prediction,sum ]
  
 end 
    
 plot(x, y, 'b-o', 'LineWidth', 2, 'MarkerSize', 8)
 hold on 
 plot(p,y_prediction,'ro', 'LineWidth', 2, 'MarkerSize', 8)
 hold off
