function Eta = MakeEllipse(Kappa)
phi = gimmiePhi(Kappa);
c=cos(phi)
s=sin(phi)
%%Assigns values for Aprime Cprime Dprime and Eprime for use later
Aprime = Kappa.A*c*c-Kappa.B*c*s+Kappa.C*s*s;
Cprime = Kappa.A*s*s+Kappa.B*s*c+Kappa.C*c*c;
Dprime = Kappa.D*c - Kappa*E*s;
Eprime = Kappa.D*s + Kappa.E*c;
%%checks that A' is > 0
if(Aprime<=0)
    Eta = [];
end
%%checks that C' is > 0
if(Cprime<=0)
    Eta = [];
end
%%checks that Fbar is >0
if(-Kappa.F+(Dprime.^2/4*Aprime)+(Eprime.^2/4*Cprime)<=0)
    Eta =[];
end
