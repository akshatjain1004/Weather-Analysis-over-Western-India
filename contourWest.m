rf= ncread('timeAverageWest.nc','M2TMNXINT_5_12_4_PRECLS');
lat2= ncread('timeAverageWest.nc','lat');
lon2= ncread('timeAverageWest.nc','lon');
for i=2:20
lon2(:,i)=lon2(:,1);
end
for i=2:19
lat2(:,i)= lat2(:,1);
end
lat2= lat2';
[~, h]=contourf(lontemp,lattemp,rf,200);
hold on
set(gcf,'Visible','on');
plot(longi,lati,'LineWidth',1,'color','k')
set(h,'EdgeColor','none');
colorbar('FontSize',20)
colormap(jet(256));
set(gca,'FontSize',20);
axis([68 78 20 30])
caxis([0.0000000001 0.00004])
%set(colorbar, 'YTick', [0,0.2,0.4,0.6,0.8,1.0,1.2]);
%colormapeditor