yyaxis left
scatter(sepm(82:120),etSep);
ylabel('Evapotranspiration in September');
xlabel('Annual Rainfall in September')
yyaxis right
plot(sepm(82:120),sepm(82:120));
r= corrcoef(sepm(82:120),etSep);
disp(r);