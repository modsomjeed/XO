function playX()
O =[];X =[];play_game=1;t=1;surplus=1:9;
while play_game
    if(t==1)
        displayOX([],[]);
    else
        displayOX(O,X);
        r=checkBelongsTo(O,X,3);
        if(r(5))
            noticeficationResult(-1);
            break;
        end
    end  
 
     valid_selecting = 1;
        while valid_selecting
            reply = input('Turn X: ');
            if (isempty(reply)||reply==' '||reply<=0||reply>9)
                continue;
            end
            for i=1:length(surplus)
                if(reply==surplus(i))
                    valid_selecting=0;
                    break;
                end
            end
        end
        X=[X,reply];
        surplus=surplus(surplus~=reply);
   
        r=checkBelongsTo(X,O,3);
        if(r(5))
            clc; displayOX(O,X)
            noticeficationResult(1);
            break;
        end
        if(t==5)
            clc; displayOX(O,X)
            noticeficationResult(0);
            break;
        end
            index=turnO(surplus,O,X,'X');
            O=[O,surplus(index)]; 
            surplus=surplus(surplus~=surplus(index));
            t=t+1;
   
      
    clc;
end
