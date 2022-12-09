// Respuesta de 1er orden
s = %s;
G1 = 1/(2*s+1);
G2 = 0.2/(s+0.2);
G3 = 0.2/(2*s+0.2);
G1 = syslin('c1',G1); 
G2 = syslin('c2',G2);
G3 = syslin('c3',G3);
t = 0:0.1:50;
c1 = csim('step',t,G1);
c2 = csim('step',t,G2);
c3 = csim('step',t,G3);
plot(t,c1,t,c2,t,c3,'LineWidth',2);
xlabel('t');
xlabel('c(t)');
title('Analisis de la respuesta 1er orden');
xgrid;
legend('G1 = 1/(2*s+1)','G2 = 0.2/(s+0.2)','G3 = 0.2/(2*s+0.2')
