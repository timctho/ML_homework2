function [E_in_best,Theta_best,s] = E_in(Data,ThetaCandidate)

E_in_best = 0;
Theta_best = 0;

for i=1:length(ThetaCandidate)
    
    E_in_positive = 0;
    E_in_negative = 0;
    
    for j=1:length(Data)
        if(Data(j)<ThetaCandidate(i))
            E_in_positive = E_in_positive + (-1~=Data(j,2));
        else
            E_in_positive = E_in_positive + (1~=Data(j,2));
        end
    end
    
    for j=1:length(Data)
        if(Data(j)<ThetaCandidate(i))
            E_in_negative = E_in_negative + (1~=Data(j,2));
        else
            E_in_negative = E_in_negative + (-1~=Data(j,2));
        end
    end
    
    
    if((E_in_positive<E_in_best)||(E_in_best==0))
        E_in_best = E_in_positive;
        Theta_best = ThetaCandidate(i);
        s = 1;
    end
    
    if(E_in_negative<E_in_best)
        E_in_best = E_in_negative;
        Theta_best = ThetaCandidate(i);
        s = -1;
    end
end

E_in_best = E_in_best/length(Data);

