function result=checkBelongsTo(A,B,c)
result=[0,0,0,0,0];H=[1,1,1;0,0,0];V=[1,1,1;0,0,0];L=[1;0];R=[1;0];
for i=1:length(B)
    m=ceil(B(i)/3);
    n=mod(B(i),3);
    if(n==0)
        n=3;
    end
    H(1,m)=0;
    V(1,n)=0;
    if(m==n)
        L(1,1)=0;
    end
    if(m+n==4)
        R(1,1)=0;
    end
    
end

for i=1:length(A)
    m=ceil(A(i)/3);
    n=mod(A(i),3);
    if(n==0)
        n=3;
    end
    % check H
    if(H(1,m))
        H(2,m)=H(2,m)+1;
        if(H(2,m)==c)
            result(1)=m;
            result(5)=1;
            return;
        end
    end
    % check V
    if(V(1,n))
        V(2,n)=V(2,n)+1;
        if(V(2,n)==c)
            result(2)=n;
            result(5)=1;
            return;
        end
    end
    % check L
     if(m==n)
        if(L(1,1))
            L(2,1)=L(2,1)+1;
            if(L(2,1)==c)
                result(3)=1;
                result(5)=1;
                return;
            end
        end
     end
    % check R
    if(m+n==4)
        if(R(1,1))
            R(2,1)=R(2,1)+1;
            if(R(2,1)==c)
                result(4)=1;
                result(5)=1;
                return;
            end
        end
    end
    
end

