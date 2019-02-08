 
N = 20;

Sw_SVM = zeros(N,1);
Ia_SVM = zeros(N,1);
vab_SVM = zeros(N,1);
Iin_SVM = zeros(N,1);
% ia_s = zeros(N,N);

f = zeros(N,1);
for n = 1 : N
    fsw = n * 2e3;
    f(n) = fsw;
    ts = 1e-8;  
    r = 3;
    k = n
    
    
    sim('elec_bipolar_npn_svm');
    Sw_SVM(n) = loss_svm; 
    Ia_SVM(n) = ia_svm(length(ia_svm-1),:);
    vab_SVM(n) = vab_svm(length(vab_svm-1),:);
    Iin_SVM(n) = I_in_svm;
    ia_s = ia;
    
end

plot(f,Sw_SVM)

