pwrFile= "household_power_consumption.txt"
Pwr <- read.table(pwrFile, header=TRUE, sep=";", stringsAsFactors = FALSE, dec=".")
Pwr <- subset(Pwr, Pwr$Date == "1/2/2007" | Pwr$Date == "2/2/2007")

png("plot2.png", width=480, height=480)
date_time <- strptime(paste(Pwr$Date, Pwr$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
Gap <- as.numeric(Pwr$Global_active_power)
plot(date_time,  as.numeric(Pwr$Global_active_power), 
     type="l", 
     ylab="Global Active Power (kilowatts)")
dev.off()