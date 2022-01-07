yyaxis left
plot(Dates(82:120),non_rainy(82:120));
ylabel('Rainfall in non-rainy months from WRIS data mm');
xlabel('year')
yyaxis right
plot(Dates(82:120),etNonRainy);
ylabel('Evapotranspiration in non-rainy months from FLDAS');
r= corrcoef(etNonRainy,non_rainy(82:120));
disp(r);