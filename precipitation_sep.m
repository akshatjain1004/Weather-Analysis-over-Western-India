rfSep= [];
for i=1:39
    rfSep(i)= rf((i-1)*12 +8);
end
plot(Dates(82:120),rfSep);
yyaxis left
plot(Dates(82:120),sepm(82:120)/31);
ylabel('September annual rainfall rainfall per day in mm/day');
xlabel('year')
yyaxis right
plot(Dates(82:120),rfSep);
ylabel('Model data');