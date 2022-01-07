tp2= ncread('timeAvgTemp.nc','AIRS3STM_006_SurfAirTemp_A');
lat3= ncread('timeAvgTemp.nc','lat');
lon3= ncread('timeAvgTemp.nc','lon');
for i=2:20
lon3(:,i)=lon3(:,1);
end
for i=2:19
lat3(:,i)= lat3(:,1);
end
lat3= lat3';
[~, h]=contourf(longtemp2,lattemp2,tp2,200);
hold on
set(gcf,'Visible','on');
plot(longi,lati,'LineWidth',1,'color','k')
set(h,'EdgeColor','none');
colorbar('FontSize',20)
colormap(jet(256));
set(gca,'FontSize',20);
axis([68 78 20 30])
caxis([298 306])
TowerLat = 26.9;
TowerLon = 75.24;
geoshow(TowerLat, TowerLon, 'Marker','.','MarkerEdgeColor','black')
gtextm('Jodhpur')
%set(colorbar, 'YTick', [0,0.2,0.4,0.6,0.8,1.0,1.2]);
%colormapeditor