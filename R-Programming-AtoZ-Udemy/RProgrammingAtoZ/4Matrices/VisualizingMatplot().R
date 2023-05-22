?matplot

FieldGoals
#transposing: 'flipping' the table to correctly display data (by row v columns)
t(FieldGoals) #t is used to transpose a table

matplot(t(FieldGoals), type="b", pch=15:18, col=c(1:4, 6))
legend("bottomleft", inset=0.01, legend=Players, col=c(1:4, 6), pch=15:18, horiz=F)
#matplot and legend are two separate objects; don't communicate to match


matplot(t(FieldGoals/FieldGoalAttempts), type="b", pch=15:18, col=c(1:4, 6))
legend("bottomleft", inset=0.01, legend=Players, col=c(1:4, 6), pch=15:18, horiz=F)


#points per minute
matplot(t(FieldGoals/MinutesPlayed), type="b", pch=15:18, col=c(1:4, 6))
legend("bottomleft", inset=0, legend=Players, col=c(1:4, 6), pch=15:18, horiz=F)
