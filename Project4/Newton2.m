function result = Newton2()
x = -1.2; %initial answer to be updated
y = 1; %checks difference between previous and current
xtemp=1;
ytemp=1;

iterator=1;
%.001 is our arbitrary tolerance
while(iterator<41 && xtemp>.001 && ytemp > .001)    
 
    %performing newtons method

    xtemp = ((1-x)*(1-x)+100*(y-x*x)*(y-x*x))/(2*(200*x*x*x-200*x*y+x-1));
    ytemp = ((1-x)*(1-x)+100*(y-x*x)*(y-x*x))/(200*(y-x*x));
    
    x=x-xtemp;
    y=y-ytemp;
    iterator=iterator+1;
end
result{1}=x;
result{2}=y;
return;
