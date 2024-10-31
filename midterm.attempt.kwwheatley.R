#loading dataframe from the CSV file
tyler <- read.csv("https://raw.githubusercontent.com/ucd-cepb/R-DAVIS/refs/heads/main/data/tyler_activity_laps_10-24.csv")

#loading tidyverse
library(tidyverse)

#looking at the structure of the dataframe
str(tyler)

#filtering for only "running" in the sport column
tyler <- filter(tyler, sport == 'running')

#selecting only observations that are <10 and >5 minutes/mile and greater than 1 min total elapsed time 
Tyler1 = tyler[-which(tyler$minutes_per_mile>10 | tyler$minutes_per_mile<5 | tyler$total_elapsed_time_s <1),]

## not sure what went wrong here, but his was my attempt at creatina new column with description of minutes/mile
Tyler2 <- tyler1 %>% mutate(pace = case_when(minutes_per_mile <6 ~ 'fast' , minutes_per_mile >= 6 & minutes_per_mile < 8 ~ 'medium', minutes_per_mile > 8 ~ 'slow')
 
