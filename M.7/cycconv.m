function w = cycconv (x,u)
% faltung: führt die zyklische Faltung zwischen den Signalen x und u aus

kx=length(x)-1; ku = length(u)-1; kw=kx+ku;
w=zeros(1,kw+1);

for k=1:kw
    w(k)=0;
    for i=1:min(kx,ku)+1
            w(k)=w(k) + x(mod(i,ku)+1) * u(mod(k-i+1,ku)+1);
    end
end



end
