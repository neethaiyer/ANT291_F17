####title

x <- 3
y <- 4
plot(x,y)

average.TemperatureThailand <- 84

###see all variables I've created during the session (so far):
objects()
ls()

###remove a specific variable from the workspace
rm(average.TemperatureThailand)
#is equivalent to
rm(list = average.TemperatureThailand)##but this one is better

###remove all objects from the workspace:
rm(list = ls())
x##non longer exists

###create my own function
myFirstFunction <- function(a, b){
  result <- a-b
  return(result)
  }

##
myFirstFunction(a=7, b=3)
myFirstFunction(b=3, a=7)
myFirstFunction(7,3)
myFirstFunction(3,7)

###built-in functions
sqrt(9)
exp(x)
log(10)
log10(10)
round(3.23)
round(3.64)
round(3.5)
floor(3.54)
ceiling(3.2)
round(3.76544865486534, 3)
runif(n=100, min = 4, max=6)

###generate 10 random numbers form a uniform distribution
randomNumbers10 <- runif(n=10, min = 4, max=6)
roundedNumbers <- round(randomNumbers10, 2)
sqrt(randomNumbers10)

roundedNumbers[c(3,4)]

newVar <- c(3,4, 22)###super important. "c" stands for "concatenate"
newVar
class(newVar)###tells me what kind of variable I just created
listNames <- c("Damien", "Dale", "Eric", "Claudio", "Rachel", "Sara")
class(listNames)

"The quick brown fox jumped over the lazy sleeping dog"
##is equivalent to
c("The quick brown fox jumped over the lazy sleeping dog")
c('The quick brown fox jumped over the lazy sleeping dog')
##but not to
c("The quick brown fox jumped over the 'lazy' sleeping dog")##nested quotes!

###let's pick the 3rd and 5th name
listNames[c(3,5)]
listNames[c(5,3)]

###sorting numbers
randomNumbers10Sorted <- sort(randomNumbers10, decreasing=TRUE)
randomNumbers10Sorted <- sort(randomNumbers10, decreasing=FALSE)
order(randomNumbers10)
randomNumbers10[order(randomNumbers10)]###exactly like using sort()
randomNumbers10[order(randomNumbers10, decreasing = TRUE)]

###a few additional useful functions
mean(randomNumbers10)
median(randomNumbers10)
summary(randomNumbers10)
sd(randomNumbers10)
length(randomNumbers10)
min(randomNumbers10)
max(randomNumbers10)
range(randomNumbers10)

###let's load a table
dat <- read.csv(file = "~/Desktop/ANT 291 code lecture 1/climate data.csv")



