stSep= [];
for i=1:39
    stSep(i)= st((i-1)*12 +9);
end
plot(Dates(82:120),stSep);
yyaxis left
plot(Dates(82:120),sepm(82:120));
ylabel('September annual rainfall rainfall in mm');
xlabel('year')
yyaxis right
plot(Dates(82:120),stSep);
ylabel('Soil Temperature in September in K');