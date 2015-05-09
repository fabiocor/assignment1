#Plot 4
png(filename="plot4.png")
par(mfrow=c(2,2))

plot(data$Global_active_power,type="l",xaxt="n",ylab="Global Active Power",xlab="",)
axis(1,c(1,nrow(data)/2,nrow(data)),labels=c("Thu","Fri","Sat"))

plot(data$Voltage,type="l",xaxt="n",ylab="Voltage",xlab="",)
axis(1,c(1,nrow(data)/2,nrow(data)),labels=c("Thu","Fri","Sat"))

plot(data$Sub_metering_1,type="l",col="black",xaxt="n",ylab="Energy sub metering",xlab="")
points(data$Sub_metering_2,type="l",col="red")
points(data$Sub_metering_3,type="l",col="blue")
legend("topright", bty="n",lty=1, col = c("black","red","blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))


plot(data$Global_reactive_power,type="l",xaxt="n",ylab="Global_reactive_power",xlab="datetime")
axis(1,c(1,nrow(data)/2,nrow(data)),labels=c("Thu","Fri","Sat"))

dev.off()