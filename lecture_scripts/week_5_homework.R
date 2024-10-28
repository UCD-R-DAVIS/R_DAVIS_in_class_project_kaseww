library(tidyverse)

surveys <- read.csv("data/portal_data_joined.csv")
str(surveys)

##createion of new data frame called surveys_wide
surveys_wide <- surveys %>% 
  filter(!is.na(hindfoot_length)) %>% ##removing any NA observations within hindfood_lenght
  group_by(genus, plot_type) %>% ##grouping by the desired columns of genus and plot type
  summarise(mean_hindfoot = mean(hindfoot_length)) %>% ##getting the mean of the hindfoot_length 
  pivot_wider(names_from = plot_type, values_from = mean_hindfoot) %>% ##increasing the number of columns by using the 4 values/names of plot types 
  arrange(Control) ##arranges order by observation in control column

#looking at summary statistics of weight in the surveys dataframe
summary(surveys$weight)

#creating new variable stating the size of the cat small, medium, or large using case_when function
surveys %>%
  mutate(weight_cat = case_when(weight <= 20 ~ "small",
    weight > 20.00 & weight < 48.00 ~ "medium",
  weight >= 48 ~ "large")) 

##creating new variable stating the size of the cat small, medium, or large using ifelse function

surveys %>%
  mutate(weight_cat = ifelse(weight <= 20.00, "small", ifelse(weight > 20.00 & weight < 48.00, "medium", "large")))
