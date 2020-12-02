##
## Holly Fleming
## Introduction to R(Studio) Programming: The Basics
##


#### Introduction
####--------------------------- 

rm(list=ls())
getwd()
file.choose()


### Help and Support
help.start()

# Use of help or ?
help(matrix)
?matrix

#Use of help.search or??
help.search("matrix")
??matrix

#Use of example
example(matrix)
example(mean)

#Quotes of special characters
help(?) #Error?
help("?")

?<- #Error
  ?"<-"

help([[) #Error
help("[[")

#Use of demo
demo()
demo(package="stats")
demo("glm.vr", package="stats")
demo("nlm", package="stats")



#### Operators in R
####---------------------

### Assingment Operators

x <- 2
x

24 -> z
z

y = 6
y

x + y + z


# Vectors
vec1 <- 3:6
vec1

vec2 <- 12:15
vec2



### Arithmetic Operators

3 + 5
18 - 7
9 * 2
24 / 8
6^2

a <- 9
b <- 3

a+b
a-b
a*b

calc1 <- (a+b)/(a-b)
calc1

calc2 <- (a+b)^b/(a*b)
calc2



u <- c(6,9,2)
v <-c(2,3,-1)
w <-c(2,1)
w
u+v
u-v
(u*v)/(u/v)
u+w
v+w


matA <-matrix(c(5,2,4,3), nrow = 2, ncol = 2) #arranges by column
matA

matB<-matrix(c(1,6,1,-1), nrow = 2, ncol = 2, byrow=TRUE) #arranges by row
matB

matC <-matA + matB
matC

matD<- matA-matB
matD


##Multiplications

matE <- matA*matB
matE

matF <- matA%*% matB
matF

#matE=matF




### Relational Operators

4>5
4<5
4>4
4>=4
4<4
4<=4

x <- 3
y <- 6

y == x + 3

y != x + 3 # "!=" not equal

x != y-x


matA != matB

matA >= matC
matE == matF
matE <= matC



### Logical Operators

stateP <- TRUE
stateD <- FALSE

stateP & stateP 
stateP & stateD
stateD & stateD


stateP | stateP
stateP | stateD
stateD | stateD

! stateP
! stateD
stateD | ! stateD




### Other Operators

vec1 <- 2:8 #sequence
vec1

vec2 <- 20:16
vec2

vec3 <- c(1:5, 20:16, 2:8)
vec3

a <- 3; b <- 5; c <- 3 #combines operations
a ; b ; c


Q1 <- a+b
Q1

Q2 <- (a+b)*(a-b)
Q2

Q1 <- a + b; Q1
Q2 <- (a+b)*(a-b);Q2

Q1 <- a + b; Q2 <- (a+b)*(a-b); Q1; Q2

#Error
Q2 <- (a+b)*(a-b) Q2


# %in%
vecA <- c(1:5, 7:9) ; vecA

3%in% vecA
6%in% vecA
3:5%in% vecA
5:8%in% vecA




#### Types of Data
####--------------------

### Vectors
## Creating a Vector

v1 <- c(1,2,4,8);v1
v2 <- c("blood", "urine") ; v2

vSeq1 <- seq(2,4, by=0.5) ; vSeq1
vSeq2 <- seq(10,30, by=5) ; vSeq2

vRep1 <- rep(1:3, 2) ; vRep1
vRep2 <- rep(1:3, each=2) ; vRep2
vRep3 <- rep(1:3, each=2, times=3) ; vRep3


## Accessing Elements of a Vector

measurements <- c(2,5,7,16,20,22) ; measurements
measurements[3]
measurements[3:5]
measurements[c(1,4,6)]

actors <- c("lawyers","prosecution","defence") ; actors
actors[3]
actors[1:2]


## Modifying Elements of a Vector

# Copying
readings <- measurements
readings

stakeholders <- actors
stakeholders

measurements
actors

measurementsOD <- measurements
measurementsOD

actorsOD <- actors
actorsOD


# Replacements
measurements[3] <- 10
measurements

actors[1] <- "judges"
actors

measurements1 <- measurements
measurements1

measurements1[3] <- 10
measurements1


# Additions
measurements <- measurementsOD #reset
measurements

measurements <-c(measurements, 30)
measurements

measurements <- measurementsOD # reset
measurements

c(measurements, 30, 38, 45)
measurements

measurements[7] <- 30
measurements

measurements[10] <- 30
measurements


measurements[c(10,12)]<-c(45,20)
measurements



# Deletions

measurements <- measurementsOD # reset
measurements

measurements[-2]
measurements

measurements <- measurements[-2]
measurements #changed

measurements <- measurementsOD # reset
measurements[-c(4,6)]

measurements #unchanged


measurements <- measurements[-c(4,6)]
measurements #changed


actors <- actors[-1]
actors


### Matrices

## Creating a Matrix
mat1a <- matrix(c(1,2,3,11,12,13), nrow=2)
mat1a

mat1b <- matrix(c(1,2,3,11,12,13), nrow=2, ncol=3)
mat1b #same as mat1a

mat2 <- matrix(c(1,2,3,11,12,13), nrow=2, ncol=3, byrow=TRUE)
mat2


## Accessing Elements of a Matrix

mat1b[2,2]
mat2[2,2]

mLetters <- matrix(LETTERS[1:9], nrow=3)
mLetters

mLetters[3, ]
mLetters[ ,3]
mLetters[3,2]
mLetters[3,c(2:3)]


## Modifying Matrices


# Copying
mLettersOD <- mLetters
mLettersOD


# Replacing
mLetters[1, ] <- c("A1", "D1", "G1")
mLetters

mLetters[3,2:3] <- c("V", "W")
mLetters



# Additions
rbind(mLetters,c("X","Y","Z"))
cbind(mLetters,c("X","Y","Z"))

mLetters <- cbind(mLetters,c("X","Y","Z"))
mLetters



# Deletions
mLetters <- mLettersOD
mLetters

mLetters[-1, ]
mLetters[,-3]
mLetters[-1,-2 ]



### Lists

# Creating a List

myVec <- 8:12 ; myVec

myMat <- matrix(c(1,0,-1,1,1,-1), nrow=2) ; myMat

myDat <- data.frame(course = c("Maths", "Science", "English"), grade = c(50,60,85)) ; myDat


myListDoc <- list(myVec, myMat, myDat)
myListDoc


# Accessing Components of a List
myListDoc[1] #select 1st component
myListDoc[c(2,3)] #2nd & 3rd components


myListDoc[[3]][1]

myListDoc[[1]][1]
myListDoc[[2]][1]
myListDoc[[3]][1]
myListDoc[[2]][,1]
myListDoc[[3]][,2]
myListDoc[[3]][2,2]


# Modifications
myListDoc[[2]]<-LETTERS[1:8]
myListDoc


# Additions
myListDoc[[4]] <- myMat
myListDoc


myListDoc$y <-1:8
myListDoc


# Deletions
myListDoc[1] <- NULL
myListDoc


myListDoc$y <- NULL
myListDoc




### Data Frames

# Creating a Data Frame
statusDat <-data.frame(edu=c("Uni", "AL", "6F"), inc=c("£60k","£35k", "£25"))
statusDat


Grade <- sample(50:100, 5); Grade

Course <- c("Maths", "En", "Sci", "Geo", "Agr"); Course

Group <-c(rep("A",3), rep("B",2)); Group



schDat <- data.frame(Course, Group, Grade)
schDat


schDatOD <- schDat
statusDatOD <- statusDat


schDatOD
statusDatOD


# Accessing Elements
schDat[2]
schDat$Group

statusDat[1]
statusDat$edu

statusDat[1,2]
statusDat[3,1]


# Modifications
statusDat[1] <-c("PhD", "MSc", "FD")
statusDat

statusDat$inc
statusDat


# Renaming Variables
colnames(statusDat) <- c("Acc", "Sal")
statusDat

names(statusDat) <- c("AccLevel","SalScale")
statusDat

colnames(statusDat)[2] <- c("IncScale")
statusDat




name <- c("Isaac", "Jenny", "Ben", "Mark", "Keith")
schDat[4] <-name
schDat

names(schDat)[4] <- "First Name"
schDat


# Deletions
schDat[-4]

schDat$Course <- NULL
schDat





#### Creating Functions
####------------------------


myCalc <- function(a,b){
  u <- (a+b)/(a-b)
  v <- a^2-b^2
  w <- u*v*(a+b)
  return(w)
}


myCalc(4,5)

myCalc(3,1)

a<-c(5,7)
b<-c(4,1)

myCalc(a,b)
myCalc(2,b)
myCalc(a,1)



myMean <- function(x){
  m <- sum(x)/length(x)
  return(m)
}

x<-c(1,3,5); y <- c(4,6,2)

myMean(x)
myMean(y)
myMean(x+y)








