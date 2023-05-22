
x <- c("a", "b", "c", "d", "e")
x

x[c(1,5)] #"a" "e"



Games
Games[1:3, 6:10] #first three rows, 2010-2014
Games[c(1,10),] #first and last players; top paid and least paid
Games[,c("2008", "2009")]

Games[1,] #not a matrix; a NAMED vector (no row name)
is.matrix(Games[1,]) #FALSE
is.vector(Games[1,]) #TRUE

Games[1,5] #not a matrix; a vector

#As a matrix:
Games[1,,drop=FALSE] #drop is default TRUE; it 'drops' unnecessary dimensions
Games[1,5, drop=F]
