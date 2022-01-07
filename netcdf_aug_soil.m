stAug= [];
for i=1:39
    stAug(i)= st((i-1)*12 +8);
end
plot(Dates(82:120),stAug);
yyaxis left
plot(Dates(82:120),augm(82:120));
ylabel('August annual rainfall rainfall in mm');
xlabel('year')
yyaxis right
plot(Dates(82:120),stAug);
ylabel('Soil Temperature in August in K');