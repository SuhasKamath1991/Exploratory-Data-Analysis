data <- "./household_power_consumption.txt"
fulldata <- read.csv(data, header=T, sep=';', na.strings="?", stringsAsFactors=F)
fulldata$Date <- as.Date(fulldata$Date, format = "%d/%m/%Y")
fulldata$Time <- format(fulldata$Time, format = "%H:%M:%S")
reqdata <- subset(fulldata, Date == "2007-02-01"|Date == "2007-02-02")
png("plot1.png", height = 480, width = 480)
hist(reqdata$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()