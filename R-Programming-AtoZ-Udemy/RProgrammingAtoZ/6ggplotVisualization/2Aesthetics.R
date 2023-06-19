
library(ggplot2)

#---1----------------------------------------------------------------------
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating))

#add geometry
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating)) + 
  geom_point()

#add color based on genre and size based on budget
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, 
                        color=Genre, size=BudgetMillions)) + 
  geom_point()
#-------------------------------------------------------------------------




##Overriding aesthetics

myPlot2 <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating,
                                   color=Genre, size=BudgetMillions))

#overriding; myPlot2 object stays the same
#NOTE: axis titles and legend titles show original object's mapping variables

myPlot2 + geom_point(aes(size=CriticRating)) #budget has no effect (even though still in legend)

myPlot2 + geom_point(aes(color=BudgetMillions))


myPlot2 + geom_point(aes(x=BudgetMillions)) + 
  xlab("Budget Millions") #will update x axis label


#reduce line size
myPlot2 + geom_line(linewidth=.7)  + geom_point() #'setting' (instead of mapping) linewidth




##Mapping V Setting

myPlot3 <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating))

myPlot3 + geom_point()

#add color
  #by mapping
  myPlot3 + geom_point(aes(color=Genre)) #attaching a color to a variable

  #by setting
  myPlot3 + geom_point(color="DarkGreen") #all points are DarkGreen
  
#ERROR in myPlot3 + geom_point(aes(color="Genre"DarkGreen")) | r thinks you are creating a new variable/category


  
  myPlot3 + geom_point(aes(color=Genre))
  myPlot3 + geom_point(aes(color="incorrect/meaningless"))  
  
  myPlot3 + geom_point(aes(color=Year))
  myPlot3 + geom_line(aes(x=Year, color=Genre),linewidth=10)  #cool caterpillar line plot
  
  