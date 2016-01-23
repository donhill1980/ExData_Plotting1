
##shorten file name
> dataFile <- "household_power_consumption.txt"

##create data frame from text file, text file does have a header, the ; is used to separate entires 
> data <- read.table(dataFile, header=TRUE, sep=";", na.strings="?", stringsAsFactors=FALSE, dec=".")

##subset data to required dates
> subsetdata <- subset(data, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))


##subset data to required field of global active power and set as numeric
> globalactivepower <- as.numeric(subSetData$Global_active_power)


datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

subMetering1 <- as.numeric(subSetData$Sub_metering_1)
subMetering2 <- as.numeric(subSetData$Sub_metering_2)
subMetering3 <- as.numeric(subSetData$Sub_metering_3)

png("plot3.png")
plot(date, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(date, subMetering2, type="l")
lines(date, subMetering3, type="l")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()