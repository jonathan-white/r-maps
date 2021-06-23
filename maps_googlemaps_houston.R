library(dplyr)
library(ggmap)

register_google("YOUR_KEY")

hdf <- get_map("houston, texas", zoom = 12)
ggmap(hdf)
