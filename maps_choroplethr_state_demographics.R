library(choroplethr)
data(df_state_demographics)

# examine the 2013, 5-year state percent hispanic estimates as a boxplot and choropleth

# the boxplot shows the distribution
#boxplot(df_state_demographics$percent_white)

# the choropleth map shows the location of the values
# first set the 'value' column to be the column we want to render
df_state_demographics$value = df_state_demographics$per_capita_income
state_choropleth(df_state_demographics)