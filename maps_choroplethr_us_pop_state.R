library(ggmap)
library(choroplethr)
library(choroplethrMaps)

register_google("YOUR_KEY")

data(continental_us_states)

# Example Plot 1
data(df_pop_state)

state_choropleth(df_pop_state, 
                 title = "2012 State Population Estimates",
                 num_colors = 1,
                 legend = "Population",
                 zoom = c("california", "oregon", "washington"),
                 reference_map = TRUE)

# Example Plot 2
data(df_pop_state)
df_pop_state$str = ""
for (i in 1:nrow(df_pop_state))
{
  if (df_pop_state[i,"value"] < 10000000)
  {
    df_pop_state[i,"str"] = "< 10M"
  } else {
    df_pop_state[i,"str"] = "> 10M"
  }
}
df_pop_state$value = df_pop_state$str
state_choropleth(df_pop_state, title = "Which states have less than 10M people?")