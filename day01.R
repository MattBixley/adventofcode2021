# day1
library(tidyverse)

# part 1
data <- read.table(file = "input_day01.txt", header = F)
head(data)

change <- numeric()

for(i in 1:nrow(data)-1){
  change[i] <- data[i+1,] - data[i,]
}

length(which(change >= 1))

# part 2