library(ggplot2)
library(dplyr)

us_map <- map_data("state")

# South Region

us_map %>%
  filter(region %in% c("kentucky","west virginia","texas","north carolina",
                       "south carolina","georgia","alabama","louisiana",
                       "mississippi","arkansas","oklahoma","tennessee",
                       "virginia","maryland","delaware")) %>%
  ggplot(aes(x = long, y = lat, group = group)) + 
  geom_polygon(fill = "red", color = "black") +
  theme_void()

