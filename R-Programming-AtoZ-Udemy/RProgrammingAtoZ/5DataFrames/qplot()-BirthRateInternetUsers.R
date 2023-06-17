
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
