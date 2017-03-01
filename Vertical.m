function v=Vertical(n,S)

for j=S
    ns=mod(j,3);
    if(ns==0)
        ns=3;
    end
    if(n==ns)
        v=0;
        return;
    end
   
end
v=1;