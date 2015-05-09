#Plot 3
png(filename="plot3.png")
plot(data$Sub_metering_1,type="l",col="black",xaxt="n",ylab="Energy sub metering",xlab="")
points(data$Sub_metering_2,type="l",col="red")
points(data$Sub_metering_3,type="l",col="blue")
legend("topright", border="white",lty=1, col = c("black","red","blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))
dev.off()