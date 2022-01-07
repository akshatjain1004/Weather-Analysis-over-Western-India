Q=[];
count=1;
for i=1:119
    for j=i+1:120
        Q(count)= (ACTUALmm(j)-ACTUALmm(i))/(j-i);
        count=count+1;
    end
end
m= median(Q);
disp(m);
y= median(ACTUALmm);
disp(y);
c= 558.57 -(0.4402)*(1960);
disp(558.57 -(0.4402)*(1960));
x= linspace(1900,2020);
y= m*x+ c;
plot(x,y);
hold on;
scatter(Dates,ACTUALmm);
hold off;
ylabel('Rainfall in mm');
xlabel('Year');