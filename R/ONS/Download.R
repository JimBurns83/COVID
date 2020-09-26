library(readr)
library(lubridate)
library("rjson")
if(!file.exists("ons.csv")){
  download.file("https://opendata.ecdc.europa.eu/covid19/casedistribution/csv/", "ons.csv")
}

price_list <- read_csv("ons.csv") # Point to local copy
result <- fromJSON(file ="ons.json")
titles <- names(as.data.frame(result$records[1]))

