read.csv()

#Manual
stats <- read.csv(file.choose())
stats

#Set wd and read data
getwd()
setwd("C:\\Users\\saman\\Downloads\\P2-Demographic-Data.csv")
setwd("C:/Users/saman/Downloads")
stats2 <- read.csv("P2-Demographic-Data.csv", stringsAsFactors = T)



##Exploring data

nrow(stats) #num of rows

ncol(stats) #num of columns

head(stats) #top 6 rows; can add n= for num of rows
tail(stats) #bottom 6 rows

str(stats) #structure of data
runif() #random var dist uniformly r unif

summary(stats) #column breakdown; mean, max, min, quartiles

##Using the $

stats
head(stats)

stats[3,3]
stats[3, 'Birth.rate']

#IDENTICAL
stats$Internet.users
#stats$Internet.users[2]
stats[,'Internet.users'] #entire column
stats[['Internet.users']] #entire column as a vector

#factors
levels(stats2$Income.Group) #levels as a vector
factor(stats2$Income.Group, level = "High income")
stats2$Income.Group["High income"] #just displays levels; NA vector





