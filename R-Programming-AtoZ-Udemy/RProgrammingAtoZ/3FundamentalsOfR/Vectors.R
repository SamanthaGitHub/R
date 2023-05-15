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
#replicate 3 (50 times)

a <- rep(3,10)
a

rep("sam", 2)

x <- c(80,20)
rep(x,10) # 80, 20, 80, 20, .....






# --------- VECTORIZED OPERATIONS ----------------
# RECYCLING VECTORS: if adding a vector with less indexes to another,
# and if the smaller is a multiple of the larger, R will recycle, filling
# in the 'blanks' with the values of the smaller vector.
# If not a multiple, R will still preform the operation with a warning.

x <- rnorm(5)
x

# R-specific programming loop
for(i in x){ # i assumes the value of the index in the vector
  print(i)
}
print(x[1:5]) # prints as a vector
print(x[1]) # prints the 1 value


# conventional programming loop
for(j in 1:5){ # j assumes the index of the value in the vector
  print(x[j])
}


# -- R-specific v conventional --
N <- 100
a <- rnorm(N)
b <- rnorm(N)




# Vectorized
c <- a * b

# De-vectorized; takes longer to compute
d <- rep(NA,N) # empty vector with allocated memory
for(i in 1:N){
  d[i] <- a[i] * b[i]
}