d4= readmatrix('Long_Lat_World.csv');
longi= d4(1:28474);
lati= d4(28475:56948);

tp5= ncread('airTemp90.nc','M2TMNXFLX_5_12_4_TLML');
lat5= ncread('airTemp90.nc','lat');
lon5= ncread('airTemp90.nc','lon');

for i=2:21
lon5(:,i)=lon5(:,1);
end
for i=2:16
lat5(:,i)= lat5(:,1);
end
lat5= lat5';
[~, h]=contourf(lon5,lat5,tp5,200);
hold on
set(gcf,'Visible','on');
plot(longi,lati,'LineWidth',1,'color','k')
set(h,'EdgeColor','none');
colorbar('FontSize',20)
colormap(jet(256));
set(gca,'FontSize',20);
axis([68 78 20 30])
caxis([298 302])
TowerLat = 26.9;
TowerLon = 75.24;
%geoshow(TowerLat, TowerLon, 'Marker','.','MarkerEdgeColor','black')
%gtextm('Jodhpur')
%set(colorbar, 'YTick', [0,0.2,0.4,0.6,0.8,1.0,1.2]);
%colormapeditor