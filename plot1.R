## Reads the datafile

dataFile <- "~/Downloads/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#str(subSetData)
date_time <- strptime(paste(subSetData$Date, subsetData$Time, sep=" "), "%d%m%Y %H:%M:%S")
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("~/course5/Project1/plot2.png", width=480, height=480)
plot(date_time, globalActivePower, type = "l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()