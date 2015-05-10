data2<-read.csv2("household_power_consumption.txt",na.strings="?",header=T,sep=";")

data<-data2[data2$Date=="1/2/2007"|data2$Date=="2/2/2007",]

id <- c(1,2:ncol(data))
data[,id] <- as.numeric(as.character(unlist(data[,id])))

#Plot 2
png(filename="plot2.png")
plot(data$Global_active_power,type="l",xaxt="n",ylab="Global Active Power",xlab="",)
axis(1,c(1,nrow(data)/2,nrow(data)),labels=c("Thu","Fri","Sat"))
dev.off()