library(ggplot2)
library(dplyr)

us_map <- map_data("state")

# Midwest Region

us_map %>%
  filter(region %in% c("ohio","michigan","indiana","wisconsin", 
                       "kentucky","illinois","minnesota","north dakota",
                       "south dakota","iowa","missouri","kansas","nebraska")) %>%
  ggplot(aes(x = long, y = lat, group = group)) + 
  geom_polygon(fill = "lightblue", color = "black") +
  theme_void()

