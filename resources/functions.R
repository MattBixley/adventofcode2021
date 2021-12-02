# functions

# calculate a window sum
sum3 <- function(x){
  sum(dat[x,],dat[x+1,],dat[x+2,])
}