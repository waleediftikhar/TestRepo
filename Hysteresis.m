
N = 20;

Sw_HYS = zeros(N,1);
ia_HYS = zeros(N,1);
vab_HYS = zeros(N,1);
Iin_HYS = zeros(N,1);

f = zeros(N,1);
for n = 1 : N
    fsw = n * 2e3;
    f(n) = fsw;
    ts = 1e-8;    
    r = 3;
    
    sim('elec_bipolar_npn_hysresis');
    Sw_HYS(n) = loss_hys;
    ia_HYS(n) = ia_hys(length(ia_hys-1),:);
    vab_HYS(n) = vab_hys(length(vab_hys-1),:);
    Iin_HYS(n) = I_in_hys;
end

plot(f,Sw_HYS)

