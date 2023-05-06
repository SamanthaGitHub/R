# A tutorial by Selva Prabhakaran, located at: 
# http://r-statistics.co/ggplot2-Tutorial-With-R.html


#DIAMONDS DATASET
library(ggplot2)

# Using point and smooth geoms
ggplot(diamonds) + geom_point(aes(x=carat, y=price, color=cut)) + geom_smooth(aes(x=carat, y=price, color=cut))

# Adding title and labels
# NOTE: must use print statement if calling ggplot inside of a function
myPlot <- ggplot(diamonds, aes(x=carat, y=price, color=cut)) + geom_point() + labs(title="Scatterplot", x="Carat", y="Price")
print(myPlot)

# Adjusting size of labels and legend title
# using discrete for 'color' attribute because it varies based on a factor variable
myPlot2 <- myPlot + theme(plot.title=element_text(size=30, face="bold"),
                          axis.text.x=element_text(size=15),
                          axis.text.y=element_text(size=15),
                          axis.title.x=element_text(size=25),
                          axis.title.y=element_text(size=25)) +
  scale_color_discrete(name="Cut of Diamonds")
print(myPlot2)

# Cuts charted separately
# this feature uses the same scale for all plots, making comparison easier
myPlot2 + facet_wrap( ~ cut, ncol=3)
