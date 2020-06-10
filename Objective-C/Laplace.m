xLaplace = sym('1-(5.6*10**-6/(s+(5.6*10**-6)))');
xInversa = ilaplace(xLaplace);
simplify(xInversa)