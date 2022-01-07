yyaxis left
scatter(augm(82:120),etAug);
ylabel('Evapotranspiration in August');
xlabel('Annual Rainfall in August')
yyaxis right
plot(augm(82:120),augm(82:120));
r2= corrcoef(augm(82:120),etAug);
disp(r2);