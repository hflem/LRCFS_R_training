##
## Holly Fleming (hfleming001@dundee.ac.uk)
## Introduction to R(Studio) Programming: Exercise
##


## 1 Create a vector called numS containing a sequence of numbers from 0 to 100 by 5

numS <- seq(0,100, by = 5); numS

# a)
numSF8 <- numS[1:8]; numSF8

# b)
numSL10 <- numS[12:21]; numSL10

# c)
numSF8L10 <- c(numSF8, numSL10); numSF8L10




## 2 Create a vector called numRep containing three repetitions of the number 2 and 3, and two repititions of the number 9 and 10. 

numRep <- rep(c(2:3, 3),

