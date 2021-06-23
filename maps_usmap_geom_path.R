library(ggplot2)
library(dplyr)

us_map <- map_data("usa")

# If you plot the points for a couple of states, mapping longitude to the x
# aesthetic and latitude to the y aesthetic, you can see that the points
# show the outline of the state

us_map %>%
  ggplot(aes(x = long, y = lat, group = group)) + 
  geom_path()
