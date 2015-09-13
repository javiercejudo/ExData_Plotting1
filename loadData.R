loadData <- function() {
	header <- read.table('data/household_power_consumption.txt', nrows = 1, header = FALSE, sep =';', stringsAsFactors = FALSE)
	data <- read.table('data/household_power_consumption.txt', sep=";", header = FALSE, na.strings="?", skip = 66636, nrows = 2880)
	colnames(data) <- unlist(header)
	data$Date <- strptime(paste(data$Date,data$Time), "%d/%m/%Y %H:%M:%S")
	
	data
}
