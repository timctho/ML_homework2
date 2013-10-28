Data = dlmread('hw2_train.dat');
Datatest = dlmread('hw2_test.dat');

for i=1:9
    Test(1,i) = {[Datatest(:,i) Datatest(:,10)]};
    Train(1,i) = {[Data(:,i) Data(:,10)]};
    ThetaCandidate = Candidate(Train{1,i});
    
    [a,b,c] = E_in(Train{1,i},ThetaCandidate);
    answer(i,1:3) = [a b c];
    answer(i,4) = i;
    
      
end

answer = sortrows(answer);
E_in = 0;


    for j=1:length(Test{1,4})
        if(Test{1,4}(j,1)<answer(1,2))
            E_in = E_in + (-answer(1,3)~=Test{1,4}(j,2));
        else
            E_in = E_in + (answer(1,3)~=Test{1,4}(j,2));
        
        end
        
    end
    
    

fprintf('%f',E_in/1000);

