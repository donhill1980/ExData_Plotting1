##shorten file name
> dataFile <- "household_power_consumption.txt"

##create data frame from text file, text file does have a header, the ; is used to separate entires 
> data <- read.table(dataFile, header=TRUE, sep=";", na.strings="?", stringsAsFactors=FALSE, dec=".")

##subset data to required dates
> subsetdata <- subset(data, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))


##subset data to required field of global active power and set as numeric
> globalactivepower <- as.numeric(subSetData$Global_active_power)

##subset data to get date in time in correct format
date <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")


png("plot2.png")

plot(date, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.off()