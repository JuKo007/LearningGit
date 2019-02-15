### This is a test file, it is a simple R function that we will save as a script and as an Rdata object

WhosCool <- function(x){cat("YOU ARE!")}

### TEST

### Here we add some text for our second commit

### This is the third edit that we want to push to Github

## We add some code here
library(parallel)
cores <- detectCores()

install.packages("tictoc")
library(tictoc)

# Creating Vector
Million <- as.list(1:1000000)

# Squaring and taking the time with 1 core
tic()
Output <- lapply(Million,function(x){as.numeric(x)*as.numeric(x)})
toc()

# Squaring and taking the time with all cores
tic()
Output <- mclapply(Million,function(x){as.numeric(x)*as.numeric(x)},mc.cores = cores)
toc()