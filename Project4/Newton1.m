function result = Newton1()
x = 1; %initial answer to be updated
y = 1; %checks difference between previous and current
xtemp=1;
ytemp=1;

iterator=1;
%.001 is our arbitrary tolerance
while(iterator<41 && xtemp>.001 && ytemp > .001)    
 
    %performing newtons method

    xtemp = (2*x*x + 3*y*y)/(4*x);
    ytemp = (2*x*x + 3*y*y)/(6*y);
    
    x=x-xtemp;
    y=y-ytemp;
    iterator=iterator+1;
end
result{1}=x;
result{2}=y;
return;
