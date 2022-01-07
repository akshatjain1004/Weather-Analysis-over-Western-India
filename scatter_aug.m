
yyaxis left
scatter(augm(82:120),stAug);
ylabel('Soil Temperature in August');
xlabel('Annual Rainfall in August')
yyaxis right
plot(augm(82:120),augm(82:120));
R2= corrcoef(augm(82:120),stAug);
disp(R2);
