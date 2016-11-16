source("getdata.R")



plot4 <- function(df=NULL) {
  if(is.null(df))
    df <- getdata()
  
  png("plot4.png", width=400, height=400)
  
  par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))
  with(df, {
    #### Plot 1
    plot(Global_active_power~datetime, type="l", 
         ylab="Global Active Power (kilowatts)", xlab="")
    #### PLot 2
    plot(Voltage~datetime, type="l", 
         ylab="Voltage (volt)", xlab="")
    
    #### Plot 3
    plot(Sub_metering_1~datetime, type="l", 
         ylab="Global Active Power (kilowatts)", xlab="")
    lines(Sub_metering_2~datetime,col='Red')
    lines(Sub_metering_3~datetime,col='Blue')
    legend("topright",
           c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
           col=c("black", "red", "blue"), 
           lty=1, bty="n", cex = 0.8 )
    ###Plot 4
    plot(Global_reactive_power~datetime, type="l", 
         ylab="Global Rective Power (kilowatts)",xlab="")
  })
  
  dev.off()
}