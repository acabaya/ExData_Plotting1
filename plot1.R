

pwrFile= "household_power_consumption.txt"
Pwr <- read.table(pwrFile, header=TRUE, sep=";", stringsAsFactors = FALSE, dec=".")
Pwr <- subset(Pwr, Pwr$Date == "1/2/2007" | Pwr$Date == "2/2/2007")

png("plot1.png", width=480, height=480)
hist(as.numeric(subPwr$Global_active_power), 
     col="red", 
     xlab="Global Active Power (kilowatts)", 
     main="Global Active Power")
dev.off()
