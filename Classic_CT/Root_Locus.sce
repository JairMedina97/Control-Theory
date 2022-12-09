s = %s;
K = 1;
G = syslin('c',K,(s*(s+3)*(s+8.5)));
evans(G)
mtlb_axis([-5 1, -5 5])

sgrid([0.1:0.1:0.9],[0.5:0.5:4],'red')
xgrid

[Kc,s] = kpure(G)
[Kp,s] = krac2(G)

// Kc = 293.25,    K = 50,  Kp = 15.926853,   K = 4     
