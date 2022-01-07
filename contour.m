tp= ncread('areaAverage.nc','M2IMNXLFO_5_12_4_TLML');
lat= ncread('areaAverage.nc','lat');
lon= ncread('areaAverage.nc','lon');
for i=2:20
lon(:,i)=lon(:,1);
end
for i=2:19
lat(:,i)= lat(:,1);
end
lat= lat';
[~, h]=contourf(lon,lat,tp,200);
hold on
set(gcf,'Visible','on');
plot(longi,lati,'LineWidth',1,'color','k')
set(h,'EdgeColor','none');
colorbar('FontSize',20)
colormap(jet(256));
set(gca,'FontSize',20);
axis([62 74 0 10])
caxis([299.5 300])
%set(colorbar, 'YTick', [0,0.2,0.4,0.6,0.8,1.0,1.2]);
%colormapeditor