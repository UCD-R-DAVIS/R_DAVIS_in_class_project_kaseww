surveys <- read.csv("data/portal_data_joined.csv")
str(surveys)

#shows summary table of surveys data.frame
summary(surveys)

#creation of new object, titled surveys_base, with rows 1-5000 and columns 5,6, and 13 of the surveys object
surveys_base <- surveys[c(1:5000), c(6,9,13)]

#changing species_id and plot_type to factors
as.factor(surveys_base$species_id)
as.factor(surveys_base$plot_type)

#creating new objct w/out any NA values in all of the rows of the weight column
surveys_base_rm <- surveys_base[!is.na(surveys_base$weight), ]

#factors are more useful than characters in some contexts as they can be listed non-alphabetically


