# part 1
dat <- read.table(file = "input_day01.txt", header = F)

change <- 0
for(i in 2:nrow(dat)){
  if(dat[i,] > dat[i-1,]){
  change <- change + 1
  }
}

print(change)

# part 2

sum3 <- function(x){
  sum(dat[x,],dat[x+1,],dat[x+2,])
}

window <- 0

for(i in 2:nrow(dat)-3){
  if(sum3(i) > sum3(i-1)){
  window <- window + 1
  }
}
print(window)
