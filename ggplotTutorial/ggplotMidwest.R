# A tutorial by Selva Prabhakaran, located at: 
# http://r-statistics.co/ggplot2-Tutorial-With-R.html


# MIDWEST DATASET

# Imports
options(scipen=999)
library(ggplot2)
data("midwest", package="ggplot2")

# Initialize
ggplot(midwest, aes(x=area, y=poptotal)) + geom_point()
