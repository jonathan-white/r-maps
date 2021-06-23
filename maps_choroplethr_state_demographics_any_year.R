library(choroplethr)

data(df_state_demographics)

df_2010 = get_state_demographics(2019)

# examine the 2013, 5-year state percent hispanic estimates as a boxplot and choropleth

# the boxplot shows the distribution
#boxplot(df_state_demographics$percent_white)



# the choropleth map shows the location of the values
# first set the 'value' column to be the column we want to render
df_2010$value = df_2010$per_capita_income
state_choropleth(df_2010)