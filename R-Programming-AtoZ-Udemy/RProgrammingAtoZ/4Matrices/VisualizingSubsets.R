
matplot(t(MinutesPlayed), type="b", pch=15:18, col=c(1:4, 6))
legend("bottomleft", inset=0.01, legend=Players, col=c(1:4, 6), pch=15:18, horiz=F)

#Subsetting
#Top three players
Data <- MinutesPlayed[1:3,] #for easier manipulation

matplot(t(Data), type="b", pch=15:18, col=c(1:4, 6))
legend("bottomleft", inset=0.01, legend=Players[1:3], col=c(1:4, 6), pch=15:18, horiz=F)

Data

#Kobe Bryant
Data <- MinutesPlayed[1,] #for easier manipulation
matplot(t(Data), type="b", pch=15:18, col=c(1:4, 6))
legend("bottomleft", inset=0.01, legend=Players[1], col=c(1:4, 6), pch=15:18, horiz=F)
#ABOVE: no longer a matrix; a named vector

#---Subsetting:
Data <- MinutesPlayed[1,,drop=F] #for easier manipulation

matplot(t(Data), type="b", pch=15:18, col=c(1:4, 6))
legend("bottomleft", inset=0.01, legend=Players[1], col=c(1:4, 6), pch=15:18, horiz=F)

