
E_in_sum = 0;
E_out_sum = 0;

for round = 1:5000

Data = GenerateData();


ThetaCandidate = Candidate17(Data);

[E_ins,Theta,s] = E_in(Data,ThetaCandidate);

E_in_sum = E_in_sum + E_ins;

E_out_sum = E_out_sum + 1/2*(0.8*abs(Theta)+0.2*(2-Theta));

end

fprintf('\n');
fprintf('Avg E_in  : %3f\n',E_in_sum/5000);
fprintf('Avg E_out : %3f\n',E_out_sum/5000);
    