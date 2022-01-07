junem=[];
for i=1:120
    junem(i)= ACTUALmm1(6+12*(i-1));
end
plot(Dates,junem);
junedecadal=[];
for i=1:12
    for j=1:10
        junedecadal(10*(i-1)+j)= mean(augm(1+(i-1)*10:i*10));
    end
end
plot(Dates,junedecadal);
