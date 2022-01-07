
yyaxis left
scatter(julym(82:120),stJuly);
ylabel('Soil Temperature in July');
xlabel('Annual Rainfall in July')
yyaxis right
plot(julym(82:120),julym(82:120));
R1= corrcoef(julym(82:120),stJuly);
disp(R1);