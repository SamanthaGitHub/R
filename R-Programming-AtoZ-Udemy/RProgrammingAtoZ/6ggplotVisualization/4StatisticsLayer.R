
myPlot4 <- ggplot(data=movies, aes(x=BudgetMillions))

myPlot4 + geom_histogram() #'binwidth=' doesn't work...; r auto decides y is 'count'
?geom_histogram


#add color
myPlot4 + geom_histogram(aes(fill=Genre)) #mapping fill color; fill is used for color

#add border
myPlot4 + geom_histogram(aes(fill=Genre), color="black") #setting border to better visualize



##Density charts
myPlot4 + geom_density(aes(fill=Genre)) #overlapping filled line graph
myPlot4 + geom_density(aes(fill=Genre), position="stack") #un-overlapped data to better visualize; stacked it
