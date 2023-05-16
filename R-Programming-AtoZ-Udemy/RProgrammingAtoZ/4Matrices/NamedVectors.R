#Named vectors

Samantha <- 1:5
Samantha

#give names
names(Samantha) #NULL
names(Samantha) <- c("a","b","c","d","e") # 1-5 will have names a, b, c, d, e, respectively
Samantha

Samantha["d"] # 4
names(Samantha) # "a", "b", "c", "d", "e"

#clear names
names(Samantha) <- NULL
Samantha


#naming matrix dimensions
temp.vec <- rep(c("a", "B", "Zz"), times=3)
temp.vec <- rep(c("a", "B", "Zz"), each=3)
temp.vec

Bravo <- matrix(temp.vec, 3, 3)
Bravo

rownames(Bravo) <- c("How", "are", "you")
Bravo

colnames(Bravo) <- c("I", "am", "great")
Bravo

Bravo["are", "am"] <- 0
Bravo


rownames(Bravo) <- NULL
Bravo
