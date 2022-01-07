d4= readmatrix('Long_Lat_World.csv');
longi= d4(1:28474);
lati= d4(28475:56948);

pt3= ncread('rain2010.nc','TRMM_3B42_Daily_7_precipitation');
lat7= ncread('rain2010.nc','lat');
lon7= ncread('rain2010.nc','lon');

for i=2:40
lon7(:,i)=lon7(:,1);
end
for i=2:40
lat7(:,i)= lat7(:,1);
end
lat7= lat7';
[~, h]=contourf(lon7,lat7,pt3,200);
hold on
set(gcf,'Visible','on');
plot(longi,lati,'LineWidth',1,'color','k')
set(h,'EdgeColor','none');
colorbar('FontSize',20)
colormap(jet(256));
set(gca,'FontSize',20);
axis([68 78 20 30])
caxis([0 5])
TowerLat = 26.9;
TowerLon = 75.24;
%geoshow(TowerLat, TowerLon, 'Marker','.','MarkerEdgeColor','black')
%gtextm('Jodhpur')
%set(colorbar, 'YTick', [0,0.2,0.4,0.6,0.8,1.0,1.2]);
%colormapeditor