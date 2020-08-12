# Set WD
setwd("D:/Coursera/Exploratory Data Analysis/Semana 1/Proyecto")

# Read files
raw.data <- read.table("D:/Coursera/Exploratory Data Analysis/Semana 1/Proyecto/household_power_consumption.txt", sep = ";", header = T, na.strings = "?")

# Format fiels
raw.data$Date <- as.Date(raw.data$Date, format = "%d/%m/%Y")
raw.data$Global_active_power <- as.numeric(raw.data$Global_active_power)

#Filter Data by Date 
filter.data <- raw.data[raw.data$Date >= "2007-02-01" & raw.data$Date <= "2007-02-02",]

# Plot 1
hist(filter.data$Global_active_power, main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)",
     ylab = "Frecuency",
     col = "red")
