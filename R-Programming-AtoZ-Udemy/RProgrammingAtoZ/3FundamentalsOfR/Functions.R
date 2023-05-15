rnorm(5, 10, 8) # n=5, mean=10, sd=8

rep(5:6, times=5) # 5, 6, 5, 6, 5, 6, 5, 6, 5, 6
rep(5:6, each=5) # 5, 5, 5, 5, 5, 6, 6, 6, 6, 6

seq(from=10, to=20, length.out=100) # length.out calculates the step for the desired number of variables (100)
x <- c("a", "b", "c")
seq(from=10, to=20, along.with=x) # produces vector same length as the input vector (of x)

c()

print()
paste()

is.numeric()
is.integer()
is.double()
is.character()
is.logical()

typeof()

A <- seq(from=10, to=20, along.with=x)
A
sqrt(A) # creates a vector of the square root values for each element of A

#adding '?' before the function brings up the help doc