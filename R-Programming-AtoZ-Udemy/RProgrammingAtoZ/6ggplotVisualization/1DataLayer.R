movies <- read.csv("P2-Movie-Ratings.csv", stringsAsFactors = T)

head(movies)

colnames(movies) <- c("Film", "Genre", "CriticRating","AudienceRating", "BudgetMillions","Year")
head(movies)

tail(movies)
str(movies)

summary(movies)

#year should be a factor (categorical)

#---------converting year from int to a factor------------------------
factor(movies$Year) #creates levels of years

movies$Year <- factor(movies$Year) #assigns new column to data frame

