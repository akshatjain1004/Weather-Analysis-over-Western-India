d1= readmatrix('csvFile441.csv');
Dates= d1(1:120);
Dates= Dates';
ACTUALmm= d1(241:360);
ACTUALmm= ACTUALmm';
NORMALmm= d1(121:240);
NORMALmm= NORMALmm';
plot(Dates,ACTUALmm, Dates, NORMALmm);

