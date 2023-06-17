

##Filtering data frames
#NOTE: vectors used with boolean are T F vectors
head(stats2)
stats2$Internet.users

stats2$Internet.users < 2 #logical T F of every country that meets or doesn't meet the condition
filter <- stats2$Internet.users < 2
stats2[filter,] #shows the actual row values that meet the condition

stats2[stats2$Birth.rate > 40,] # shows row data of condition w/0 intermediary step (like above)

stats2[stats2$Birth.rate > 40 & stats2$Internet.users < 2,] #two condition passed using & to show row values that meet both conditions

stats2[stats2$Income.Group == "High income",]
levels(stats2$Income.Group) #displays factor levels as a vector

stats2[stats2$Country.Name,]
stats2[stats2$Country.Name == 'Malta',]
