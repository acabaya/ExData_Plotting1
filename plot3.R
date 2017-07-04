pwrFile= "household_power_consumption.txt"
Pwr <- read.table(pwrFile, header=TRUE, sep=";", stringsAsFactors = FALSE, dec=".")
Pwr <- subset(Pwr, Pwr$Date == "1/2/2007" | Pwr$Date == "2/2/2007")

png("plot3.png", width=480, height=480)
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
dev.off()