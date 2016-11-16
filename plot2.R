source("getdata.R")

plot2 <- function(df=NULL) {
  if(is.null(df))
    df <- getdata()
  
  png("plot2.png", width=400, height=400, unit="px")
  
  plot(df$datetime, df$Global_active_power, 
       type="l", xlab="", ylab="Global Active Power (kilowatts)")
  
  dev.off()
}
