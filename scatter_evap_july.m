yyaxis left
scatter(julym(82:120),etJuly);
ylabel('Evapotranspiration in July');
xlabel('Annual Rainfall in July')
yyaxis right
plot(julym(82:120),julym(82:120));
r2= corrcoef(julym(82:120),etJuly);
disp(r2);