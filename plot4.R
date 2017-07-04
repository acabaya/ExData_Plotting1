pwrFile= "household_power_consumption.txt"
Pwr <- read.table(pwrFile, header=TRUE, sep=";", stringsAsFactors = FALSE, dec=".")
Pwr <- subset(Pwr, Pwr$Date == "1/2/2007" | Pwr$Date == "2/2/2007")

png("plot4.png", width=480, height=480)
par(mfrow=c(2,2))

date_time <- strptime(paste(Pwr$Date, Pwr$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

plot(date_time,  as.numeric(Pwr$Global_active_power), 
     type="l", 
     ylab="Global Active Power",
     xlab="")

plot(date_time,  as.numeric(Pwr$Voltage), 
     type="l", 
     xlab="datetime",
     ylab="Voltage")

plot(date_time,  as.numeric(Pwr$Sub_metering_1), 
     type="l", 
     ylab="Energy sub metering",
     col="black",
     xlab="")
lines(date_time,  as.numeric(Pwr$Sub_metering_2), 
     type="l", 
     col="red")
lines(date_time,  as.numeric(Pwr$Sub_metering_3), 
      type="l", 
      col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty=1, lwd=1.5, 
       col=c("black", "red", "blue"))

plot(date_time,  as.numeric(Pwr$Global_reactive_power), 
     type="l", 
     xlab="datetime",
     ylab="Global_reactive_power")

dev.off()