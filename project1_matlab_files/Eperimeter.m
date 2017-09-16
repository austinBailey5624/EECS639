function [C_inner,C_outer] = Eperimeter(a,b,n)
symsum(  sqrt( (a*cos(2*pi(i-1)/n)).^2 + (b*sin(2*pi(i-1).^2 ), i, 0, n)