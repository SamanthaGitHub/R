
#rnorm() randomly distributes numbers; parameters for normal distribution

rm(answer)
x <- rnorm(1)
if(x > 1){
  answer <- "Greater than 1"
  paste(x,answer)
} else if( x >= -1){
  answer <- "Between 1 and -1"
  paste(x,answer)
} else{
  answer <- "Less than -1"
  paste(x,answer)
}
#this is a chaining statement; cleaner than nested