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
Evi2 <- matrix(Evi, nrow = 2, ncol = 3); Evi2

# b)
Evi2[,2]

# c)
Evi3 <- matrix(Evi, nrow = 3, ncol = 2); Evi3

# d)
Evi3[2,]

# e)
Evi3R <- matrix(Evi, nrow = 3, ncol = 2, byrow = TRUE); Evi3R

# f)
Evi3 == Evi3R # no
identical(Evi3, Evi3R) # False

# g)
rbind(Evi3,Evi3R)

# h)
cbind(Evi3,Evi3R)



## 4 Creating vectors for a series of refractive indices. 

RIsu <- c(2.8,3.1,1.9,2.4,2.1); RIsu
RIcs <- c(2.1,1.5,3.2,2.4,2.9); RIcs


# a)
rbind(RIsu,RIcs)

# b)
cbind(RIsu,RIcs)

# c)
measRI <- data.frame(cbind(RIsu,RIcs)); measRI

# d)
ID <- (1:5); ID
#measRI[3] <- ID; measRI
#or
mRIID <- measRI
mRIID$ID <- c(1:5); mRIID

# e)
# mRIID[3,] <- c(2.35, 2.45,3); mRIID    # not sure how to change the first 2 without the 3rd column in a single line?
# or
mRIID[3,1] <- c(2.35); mRIID
mRIID[3,2] <- c(2.45); mRIID



## 5 Joint matrices

evi62 <- rbind(Evi3,Evi3R); evi62
evi34 <- cbind(Evi3,Evi3R); evi34

# a)
myList1 <- list(evi34, evi62); myList1

# b)
myList2 <- list(Evi2, Evi3, Evi3R); myList2

# c)
myListC12 <- c(myList1,myList2); myListC12

# d)
Evi2_v1 <- data.frame(Evi2); Evi2_v1

# e)
myListC12 [[6]]<- Evi2_v1; myListC12

# f)
myListC12[[3]] <- NULL; myListC12

# g)
names(myListC12) <- c("evi34", "evi62", "Evi3", "Evi3R", "Evi2_v1"); myListC12




## 6 Functions }
mySumSqDev <- function(x){
  m <- sum(x)/length(x)
  xb <- sum((x-m)^2)
    return(xb)
}
mySumSqDev(x)

# a)
myVar <- function(x) {
  y=(mySumSqDev(x))/(length(x)-1)
    return (y)
}
myVar(x)


# b)
myStdDev <- function(x){
  s <- sqrt(myVar(x))
    return(s)
}  
  
# c)
x <- c(4,6,2,8)
mySumSqDev(x) # = 20


# d)
y <- c(2,1,3,7,5)
myVar(y) # = 5.8


# e)
z <- c(1,5,9)
myStdDev(z) # = 4

