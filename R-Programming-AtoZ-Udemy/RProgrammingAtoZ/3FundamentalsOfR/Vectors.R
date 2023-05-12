# sequence of elements of same data type; ordered set (indexed; starting at 1)
# even a single number is stored as a vector


# --------------- VECTOR ---------------
myVector <- c(3, 45, 56, 732)
myVector

is.numeric(2.5)
is.numeric(2L)

is.numeric(myVector) # TRUE
is.integer(myVector) #FALSE
is.double(myVector) # TRUE



V2 <- c(12L, 6L, 7L, 0L) # L instructs R to store vars and integers
V2
is.numeric(V2) # TRUE
is.integer(V2) # TRUE
is.double(V2) # FALSE



V3 <- c("a", "b", "23", "yo", 7) # converts 7 to char; still char vector
V3
is.character(V3) # TRUE
is.numeric(V3) # FALSE






# --------------- SEQUENCE; similar to ':' -------------------
seq() # sequence

seq(1,15)
1:15
# same results

seq(1,15,2)
# sequence is more flexible; can add a step (of 2)
 z <- seq(1,15,4)
z



#---------- REPLICATE --------------
rep() # replicate

rep(3,50)
#replicate 3 50 times