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

