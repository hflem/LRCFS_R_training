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

rep1 <- rep(2:3, 3)
rep2 <- rep(9:10, 2)
numRep <- c(rep1,rep2); numRep


# a)
length(numRep) # length = 10

# b)
numREdit <- numRep
  numREdit[2] <-4
  numREdit[6] <-5
  numREdit[8] <-7
numREdit  

# c)
numREdit <- c(numREdit, 12:16); numREdit; length(numREdit) #length = 30

# d)
numREdit[c(9,11,13)]


## 3 Creating a vector called Evi containing blood spatter BS, hair H, glass fragments GF, paint P, gunshot residue GSR and fibre F.

Evi <- c("BS", "H", "GF", "P", "GSR", "F"); Evi

# a)

