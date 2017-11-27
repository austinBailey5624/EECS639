%function placeholder = Fractal(argument)
%colormap = blanks(150,150);
%colormap = reshape(blanks(22500),150,150);
colormap = blanks(22500); %char array for colors
k = 1; %just a counter
z = zeros(1, 22500); %complex points


x=linspace(.15,.55,150);
y=linspace(-.15,.15,150);

for i=1:150
    for j=1:150
       z(k) =  complex(x(i), y(j));
       colormap(k) = Newton(z(k)); %using Newton's method to fill colormap
       k = k+1;
    end
end

%we should be printing out a circle of the specific color at z(i) but we
%are not working properly.
for i=1:22500
    if strcmp(colormap(i),'y')
        plot(z(i), 'yo');
    end
    if strcmp(colormap(i),'r')
        plot(z(i), 'ro');
    end
    if strcmp(colormap(i),'b')
        plot(z(i), 'bo');
    end
    if strcmp(colormap(i),'g')
        plot(z(i), 'go');
    end
    if strcmp(colormap(i),'k')
        plot(z(i), 'ko');
    end
end
 
