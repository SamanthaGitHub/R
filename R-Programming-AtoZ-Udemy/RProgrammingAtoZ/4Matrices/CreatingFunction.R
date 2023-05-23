#Creating a function for the previous code block being implemented multiple times
#-----
Data <- MinutesPlayed[1,,drop=F] #subsetting

matplot(t(Data), type="b", pch=15:18, col=c(1:4, 6))
legend("bottomleft", inset=0.01, legend=Players[1], col=c(1:4, 6), pch=15:18, horiz=F)
#-----

#myplot Function with player and stat parameters
myplot <- function(stat,rows=1:10){ #defaults all players if no rows selected
  Data <- stat[rows,,drop=F] #subsetting
  
  matplot(t(Data), type="b", pch=15:18, col=c(1:4, 6))
  legend("bottomleft", inset=0.01, legend=Players[rows], col=c(1:4, 6), pch=15:18, horiz=F)
}
myplot(Salary)

myplot(Games)
