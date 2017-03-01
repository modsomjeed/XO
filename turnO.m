

function index=turnO(surplus,O,X,first)
Oi=100;SO=0;SX=0;
precheckO=checkBelongsTo(O,X,2);
    for i=1:length(surplus)
        m=ceil(surplus(i)/3);
        n=mod(surplus(i),3);
        if(n==0)
            n=3;
        end
        if(precheckO(1)==m)
            index=i;
            return;
        elseif(precheckO(2)==n)
            index=i;
            return;
        elseif(precheckO(3)==1&&m==n)
            index=i;
            return;
        elseif(precheckO(4)==1&&m+n==4)
            index=i;
            return;
        end
        
    end
precheckX=checkBelongsTo(X,O,2);

    for i=1:length(surplus)
        m=ceil(surplus(i)/3);
        n=mod(surplus(i),3);
        if(n==0)
            n=3;
        end
        if(precheckX(1)==m)
            index=i;
            return;
        elseif(precheckX(2)==n)
            index=i;
            return;
        elseif(precheckX(3)==1&&m==n)
            index=i;
            return;
        elseif(precheckX(4)==1&&m+n==4)
            index=i;
            return;
        end
        
    end

for i=1:length(surplus)
    [tmp,tSO,tSX]=evalOX(sort([O,surplus(i)]),X);
    if(tmp<Oi)
        Oi=tmp;
        SO=tSO;
        SX=tSX;
        index=i;
    elseif(Oi==tmp)
        if(tSO>SO&&first=='O')
            SO=tSO;
            SX=tSX;
            index=i;
        elseif(tSX<SX&&first=='X')
            SO=tSO;
            SX=tSX;
            index=i;
        elseif(tSO==SO)
            if(tSX<SX)
            SO=tSO;
            SX=tSX;
            index=i;
            end
        end
    end
end