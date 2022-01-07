yyaxis left
plot(year,ACTUALmm(80:120))
ylabel('Annual Rainfall in Jaipur in mm');
xlabel('Year')
yyaxis right
plot(year,west-ocean);
ylabel('Temperature Difference')
ave2=[];
for i=1:4
    sum=0;
    for j=1:10
        sum = sum + ACTUALmm(80+ (i-1)*10 +j);
    end
    for j=1:10
        ave2((i-1)*10+j)=sum;
    end
end
yyaxis left
plot(year(1:40),ave2)
ylabel('Decadal average of Annual Rainfall in Jaipur');
xlabel('Year')
yyaxis right
plot(year(1:40),dif2);
ylabel('Decadal average of Temperature Difference')
r= corrcoef(ACTUALmm(80:120),west-ocean);
disp(r);