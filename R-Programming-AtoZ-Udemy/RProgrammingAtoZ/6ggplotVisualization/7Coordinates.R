#from previous video:
#very cool little graphs with budgets as size
#NOTE: smoothers are stretching the y axis (-50:150)
myPlot8 + geom_point(aes(size=BudgetMillions)) + 
  facet_grid(Genre~Year) +
  geom_smooth()


##Coordinates
#zooming; control coordinates
#limits and zoom

myPlot9 <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, 
                                   size=BudgetMillions, color=Genre))

myPlot9 + geom_point()

#zooming into highest values

myPlot9 + geom_point() +
  xlim(50,100) + #50:100l; actually removes rows
  ylim(50,100) #upper right quadrant

#NOTE: doesn't work well at zooming in on histograms


#zooming in on histogram data
#base data
myPlot10 <- ggplot(data=movies, aes(x=BudgetMillions))
myPlot10 + geom_histogram(aes(fill=Genre), color="black")

#zoom
myPlot10 + geom_histogram(aes(fill=Genre), color="black") +
  coord_cartesian(ylim=c(0,50))

#zoom on pretty plot to fix y axis to be 0 to 100
myPlot8 + geom_point(aes(size=BudgetMillions)) + 
  facet_grid(Genre~Year) +
  geom_smooth() +
  ylim(0,100)
















