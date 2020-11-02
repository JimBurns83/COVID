install.packages("lubridate")        
install.packages("plyr")# Install & load lubridate
library(plyr)
library(readr)
library(lubridate)
library("rjson")
library(data.table)
if(!file.exists("ons.csv")){
  download.file("https://opendata.ecdc.europa.eu/covid19/casedistribution/csv/", "ons.csv")
}

price_list <- read_csv("ons.csv") # Point to local copy
result <- fromJSON(file ="ons.json")
titles <- names(as.data.frame(head(result$records)))

my_time <- 1412368227    
as_datetime(my_time)   
date_str <- "26/09/2020"
dd <- as_date(date_str, format="%d/%m/%Y")
as.POSIXct.Date(dd)
origin <- Sys.Date()
dif <- difftime(dd,origin, units = "days")
dif <- as.integer(dif)


obs <- price_list["dateRep"]
for(i in 1:nrow(obs)) {
  print(obs[i,,1])
}