Q=[];
count=1;
for i=81:119
    for j=i+1:120
        Q(count)= (ACTUALmm(j)-ACTUALmm(i))/(j-i);
        count=count+1;
    end
end
m= median(Q);
disp(m);
y= median(ACTUALmm(81:120));
disp(y);
c= 563.1350 -(0.2069)*(2000);
disp(c);
x= linspace(1980,2020);
y= m*x+ c;
plot(x,y);
hold on;
scatter(Dates(80:120),ACTUALmm(80:120));
hold off;
ylabel('Rainfall in mm');
xlabel('Year');