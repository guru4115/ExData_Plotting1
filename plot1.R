source("getdata.R")

####check if data is available
plot1 <- function(df=NULL) {
  if(is.null(df))
    df <- getdata()
  
### png output  
png("plot1.png", width = 480, height = 480, units = "px")

### plot Histogram
hist(df$Global_active_power, 
     main = "Global Active Power", 
     xlab = "Global Active Power(kilowatts)",
     ylab = "Frequency",
     col = "red")

dev.off()

}