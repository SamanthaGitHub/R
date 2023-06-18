
myPlot5 <- ggplot(data=movies, aes(x=AudienceRating))

#white bars with blue outline
myPlot5 + geom_histogram(fill="White", color="Blue", bins=10) #use bins instead of binwidth; still not exactly the same...

#another way:
myPlot5 <- ggplot(data=movies) #'blank canvas'
myPlot5 + geom_histogram(bins=10,aes(x=AudienceRating), fill="White", color="Blue") 

#---above depends on what you want to do, what you want from your data
#   when you don't know, it's more flexible to make a blank canvas and change as you go
