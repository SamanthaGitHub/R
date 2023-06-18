
#previous plot
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, 
                        color=Genre, size=BudgetMillions)) + 
  geom_point()

myPlot <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, 
                             color=Genre, size=BudgetMillions))

myPlot + geom_point()

myPlot + geom_line()


#multiple layers
myPlot + geom_point() + geom_line()
#v
myPlot + geom_line()  + geom_point() #points on top; easier to see point

