rfAug= [];
for i=1:39
    rfAug(i)= rf((i-1)*12 +8);
end
plot(Dates(82:120),rfAug);
yyaxis left
plot(Dates(82:120),augm(82:120)/31);
ylabel('August annual rainfall rainfall per day in mm/day');
xlabel('year')
yyaxis right
plot(Dates(82:120),rfAug);
ylabel('Model data');