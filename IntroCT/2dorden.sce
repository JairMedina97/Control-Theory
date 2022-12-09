// Respuesta de 1er orden
s = %s;
G1 = 13/(s^2 + 4*s + 13);
G2 = 4/(s^2 + 4*s + 4);
G3 = 9/(s^2 + 9);
G4 = 3/(s^2 + 4*s + 3);

G1 = syslin('c1',G1); 
G2 = syslin('c2',G2);
G3 = syslin('c3',G3);
G4 = syslin('c4',G4);

t = 0:0.1:6;

c1 = csim('step',t,G1);
c2 = csim('step',t,G2);
c3 = csim('step',t,G3);
c4 = csim('step',t,G4);

plot(t,c1,t,c2,t,c3,t,c4,'LineWidth',2);
xlabel('t');
xlabel('c(t)');
title('Analisis de la respuesta 2do orden');
xgrid;
legend('G1 Oscilacion amortiguada','G2 Criticamente amortiguada','G3 sin amortiguamiento', 'G4 Sobreamortiguada')


