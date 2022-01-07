etSep= [];
for i=1:39
    etSep(i)= et((i-1)*12 +7);
end
plot(Dates(82:120),etSep);
yyaxis left
plot(Dates(82:120),sepm(82:120));
ylabel('September annual rainfall rainfall in mm');
xlabel('year')
yyaxis right
plot(Dates(82:120),etSep);
ylabel('Evapotranspiration in September');