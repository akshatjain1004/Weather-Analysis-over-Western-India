d4= readmatrix('Long_Lat_World.csv');
longi= d4(1:28474);
lati= d4(28475:56948);

tp3= ncread('airTemp80.nc','M2TMNXFLX_5_12_4_TLML');
lat3= ncread('airTemp80.nc','lat');
lon3= ncread('airTemp80.nc','lon');

for i=2:21
lon3(:,i)=lon3(:,1);
end
for i=2:16
lat3(:,i)= lat3(:,1);
end
lat3= lat3';
[~, h]=contourf(lon3,lat3,tp3,200);
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