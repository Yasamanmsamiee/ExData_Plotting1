source("read_hpc.R")
png("plot3.png", width=480, height=480)
data<- read_hpc()
plot(data$Time, data$Sub_metering_1, type="l", col="black",
     xlab="", ylab="Energy sub metering")
lines(data$Time, data$Sub_metering_2, col="red")
lines(data$Time, data$Sub_metering_3, col="blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black", "red","blue"), lty=1)
dev.off()