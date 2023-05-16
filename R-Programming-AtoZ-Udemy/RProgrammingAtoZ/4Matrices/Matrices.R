#matrix indexation: matrix[row#,column#] | [row#,] | [,column#]
#matrix values must all be the same type

Salary
Games

#BUILDING A MATRIX
matrix()
rbind() #connects rows into a vector
cbind() #connects columns into a vector

#---matrix()--- 'bends' the vector
?matrix

my.data <- 1:20
my.data
A <- matrix(my.data, 4, 5) #byrow defaults to FALSE
A
A[2,3] #10

B <- matrix(my.data, 4, 5, byrow=T) #matrix populated byrow
B
B[2,5] #10


#---rbind()--- binds row by row
r1 <- c("I", "am", "happy")
r2 <- c("what", "a", "day")
r3 <- c(1, 2, 3)

C <- rbind(r1, r2, r3)
C


C#---cbind()--- bind column by column
c1 <- 1:5
c2 <- -1:-5
D <- cbind(c1, c2)
D