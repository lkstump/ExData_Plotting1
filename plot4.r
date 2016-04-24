plot4 <- function() {
        par(mfrow=c(2,2))

        ##First Plot
        plot(dataFrame$timestamp,dataFrame$Global_active_power, type="l", xlab="", ylab="Global Active Power")
        ##Second Plot
        plot(dataFrame$timestamp,dataFrame$Voltage, type="l", xlab="datetime", ylab="Voltage")

        ##Third Plot
        plot(dataFrame$timestamp,dataFrame$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
        lines(dataFrame$timestamp,dataFrame$Sub_metering_2,col="red")
        lines(dataFrame$timestamp,dataFrame$Sub_metering_3,col="blue")
        legend("topright", col=c("black","red","blue"), c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),lty=c(1,1), bty="n", cex=.5) #bty removes the box, cex shrinks the text, spacing added after labels so it renders correctly

        ##4th Plot
        plot(dataFrame$timestamp,dataFrame$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
        dev.copy(png, file="plot4.png", width=480, height=480)
        ##Kill graphics
        dev.off()
}
plot4()