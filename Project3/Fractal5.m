%function placeholder = Fractal(argument)
%colormap = blanks(150,150);
%colormap = reshape(blanks(22500),150,150);
colormap = blanks(22500); %char array for colors
k = 1; %just a counter
z = zeros(1, 22500); %complex points


x=linspace(-20,20,150);
y=linspace(-20,20,150);

for i=1:150
    for j=1:150
       z(k) =  complex(x(i), y(j));
       colormap(k) = Newton5(z(k)); %using Newton's method to fill colormap
       k = k+1;
    end
end

for i=1:22500 %drawing the actual fractal
    plot(z(i), 'color', colormap(i), 'marker', '.');
    hold on;
end


%plot(z, 'color', colormap(i), 'marker', '.');