function result = Newton3()
%initial guess 
x = zeros(10);
xtemp = zeros(10);
for i=1:10
    x(i)=i;
    xtemp(i)=i;
end
%% 

iterator=1;
%.001 is our arbitrary tolerance
%while(iterator<41 && checkXTemp(xtemp)==0)    
while((iterator<41) && (checkXtemp(xtemp)==1))
    %performing newtons method
    for i=1:10
        xtemp(i) = (100*(x(i)*x(i)-x(i+1)*x(i+1))*(x(i)*x(i)-x(i+1)*x(i+1))+(x(i)-1)*(x(i)-1))/(200*(x(i)*x(i)-x(i+1))*2*(x(i))+2*(x(i)-1));
        
    end
    x=x-xtemp;
    
%    xtemp = (2*x*x + 3*y*y)/(4*x);
%    ytemp = (2*x*x + 3*y*y)/(6*y);
    
%    x=x-xtemp;
%    y=y-ytemp;
iterator=iterator+1;
end
result=x;
return;

function result2 = checkXtemp(xtemp)
result2=1;
for i=1:10
    if(xtemp(i)>.001)
        result2=0;%return false
        return;
    end
end