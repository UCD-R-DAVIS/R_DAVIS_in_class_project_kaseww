set.seed(15)
hw2 <- runif(50, 4, 50)
hw2 <- replace(hw2, c(4,12,22,27), NA)

#removing NA values
hw2[!is.na(hw2)]
hw2[complete.cases(hw2)]

#created new object w/out NA values
hw2.5 <-hw2[complete.cases(hw2)]

#select values between 14 and 38 inclusive
hw2.5 [ hw2.5 >= 14 & hw2.5 <= 38 ]

#new object called prob1 with the above values
prob1 <- hw2.5 [ hw2.5 >= 14 & hw2.5 <= 38 ]

#multiply each number in prob1 by 3 and create new object called times3
times3<- prob1*3

#add 10 to each number in times3 and create new object called plus10
plus10 <- times3 +10

#indexing the object plus10 to only include every other number
plus10[c(TRUE, FALSE)]




