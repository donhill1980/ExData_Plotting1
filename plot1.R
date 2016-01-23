##shorten file name
> dataFile <- "household_power_consumption.txt"

##create data frame from text file, text file does have a header, the ; is used to separate entires 
> data <- read.table(dataFile, header=TRUE, sep=";", na.strings="?", stringsAsFactors=FALSE, dec=".")

##subset data to required dates
> subsetdata <- subset(data, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))


##subset data to required field of global active power and set as numeric
> globalactivepower <- as.numeric(subSetData$Global_active_power)


##initialize png file with default size of 480 x 480
> png("plot1.png")


##create histogram from subsetted data, set main title and x axis label
> hist(globalactivepower, main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

##turn off device
> dev.off()
