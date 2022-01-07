scatter(stAnnual,ACTUALmm(82:120));
ylabel('Rainfall in mm');
xlabel('Soil Temperature in K');
r= corrcoef(stAnnual, ACTUALmm(82:120));
disp(r);