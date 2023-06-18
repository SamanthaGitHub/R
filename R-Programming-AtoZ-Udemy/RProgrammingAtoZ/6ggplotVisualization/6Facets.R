myPlot7 <- ggplot(data=movies, aes(x=BudgetMillions))
myPlot7 + geom_histogram(aes(fill=Genre)) #blurry histogram
myPlot7 + geom_histogram(binwidth=10, aes(fill=Genre), color='black')

##Facets to create a histogram for every genre
# all facets use uniform axis; difficult to see those with lower count data

myPlot7 + geom_histogram(binwidth=10, aes(fill=Genre), color='black') +
  facet_grid(.~Genre) #genre plots in columns; . is kinda like NULL

myPlot7 + geom_histogram(binwidth=10, aes(fill=Genre), color='black') +
  facet_grid(Genre~.) #genre plots in rows; . is kinda like NULL


##Facet with 'free' scales to make scales more individualized to data
myPlot7 + geom_histogram(binwidth=10, aes(fill=Genre), color='black') +
  facet_grid(Genre~., scales="free") #different y axis scales for each plot


#scatterplots

#base plot
myPlot8 <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, color=Genre))
myPlot8 + geom_point(size=3)

#facets
myPlot8 + geom_point(size=2) + 
  facet_grid(Genre~.) #rows of genre 

myPlot8 + geom_point(size=2) + 
  facet_grid(.~Year) #column of year

  #holy matrimony
  myPlot8 + geom_point(size=2) + 
    facet_grid(Genre~Year) #grid of genres and years
  
  #crazy little point/line graphs
  myPlot8 + geom_point(size=2) + 
    facet_grid(Genre~Year) +
    geom_smooth()
  
  
  #very cool little graphs with budgets as size
  #NOTE: smoothers are stretching the y axis (-50:150)
  myPlot8 + geom_point(aes(size=BudgetMillions)) + 
    facet_grid(Genre~Year) +
    geom_smooth()
