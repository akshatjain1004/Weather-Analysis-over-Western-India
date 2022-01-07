etAug= [];
for i=1:39
    etAug(i)= et((i-1)*12 +8);
end
plot(Dates(82:120),etAug);
yyaxis left
plot(Dates(82:120),augm(82:120));
ylabel('August annual rainfall rainfall in mm');
xlabel('year')
yyaxis right
plot(Dates(82:120),etAug);
ylabel('Evapotranspiration in August');