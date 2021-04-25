#Create plot number 2 and mke copy to png file
with(dataset, plot(Global_active_power~dateTime,, xlab="", type="l", ylab="Global Active Power (kilowatts)"))
dev.copy(png, file="plot2.png")
