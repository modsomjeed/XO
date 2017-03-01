function playO()
O =[];X =[];play_game=1;t=1; surplus=1:9;
while play_game
    if(t==1)
        O= randi([1, 9]);
        surplus=surplus(surplus~=O(1));
        
    else
        index=turnO(surplus,O,X,'O');
        O=[O,surplus(index)];
        surplus=surplus(surplus~=surplus(index));
    end
    displayOX(O,X)
    r=checkBelongsTo(O,X,3);
    if(r(5))
        noticeficationResult(-1);
        break;
    end
    if(t==5)
        noticeficationResult(0);
        break;
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
        surplus=surplus(surplus~=reply);
        X =[X,reply];
        t=t+1;
        r=checkBelongsTo(X,O,3);
         if(r(5))
            noticeficationResult(1);
            break;
         end
       
    clc;
end
