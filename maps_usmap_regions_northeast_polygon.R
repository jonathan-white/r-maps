library(ggplot2)
library(dplyr)

us_map <- map_data("state")

# Northeast Region

us_map %>%
  filter(region %in% c("maine","new hampshire","vermont","rhode island",
                       "new york","massachusetts", "connecticut","new jersey",
                       "pennsylvania")) %>%
  ggplot(aes(x = long, y = lat, group = group)) + 
  geom_polygon(fill = "purple", color = "black") +
  theme_void()

