# day2
library(tidyverse)

# read data
dat <- read.table(file = "day02/input_day02.txt", header = F)
#dat <- read.table(file = "day02/test_day02.txt", header = F)
head(dat)
dim(dat)
str(dat)

# part 1
fwd = 0
depth = 0

for(i in 1:nrow(dat)){
  if(dat[i,"V1"] == "forward"){
    fwd = fwd + dat[i,"V2"]
  } else {
    if(dat[i,"V1"] == "down"){
      depth = depth + dat[i,"V2"]
    }else {
      if(dat[i,"V1"] == "up"){
        depth = depth - dat[i,"V2"]
      }
    }
  }
  print(c(fwd, depth, fwd * depth))
}




# part 2

fwd = 0
depth = 0
aim = 0

for(i in 1:nrow(dat)){
  if(dat[i,"V1"] == "forward"){
    fwd = fwd + dat[i,"V2"]
    depth = depth + aim * dat[i,"V2"]
  } else {
    if(dat[i,"V1"] == "down"){
      aim = aim + dat[i,"V2"]
    }else {
      if(dat[i,"V1"] == "up"){
        aim = aim - dat[i,"V2"]
      }
    }
  }
  print(c(fwd, depth, fwd * depth))
}
