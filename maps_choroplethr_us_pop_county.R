library(acs)
library(stringr)
library(XML)
library(choroplethr)
library(choroplethrMaps)
data(df_pop_county)

#county_choropleth(df_pop_county)

# If you want to only plot a single state, you can use the state_zoom argument

county_choropleth(df_pop_county, state_zoom = c("ohio"))