
myPlot5 <- ggplot(data=movies, aes(x=AudienceRating))

#white bars with blue outline
myPlot5 + geom_histogram(fill="White", color="Blue", bins=10) #use bins instead of binwidth; still not exactly the same...

#another way:
myPlot5 <- ggplot(data=movies) #'blank canvas' | 'skeleton plot'
myPlot5 + geom_histogram(bins=10,aes(x=AudienceRating), fill="White", color="Blue") 

#---above depends on what you want to do, what you want from your data
#   when you don't know, it's more flexible to make a blank canvas and change as you go



##Statistical transformations

#geom_smooth() : aids the eye in observing trends and relationships

myPlot6 <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, color=Genre))

#smoother helps us predict
myPlot6 + geom_point() + geom_smooth(fill=NA) #fill=NA gets ride of grey fill

#geom_boxplot()
myPlot6.5 <- ggplot(data=movies, aes(x=Genre, y=AudienceRating, color=Genre))
myPlot6.5 + geom_boxplot() #pretty little boxplots
myPlot6.5 + geom_boxplot(size=1.2) #thicker-bordered boxplots

#geom_jitter()
myPlot6.5 + geom_boxplot(size=1.2) + geom_point() #not very cute...
myPlot6.5 + geom_boxplot(size=1.2) + geom_jitter() #you can see the points




