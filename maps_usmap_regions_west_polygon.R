library(ggplot2)
library(dplyr)

us_map <- map_data("state")

# West Region

us_map %>%
  filter(region %in% c("washington","oregon","montana","idaho",
                       "wyoming","california","nevada","new mexico",
                       "arizona","colorado","utah")) %>%
  ggplot(aes(x = long, y = lat, group = group)) + 
  geom_polygon(fill = "lightgreen", color = "black") +
  theme_void()
