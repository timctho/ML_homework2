Data = dlmread('hw2_train.dat');

for i=1:9
    Train(1,i) = {[Data(:,i) Data(:,10)]};
    ThetaCandidate = Candidate(Train{1,i});
    
    [a,b,c] = E_in(Train{1,i},ThetaCandidate);
    answer(i,1:3) = [a b c];
    answer(i,4) = i;
    
      
end

answer = sortrows(answer);

fprintf('E_in = %2f\n',answer(1,1));
fprintf('Theta = %2f\n',answer(1,2));
fprintf('s = %d\n',answer(1,3));
fprintf('dimension = %d\n',answer(1,4));

