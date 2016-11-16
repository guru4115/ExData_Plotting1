source("getdata.R")

plot3 <- function(df=NULL) {
  if(is.null(df))
    df <- getdata()
  
  png("plot3.png", width=400, height=400)
  
  plot(df$datetime, df$Sub_metering_1, type="l", col="black",
       xlab="", ylab="Energy sub metering")
  lines(df$datetime, df$Sub_metering_2, col="red")
  lines(df$datetime, df$Sub_metering_3, col="blue")
  legend("topright",
         col=c("black", "red", "blue"),
         c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
         lty=1)
  
  dev.off()
}