﻿Vi = 3;
C1 = 100*(10**(-9));
C2 = 100*(10**(-9));
f= 30000;
R1 = 56;
R2 = 56;
ZC1 = -j * (1/(2*pi*f*C1));
ZC2 = -j * (1/(2*pi*f*C2));
Z2 = ZC2 + R2;
rho2 = abs(Z2);
delta2 = radtodeg(acos(R2/rho2));
num = (R1*rho2);
den = (R1)+(Z2);
rho1 = abs(den);
delta1 = radtodeg(angle(den));
polarNum = (num)/(rho1);
polarDen = -((delta2)+(delta1));
polarSomaABS = "Valor absoluto da Impedância Total"
polarSomaABS = abs(ZC1)+(polarNum)
polarSomaAngle = "Valor do ângulo da Impedância Total"
polarSomaAngle = radtodeg(angle(ZC1))+(polarDen)
IT = "Corrente total do circuito"
IT = (Vi/polarSomaABS)
I1 = "Corrente na malha 1"
function I1 = f(x)
I1 = C1*(int(Vi*x,0,x))*((ZC1+R1)/R1);
IR1 = "Corrente no resistor 1"
IR1 = I1*(ZC1/(ZC1+R1))
VR1 = "Tensão no resistor R1"
VR1 = I1*R1
I2 = "Corrente na malha 2"
I2 = C2*int(VR1*x,0,x)*((ZC2+R2)/R2);
It = I1+I2;
plot(x,It)