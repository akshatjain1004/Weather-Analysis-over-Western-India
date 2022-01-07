Q=[];
count=1;
for i=101:119
    for j=i+1:120
        Q(count)= (ACTUALmm(j)-ACTUALmm(i))/(j-i);
        count=count+1;
    end
end
m= median(Q);
disp(m);
y= median(ACTUALmm(101:120));
disp(y);
c= 546.5700 -(7.2169)*(110);
disp(c);
x= linspace(2000,2020);
y= m*x+ c;
plot(x,y);
hold on;
scatter(Dates(100:120),ACTUALmm(100:120));
hold off;
ylabel('Rainfall in mm');
xlabel('Year');