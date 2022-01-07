yyaxis left
scatter(sepm(82:120),stSep);
ylabel('Soil Temperature in September');
xlabel('Annual Rainfall in September')
yyaxis right
plot(sepm(82:120),sepm(82:120));
R3= corrcoef(sepm(82:120),stSep);
disp(R3);