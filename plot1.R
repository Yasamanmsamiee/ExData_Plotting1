source("read_hpc.R")
png("plot1.png", width=480, height=480)
data<- read_hpc()
hist(data$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", ylab="Frequency", main="Global Active Power")

dev.off()