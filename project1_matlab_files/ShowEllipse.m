function ShowEllipse(Eta)
%center = [Eta.h, Eta.k];
%verticalStrech = sqrt(Eta.a);
%$horizStrech = Eta.b;
%Plots a hundred data points in the x direction
%x = Eta.h-horizStrech:horizStrech/50:Eta.h+horizStrech;
%y=(sqrt(((x-Eta.h)/(Eta.a*Eta.b)).^2))+Eta.k;
%{
t=linspace(0,2*pi)
x=Eta.a*cos(t);
y=Eta.b*sin(t);
plot(x,y);
%}
x=(Eta.h-Eta.b:Eta.b/50:Eta.h+Eta.b);
y =b*sqrt(  (x-Eta.h(Eta.a))  )+K
y2=
plot(x,y,'color','r'); hold on;
plot(x,