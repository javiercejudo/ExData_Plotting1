source("loadData.R")
data <- loadData()

png(filename = "plot4.png", width = 480, height = 480, units ="px")

par(mfrow = c(2, 2))

with(data, plot(Date, Global_active_power, ylab = "Global Active Power", xlab = "", type = "l"))

with(data, plot(Date, Voltage, xlab = "datetime", type = "l"))

linesCol <- c("black","red","blue")

with(data, {
	plot(Date, Sub_metering_1, xlab ="", ylab ="Energy sub metering", type ="l", col = linesCol[1])
	lines(Date, Sub_metering_2, col = linesCol[2])
	lines(Date, Sub_metering_3, col = linesCol[3])
})

legend("topright", lty="solid", col = linesCol, legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), bty = "n")

with(data, plot(Date, Global_reactive_power, xlab = "datetime", type = "l"))

dev.off()
