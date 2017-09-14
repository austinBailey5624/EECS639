function New_Kappa = RotateConic(Kappa,phi)
c = cos(phi);
s = sin(phi);
x = Kappa.D;
y = -Kappa.E;
aa = (Kappa.A)*(x*c+y*s)^(2);
bb = (Kappa.B)*(x*c+y*s)*(-s*x+c*y);
cc = (Kappa.C)*(-s*x+c*y)^2;
dd = (Kappa.D)*(x*c+y*s);
ee = (Kappa.E)*(-s*x+c*y);
ff = Kappa.F;
New_Kappa = MakeConic(aa,bb,cc,dd,ee,ff);
end