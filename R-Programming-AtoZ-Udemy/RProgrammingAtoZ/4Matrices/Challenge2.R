myplot <- function(z,who=1:10){
  matplot(t(z[who,,drop=F]), type="b", pch=15:18, col=c(1:4, 6), main="Basketball")
  legend("bottomleft", inset=0.01, legend=Players[who], col=c(1:4, 6), pch=15:18, horiz=F)
}

myplot(FreeThrows)
myplot(FreeThrowAttempts)


#Free Throw Attempts Per Game
Games
myplot(FreeThrowAttempts/Games)


#Accuracy of Free Throws
myplot(FreeThrows/FreeThrowAttempts)


#Player Playing Style (2 vs 3 pts; excluding free throws)
myplot((Points - FreeThrows) / FieldGoals)
