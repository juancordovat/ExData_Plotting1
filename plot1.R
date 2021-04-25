#Create plot number 1 and mke copy to png file
hist(dataset$Global_active_power, main="Global Active Power", col="red", xlab="Global Active Power (kilowatts)")
dev.copy(png, file="plot1.png")
