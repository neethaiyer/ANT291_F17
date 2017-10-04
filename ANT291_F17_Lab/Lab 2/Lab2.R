## ANT291 F17 - Lab 2

climate.data <- read.csv("/Users/neethaiyer/Box Sync/Courses_F17/ANT291_F17/ANT291_F17_Lab/Lab 2/climate data.csv")

class(climate.data) ## object dataframe
dim(climate.data) ## object dimensions
dim(climate.data)[1]
colNames <- names(climate.data) ## set vector with colNames
allDates <- climate.data[,2]
class(allDates) ## FACTOR class is used for ANOVA (since categorical)

## DROPPING COLUMNS
dat <- climate.data[,-1]

## SORTING DATA
## slow way
sort(allDates)
dateIndices <- order(climate.data$Date)

## fast way
climate.dataSortedByDate <- dat[order(dat[,2]), ] ## Good practice to have dates in iSO 8601 format
dat <- dat[, c(2,1)] ## reorder columns
names(dat)[1] <- "mean.Temperature.Deviations"
dat$Date <- as.Date(dat$Date) ## change class of Date values to an actual date rather than a character string
class(dat$Date)
range(dat$Date)

## PLOT DATA
plot(dat$Date, dat$mean.Temperature.Deviations, type="l", col="red", bty="l", las=1, xlab="", ylab="Deviation from 1951-1980 average (Celsius)", main="Global surface temperature: 1880-2016")
abline(0,0, lty=2, col=grey(level = 0.5))
lines(dat$Date, predict(loess(mean.Temperature.Deviations~as.numeric(Date), span=0.5, data=dat)), lwd=2)
lines(dat$Date, predict(loess(mean.Temperature.Deviations~as.numeric(Date), span=0.2, data=dat)), lwd=2, lty=3)
lines(dat$Date, predict(loess(mean.Temperature.Deviations~as.numeric(Date), span=2, data=dat)), lwd=2, lty=5)
## ?loess


## HOMEWORK 1
## STANDARD LINEAR REGRESSION WITH ERROR RESIDUALS from randomly generated numbers
x <- runif(n=100, min=0, max=1)

mu <- 0
sigma <- 0.2
epsilon_i <- rnorm(x, mu, sigma)

y <- (-3*x) + 2 + epsilon_i

## plot x and y and fit models to data
model1 <- lm(y ~ x)
model2 <- glm(y ~ x)

summary(model1)
summary(model2)
