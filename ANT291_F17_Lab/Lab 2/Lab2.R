## ANT291 F17 - Lab 2

climate.data <- read.csv("/Users/neethaiyer/Box Sync/Courses_F17/ANT291_F17/ANT291_F17_Lab/Lab 2/climate data.csv")

class(climate.data) ## object dataframe
dim(climate.data) ## object dimensions
dim(climate.data)[1]
colNames <- names(climate.data) ## set vector with colNames
allDates <- climate.data[,2]
class(allDates) ## FACTOR class is used for ANOVA (since categorical)

## SORTING DATA
## slow way
sort(allDates)
dateIndices <- order(climate.data$Date)

## fast way
climate.dataSortedByDate <- climate.data[order(climate.data[,2]), ] ## Good practice to have dates in iSO 8601 format
