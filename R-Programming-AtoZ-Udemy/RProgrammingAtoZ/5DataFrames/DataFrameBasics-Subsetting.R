
##subsetting
stats
stats[1:10,] #first 10 rows with all columns

stats[3:9,] #rows 3 to 9
stats[c(4,100),] # the 4th and 100th rows; preserves the index number


#[]
stats[1,]
#--in a matrix, row extraction will result in a vector;
#--in a data frame it stays as a data frame (no need to use drop, as in a matrix)

stats2[,1] #vector of country names, with levels (stats2); NOT a data frame
stats2[,1,drop=F] #IS a data frame

is.data.frame(stats2[,1,drop=F]) #TRUE
is.data.frame(stats2[,1]) #FALSE


#multiply columns
#-----------------------SAME-------------------------- *vectorized operation
stats2$Birth.rate * stats2$Internet.users 
stats2[['Birth.rate']] * stats2[['Internet.users']]
#-----------------------SAME--------------------------

head(stats2)
stats2$MyCalc <- stats2$Birth.rate * stats2$Internet.users 
head(stats2, n=10)

