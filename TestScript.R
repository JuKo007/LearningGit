### This is a test file, it is a simple R function that we will save as a script and as an Rdata object

WhosCool <- function(x){cat("YOU ARE!")}

### TEST

### Here we add some text for our second commit

### This is the third edit that we want to push to Github

## We add some code here to test parallelization in R
rm(list=ls())
gc()

library(parallel)
library(tictoc)
library(pbmcapply)

# detecting cores
cores <- detectCores()

# Creating Vector
number <- as.list(1:10)

# Waiting 10 secs, then printing the number with 1 core
tic()
lapply(number,function(x){Sys.sleep(10);print(x)})
toc()

# cleaning RAM
gc()

# Waiting 10 secs, then printing the number with all cores
tic()
mclapply(number,function(x){Sys.sleep(10);print(x)}, mc.cores = cores)
toc()

# cleaning RAM
gc()

# Preallocating Memory
Output <- 1:10
tic()
Output <- mclapply(number,function(x){Sys.sleep(10);print(x)}, mc.cores = cores)
toc()

# Preallocating Memory + adding progress bar
Output <- 1:10
tic()
Output <- pbmclapply(number,function(x){Sys.sleep(10);print(x)}, mc.cores = cores)
toc()
