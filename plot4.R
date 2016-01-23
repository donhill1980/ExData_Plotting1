
##shorten file name
> dataFile <- "household_power_consumption.txt"

##create data frame from text file, text file does have a header, the ; is used to separate entires 
> data <- read.table(dataFile, header=TRUE, sep=";", na.strings="?", stringsAsFactors=FALSE, dec=".")

##subset data to required dates
> subsetdata <- subset(data, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))


date <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subSetData$Global_active_power)
globalReactivePower <- as.numeric(subSetData$Global_reactive_power)
voltage <- as.numeric(subSetData$Voltage)
subMetering1 <- as.numeric(subSetData$Sub_metering_1)
subMetering2 <- as.numeric(subSetData$Sub_metering_2)
subMetering3 <- as.numeric(subSetData$Sub_metering_3)


png("plot4.png")

par(mfrow = c(2, 2)) 

plot(date, globalActivePower, type="l", xlab="", ylab="Global Active Power", cex=0.2)

plot(date, voltage, type="l", xlab="datetime", ylab="Voltage")

plot(date, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(date, subMetering2, type="l", col="red")
lines(date, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

plot(time, globalReactivePower, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()