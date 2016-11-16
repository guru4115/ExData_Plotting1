#### Loads data into R, convert date and time variable, subset required dates

getdata= function(){
library(data.table)
### Load data

df  <- fread("household_power_consumption.txt", na.strings = "?")

### set as date variable
df$Date = as.Date(df$Date, format= "%d/%m/%Y")

###subset dates
df <- df[(df$Date=="2007-02-01") | (df$Date=="2007-02-02"),]

###set datetime variable
df <- transform(df, datetime=as.POSIXct(paste(Date, Time)), "%d/%m/%Y %H:%M:%S")






return(df)
}