elephant1_kg <- 3492
elephant2_lb <- 7757

elephant1_lb <- elephant1_kg * 2.2

elephant2_lb > elephant1_lb

myelephants <- c(elephant1_lb, elephant2_lb)

which(myelephants == max(myelephants))

# project mgmt

#working directory and file paths
getwd()
"/Users/kasewheatley/Documents/Rstudio/R_DAVIS_in_class_project_kaseww"
setwd()

d <-read.csv("./data/tail_length.csv")

dir.create("./lecture_scripts")

#vectors
weight_g <- c(50,60,65,82)
weight_one_value <- c(50)

animals <- c("mouse", "rat", "dog")

#Inspection
length(weight_g)
str(weight_g)

### change vectors ---
weight_g <- c(weight_g, 90)
weight_g


###challenge ----
num_char <- c(1,2,3,"a")
class(num_char)


num_logical <- c(1,2,3,TRUE)
class(num_logical)
# coerces values to be all the same, e.g. when TRUE is included

char_logical <- c("a", "b", "c", TRUE)
class(char_logical)

tricky <- c(1,2,3,"4")
class(tricky)


##subsetting ----

animals <- c("mouse", "rat", "dog", "cat")


animals[2]

animals[c(2,3)]
animals[c(2,2)]
#indexing: take items from a vector and create a new combination of values

### conditional subsetting ----
weight_g <- c(21, 34, 39, 54, 55)
weight_g > 50

weight_g[weight_g > 50]


## Symbols
#%in% within a bucket
# == pairwise matching -- ORDER MATTERS

animals %in% c("rat", "cat", "dog","cat", "goat", "duck")

animals == c("rat", "cat", "dog","cat", "goat", "duck")




