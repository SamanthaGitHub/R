
#from previous (section 4):
myPlot11 <- ggplot(data=movies, aes(x=BudgetMillions))
myPlot11 + geom_histogram(binwidth=10, aes(fill=Genre), color="black")


##Theme

#add axes labels
h <- myPlot11 + geom_histogram(binwidth=10, aes(fill=Genre), color="black")

h + xlab("Money Axis") +
  ylab("Num of Movies")


#label formatting
h + xlab("Money Axis") +
  ylab("Num of Movies") +
  
  #make axis color and size bigger
  theme(axis.title.x=element_text(color="DarkGreen", size=30),
        axis.title.y=element_text(color="red", size=30))


#tick mark formatting
h + xlab("Money Axis") +
  ylab("Num of Movies") +
  theme(axis.title.x=element_text(color="DarkGreen", size=30),
        axis.title.y=element_text(color="red", size=30),
        
        #MAKE TICKS BIGGER
        axis.text.x=element_text(size=20),
        axis.text.y=element_text(size=20))


#legend formatting
h + xlab("Money Axis") +
  ylab("Num of Movies") +
  theme(axis.title.x=element_text(color="DarkGreen", size=30),
        axis.title.y=element_text(color="red", size=30),
        axis.text.x=element_text(size=20),
        axis.text.y=element_text(size=20),
        
        #legend title and text size
        legend.title=element_text(size=30),
        legend.text=element_text(size=20),
        
        #legend position
        legend.position=c(1,1),
        legend.justification=c(1,1)) #anchoring the legend


#title pf the plot
h + xlab("Money Axis") +
  ylab("Num of Movies") +
  
  #title of plot
  ggtitle("Movie Budget Distro") +
  
  theme(axis.title.x=element_text(color="DarkGreen", size=30),
        axis.title.y=element_text(color="red", size=30),
        axis.text.x=element_text(size=20),
        axis.text.y=element_text(size=20),
        #legend title and text size
        legend.title=element_text(size=30),
        legend.text=element_text(size=20),
        #legend position
        legend.position=c(1,1),
        legend.justification=c(1,1), #anchoring the legend
        
        #color and size of title
        plot.title=element_text(color="DarkBlue", size=40)) 

