#loading the tidyverse
library(tidyverse)

#loading csv file and making it into an object titled "surveys"
surveys <- read_csv("data/portal_data_joined.csv")

#look at structure of the surveys data object
str(surveys)

#create new data object which is a filtered version showing only entries with weights greater than 30 and less 60
survey.subset <- surveys %>% filter(weight > 30 & weight < 60)

#printing first 6 rows of the subsetted data
print(n=6, survey.subset)

#creating new tibble called biggest_critters in which NAs are removed from weight column, data is grouped by species and sex
#a new column is created replacing weight by showing the max weights and then arranged by in descending order
biggest_critters <- surveys %>% 
  filter(!is.na(weight)) %>% 
  group_by(species, sex)  %>% 
  summarize(weight_max = max(weight)) %>%
  arrange(-weight_max)  

#filtering by weight, including NA values, and grouping by various columns to find where the most NA values
# are located and arranging them in descending order
surveys %>% 
  filter(is.na(weight)) %>% 
  group_by(species) %>% 
  tally() %>% 
  arrange(desc(n))

surveys %>%
  filter(is.na(weight)) %>%
  group_by(taxa) %>%
  tally() %>%
  arrange(desc(n))

surveys %>%
  filter(is.na(weight)) %>%
  group_by(sex) %>%
  tally() %>%
  arrange(desc(n))

#there are a lot of NA values concentrated in the sex categorgy

#creating a new dataframe, removing NAs, with an additional column (avg_weight) showing the average weight

surveys_avg_weight <- surveys %>% 
  filter(!is.na(weight)) %>% 
  group_by(species_id, sex) %>% 
  mutate(avg_weight = mean(weight)) %>% 
  select(species_id, sex, weight, avg_weight)

#creating a new column with mutate, above_average. this lists whether this statement is true or false
#based on statement of weight is greater than the average weight 
surveys_avg_weight <- surveys_avg_weight %>% 
  mutate(above_average = weight > avg_weight)
