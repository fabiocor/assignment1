#Plot 2
png(filename="plot2.png")
plot(data$Global_active_power,type="l",xaxt="n",ylab="Global Active Power",xlab="",)
axis(1,c(1,nrow(data)/2,nrow(data)),labels=c("Thu","Fri","Sat"))
dev.off()