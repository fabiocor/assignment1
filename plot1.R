data2<-read.csv2("household_power_consumption.txt",na.strings="?",header=T,sep=";")

data<-data2[data2$Date=="1/2/2007"|data2$Date=="2/2/2007",]

id <- c(1,2:ncol(data))
data[,id] <- as.numeric(as.character(unlist(data[,id])))

#Plot 1
png(filename="plot1.png")
hist(data$Global_active_power,col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")
dev.off()