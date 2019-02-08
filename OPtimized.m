
N = 20;

Sw_OPT = zeros(N,1);
ia_OPT = zeros(N,1);
vab_OPT = zeros(N,1);
Iin_OPT = zeros(N,1);


f = zeros(N,1);
for n = 1 : N
    fsw = n * 2e3;
    f(n) = fsw;
    ts = 1e-8;  
    r = 3;
    k = n
    sim('elec_bipolar_npn_optimised');
    Sw_OPT(n) = loss_opt;
    ia_OPT(n) = ia_opt(length(ia_opt-1),:);
    vab_OPT(n) = vab_opt(length(vab_opt-1),:);
    Iin_OPT(n) = I_in_opt;
    
end

 plot(f,Sw_OPT)
 
