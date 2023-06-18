
qplot(data=stats2, x=Internet.users)
qplot(data=stats2, x=Income.Group, y=Birth.rate)
qplot(data=stats2, x=Income.Group, y=Birth.rate, size=I(4)) #I is added to only change size of point
qplot(data=stats2, x=Income.Group, y=Birth.rate, size=I(4),
      color=I("blue"))

qplot(data=stats2, x=Income.Group, y=Birth.rate, geom="boxplot")


#---------------CHALLENGE-------------
##Visualizing
qplot(data=stats2, x=Internet.users, y=Birth.rate)

qplot(data=stats2, x=Internet.users, y=Birth.rate,
      size=I(2))

qplot(data=stats2, x=Internet.users, y=Birth.rate,
      color= I("pink"),size=I(2))

qplot(data=stats2, x=Internet.users, y=Birth.rate, #colors by the factors in Income.Group
      color= Income.Group, size=I(2))





## Visualizing with new Split (after merging in region data)
qplot(data=merged.stats2.df, x=Internet.users, y=Birth.rate,
      color=Region, size=I(2)) #just gorgeous

#shapes
qplot(data=merged.stats2.df, x=Internet.users, y=Birth.rate,
      color=Region, size=I(2), shape=I(25)) #hollow triangle for shape; shapes range 0:25

#transparency
qplot(data=merged.stats2.df, x=Internet.users, y=Birth.rate,
      color=Region, size=I(2), shape=I(19), alpha=I(0.5)) #alpha/transparency 0:1

#adding a title
qplot(data=merged.stats2.df, x=Internet.users, y=Birth.rate,
      color=Region, size=I(2), shape=I(19), alpha=I(0.5), main="Birth Rate v Internet Users")




