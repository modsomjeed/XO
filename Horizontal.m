function H=Horizontal(m,S)

for j=1:length(S)
    ms=ceil(S(j)/3);
    if(ms==m)
        H=0;
        return;
    end
end
H=1;