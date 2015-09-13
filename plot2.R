source("loadData.R")
data <- loadData()

png(filename = "plot2.png", width = 480, height = 480, units = "px")

with(data, plot(Date, Global_active_power, ylab = "Global Active Power (kilowatts)", xlab = "", type = "l"))

dev.off()
