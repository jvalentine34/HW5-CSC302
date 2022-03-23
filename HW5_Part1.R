library(mapdata)
library(ggplot2)
library(tidyr)
library(dplyr)

ca <- ggplot2::map_data('state', 'california')
class(ca)
head(ca)

#ggplot(ca, aes(x = long, y = lat, group = group)) +
  #geom_polygon()

ggplot() + geom_polygon(data = ca, aes(x=long, y = lat, group = group)) + 
  coord_fixed(1.3)

gg1 <- ggplot() + 
  geom_polygon(data = ca, aes(x=long, y = lat, group = group), fill = "navy") + 
  coord_fixed(1.3)
gg1

wind_ca = load('/Volumes/GoogleDrive/.shortcut-targets-by-id/1ehWwunuAo7CE1Vk2JYkUnQMmxh5pph3C/DATA/wind_turbines.rda')
head(wind_ca)

gg1 + geom_point(wind_ca, aes(x, y), color="orange") 
