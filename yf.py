#! /usr/bin/python3

import yfinance as yf

msft = yf.Ticker("MSFT")
amzn = yf.Ticker("AMZN")

# get stock info
print(msft.info)

# get historical market data
hist = msft.history(period="5d")
print(hist)
print(msft.ticker)