source("loadData.R")
data <- loadData()

png(filename="plot1.png", width=480, height=480, units="px")

hist(data$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

dev.off()
