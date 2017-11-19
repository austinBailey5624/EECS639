%function placeholder = Fractal(argument)
%colormap = blanks(150,150);
%colormap = reshape(blanks(22500),150,150);
colormap = blanks(22500);
%for i = .15:(1/375):.55
%    for j=-.15:.002:.15
%        colormapi(j) = 

x=linspace(.15,.55,150);
y=linspace(-.15,.15,150);

for i=1:150
    for j=1:150
        z = complex(x(i), y(j));
%        colormap(i,j) = Newton(z);
        colormap((i-1)*150+(j))=Newton(z);
    end 
end
x2 = 1:150;

disp(colormap);

%ColOrd = get(gca, 'ColorOrder');

%[m,n] = size(ColOrd);
%disp(n);
%disp(m);
%col = ColOrd(colormap);
%scatter(x,y,colormap(x2,x2),'filled');
%scatter(x,y,.02,colormap,'filled');
%plot(x,y,colormap(x2,x2));
%plot(x,y,'Color',col);
%placeholder=argument