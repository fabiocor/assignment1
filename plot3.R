data2<-read.csv2("household_power_consumption.txt",na.strings="?",header=T,sep=";")

data<-data2[data2$Date=="1/2/2007"|data2$Date=="2/2/2007",]

id <- c(1,2:ncol(data))
data[,id] <- as.numeric(as.character(unlist(data[,id])))

#Plot 3
png(filename="plot3.png")
plot(data$Sub_metering_1,type="l",col="black",xaxt="n",ylab="Energy sub metering",xlab="")
points(data$Sub_metering_2,type="l",col="red")
points(data$Sub_metering_3,type="l",col="blue")
legend("topright", border="white",lty=1, col = c("black","red","blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))
dev.off()