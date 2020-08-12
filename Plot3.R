# Set WD
setwd("D:/Coursera/Exploratory Data Analysis/Semana 1/Proyecto")

# Read files
raw.data <- read.table("D:/Coursera/Exploratory Data Analysis/Semana 1/Proyecto/household_power_consumption.txt", sep = ";", header = T, na.strings = "?")

# Format fiels
raw.data$Date <- as.Date(raw.data$Date, format = "%d/%m/%Y")
raw.data$Global_active_power <- as.numeric(raw.data$Global_active_power)
raw.data$DateTime <- paste(raw.data$Date, raw.data$Time)
raw.data$DateTime <- as.POSIXct(raw.data$DateTime)

#Filter Data by Date 
filter.data <- raw.data[raw.data$Date >= "2007-02-01" & raw.data$Date <= "2007-02-02",]

# Plot 3
plot(filter.data$DateTime, filter.data$Sub_metering_1, type="l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")
lines(filter.data$DateTime, filter.data$Sub_metering_2, col='red')
lines(filter.data$DateTime, filter.data$Sub_metering_3, col='blue')
legend("topright", col = c("black","red","blue"), lwd = c(1,1,1),
       c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))