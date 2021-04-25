#Read data frame and assign it to variable dataset
dataset <- read.csv("household_power_consumption.txt", sep=";", header=TRUE, na.strings = "?", colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))

dateTime <- paste(dataset$Date, dataset$Time)
dateTime <- setNames(dateTime, "DateTime")

dataset$Date <- as.POSIXct(dataset$Date, format = "%d/%m/%Y")

beginning <- as.POSIXct("2007-02-01 00:00:00", format = "%Y-%m-%d %H:%M:%S")
end <- as.POSIXct("2007-02-02 00:00:00", format = "%Y-%m-%d %H:%M:%S")
dataset <- subset(dataset, Date>=beginning & Date<=end)

#Combine Date and Time columns
dateTime <- paste(dataset$Date, dataset$Time)
dateTime <- setNames(dateTime, "DateTime")
dataset <- dataset[ , -c(1:2)]
dataset <- cbind(dateTime, dataset)

#Change date class colums and assign it the vector to a variable
dataset$dateTime <- as.POSIXct(dataset$dateTime, format="%Y-%m-%d %T")



