##### Task 2 #####

## Plot all of sub-meter 1
##plot(newDF1$Sub_metering_1)
##plot(newDF$Sub_metering_1)
# Error in plot.new() : figure margins too large


## Subset the second week of 2008 - All Observations
houseWeek <- filter(newDF1, year==2008 & week==2)
## PLot sbuset houseWeek
plot(houseWeek$Sub_metering_1)

houseWeek <- filter(newDF1, year==2008 & week==1)
## PLot sbuset houseWeek
plot(houseWeek$Sub_metering_1)



## ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
## 2008 Power Usage Analysis

## Subset the 9th day of January 2008 - All observations

## Plot sub-meter 1
# library(plotly)
# library(plotly)
# install.packages("lazyeval")
# library(lazyeval)

library(plotly)
houseDay <- filter(newDF1, year == 2008 & month == 1 & day == 9)
plot_ly(houseDay, x = ~houseDay$DateTime, y = ~houseDay$Sub_metering_1, type = 'scatter', mode = 'lines')


## Plot sub-meter 1,2 and 3 with title, legend and labels - All observations
plot_ly(houseDay, x = ~houseDay$DateTime, y = ~houseDay$Sub_metering_1, name = 'sub-meter 1', type = 'scatter', mode='lines') %>%
  add_trace(y=~houseDay$Sub_metering_2, name='sub-meter 2', mode='lines') %>%
  add_trace(y=~houseDay$Sub_metering_3, name='sub-meter 3', mode='lines') %>%
  layout(title="Power Consumption January 9th, 2008",
         xaxis = list(title="Time"),
         yaxis = list(title="Power(watt-hours)"))



## Subset the 9th day of January 2008 - 10 Minute frequency
houseDay10 <- filter(newDF1, year == 2008 & month == 1 & day == 9 & (minute == 0 | minute == 10 | minute == 20 | minute == 30 | minute == 40 | minute == 50))        

## Plot sub-meter 1, 2 and 3 with title, legend and labels - 10 Minute frequency
plot_ly(houseDay10, x = ~houseDay10$DateTime, y = ~houseDay10$Sub_metering_1, name = 'sub-meter 1', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~houseDay10$Sub_metering_2, name = 'sub-meter 2', mode = 'lines') %>%
  add_trace(y = ~houseDay10$Sub_metering_3, name = 'sub-meter 3', mode = 'lines') %>%
  layout(title = "Power Consumption January 9th, 2008 - 10 Mins Frequency",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))



##### **********************************************************
## Subset the 2nd week of July, 2008 - 10 Minute frequency
houseWeek2 <- filter(newDF1, year == 2008 & week == 2 & (minute == 0 | minute == 10 | minute == 20 | minute == 30 | minute == 40 | minute == 50))        

## Plot sub-meter 1, 2 and 3 with title, legend and labels - 10 Minute frequency
plot_ly(houseWeek2, x = ~houseWeek2$DateTime, y = ~houseWeek2$Sub_metering_1, name = 'sub-meter 1', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~houseWeek2$Sub_metering_2, name = 'sub-meter 2', mode = 'lines') %>%
  add_trace(y = ~houseWeek2$Sub_metering_3, name = 'sub-meter 3', mode = 'lines') %>%
  layout(title = "Power Consumption 2nd Week of 2008 - 10 Mins Frequency",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))

## Subset the 1st week of 2008 - 10 Minute frequency
houseWeek1 <- filter(newDF1, year == 2008 & week == 1 & (minute == 0 | minute == 10 | minute == 20 | minute == 30 | minute == 40 | minute == 50))        

## Plot sub-meter 1, 2 and 3 with title, legend and labels - 10 Minute frequency
plot_ly(houseWeek1, x = ~houseWeek1$DateTime, y = ~houseWeek1$Sub_metering_1, name = 'sub-meter 1', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~houseWeek1$Sub_metering_2, name = 'sub-meter 2', mode = 'lines') %>%
  add_trace(y = ~houseWeek1$Sub_metering_3, name = 'sub-meter 3', mode = 'lines') %>%
  layout(title = "Power Consumption 1st Week of 2008 - 10 Mins Frequency",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))




## Subset the 2nd week of July, 2008 - 10 Minute frequency
houseWeek10 <- filter(newDF1, year == 2008 & week == 10 & (minute == 0 | minute == 10 | minute == 20 | minute == 30 | minute == 40 | minute == 50))        

## Plot sub-meter 1, 2 and 3 with title, legend and labels - 10 Minute frequency
plot_ly(houseWeek10, x = ~houseWeek10$DateTime, y = ~houseWeek10$Sub_metering_1, name = 'sub-meter 1', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~houseWeek10$Sub_metering_2, name = 'sub-meter 2', mode = 'lines') %>%
  add_trace(y = ~houseWeek10$Sub_metering_3, name = 'sub-meter 3', mode = 'lines') %>%
  layout(title = "Power Consumption 10th week of 2008 - 10 Mins Frequency",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))


## 1st Quarter of 2008
quarter_1_2008 <- filter(newDF1, year == 2008 & quarter == 1 & (minute == 0))
plot_ly(quarter_2008, x = ~quarter_2008$DateTime, y = ~quarter_2008$Sub_metering_1, name = 'sub-meter 1', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~quarter_2008$Sub_metering_2, name = 'sub-meter 2', mode = 'lines') %>%
  add_trace(y = ~quarter_2008$Sub_metering_3, name = 'sub-meter 3', mode = 'lines') %>%
  layout(title = "Power Consumption 1st Quarter, 2008 ",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))


## 4th Quarter of 2008
quarter_4_2008 <- filter(newDF1, year == 2008 & quarter == 4 & (minute == 0))
plot_ly(quarter_4_2008, x = ~quarter_4_2008$DateTime, y = ~quarter_4_2008$Sub_metering_1, name = 'sub-meter 1', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~quarter_4_2008$Sub_metering_2, name = 'sub-meter 2', mode = 'lines') %>%
  add_trace(y = ~quarter_4_2008$Sub_metering_3, name = 'sub-meter 3', mode = 'lines') %>%
  layout(title = "Power Consumption 4th Quarter, 2008 ",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))


## September of 2008
month_9_2008 <- filter(newDF1, year == 2008 & month == 9 & (minute == 0))
plot_ly(month_9_2008, x = ~month_9_2008$DateTime, y = ~month_9_2008$Sub_metering_1, name = 'sub-meter 1', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~month_9_2008$Sub_metering_2, name = 'sub-meter 2', mode = 'lines') %>%
  add_trace(y = ~month_9_2008$Sub_metering_3, name = 'sub-meter 3', mode = 'lines') %>%
  layout(title = "Power Consumption September, 2008",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))


## August of 2008
month_8_2008 <- filter(newDF1, year == 2008 & month == 8 & (minute == 0))
plot_ly(month_8_2008, x = ~month_8_2008$DateTime, y = ~month_8_2008$Sub_metering_1, name = 'sub-meter 1', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~month_8_2008$Sub_metering_2, name = 'sub-meter 2', mode = 'lines') %>%
  add_trace(y = ~month_8_2008$Sub_metering_3, name = 'sub-meter 3', mode = 'lines') %>%
  layout(title = "Power Consumption August, 2008",
         xaxis = list(title = "Time"),
         yaxis = list (title = "Power (watt-hours)"))


## whole year of 2018
year_2008 <- filter(newDF1, year == 2008 & (minute == 0))

plot_ly(year_2008, x = ~year_2008$DateTime, y = ~year_2008$Sub_metering_1, name = 'sub-meter 1', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~year_2008$Sub_metering_2, name = 'sub-meter 2', mode = 'lines') %>%
  add_trace(y = ~year_2008$Sub_metering_3, name = 'sub-meter 3', mode = 'lines') %>%
  layout(title = "Power Consumption year 2008",
         xaxis = list(title = "Month"),
         yaxis = list (title = "Power (watt-hours)"))



### Pie Chart Analysis ###
# group = c("sub_meter 1", "sub_meter 2", "sub_meter 3")
# value = c(newDF1, year=2009, month=1, day=9)
# ggpie(newDF1, "value", label = "group")      ggpie not supported by this version of R



## +++++++++++++++++++++++++++++++++++++++++++++++++++
### PIE CHART - Percentage of total power use over an entire year by each sub-meter
year_2008_filt<-filter(newDF1,year==2008 & minute==0)
yr_2008_totals<-data.frame(matrix(ncol=1,nrow=3))
colnames(yr_2008_totals)<-c('cons')
yr_2008_totals[1,1]<-sum(year_2008_filt$Sub_metering_1)
yr_2008_totals[2,1]<-sum(year_2008_filt$Sub_metering_2)
yr_2008_totals[3,1]<-sum(year_2008_filt$Sub_metering_3)


lbls<-c('sub-meter 1','sub-meter 2','sub-meter 3')

plot_ly(yr_2008_totals, values=~cons, labels=~lbls, type='pie', sort=FALSE, title='Power Consumption Year 2008')


### Percentage of total power use over a day by each sub-meter

day_2008_filt<-filter(newDF1, year == 2008 & month == 1 & day == 9)
yr_2008_totals<-data.frame(matrix(ncol=1,nrow=3))
colnames(yr_2008_totals)<-c('cons')
yr_2008_totals[1,1]<-sum(day_2008_filt$Sub_metering_1)
yr_2008_totals[2,1]<-sum(day_2008_filt$Sub_metering_2)
yr_2008_totals[3,1]<-sum(day_2008_filt$Sub_metering_3)

lbls<-c('sub-meter 1','sub-meter 2','sub-meter 3')

plot_ly(yr_2008_totals, values=~cons, labels=~lbls, type='pie', sort=FALSE, title='Power Consumption Jan 9th, 2008')



### Percentage of total power use at various times of day by each sub-meter
# betwen 6-11am
hour_2008_filt1<-filter(newDF1, year == 2008 & month == 1 & day == 9 & hour == 6 | hour == 7 | hour == 8 | hour == 9 | hour == 10 | hour == 11 | hour == 12 )
yr_2008_totals<-data.frame(matrix(ncol=1,nrow=3))
colnames(yr_2008_totals)<-c('cons')
yr_2008_totals[1,1]<-sum(hour_2008_filt$Sub_metering_1)
yr_2008_totals[2,1]<-sum(hour_2008_filt$Sub_metering_2)
yr_2008_totals[3,1]<-sum(hour_2008_filt$Sub_metering_3)

lbls<-c('sub-meter 1','sub-meter 2','sub-meter 3')

plot_ly(yr_2008_totals, values=~cons, labels=~lbls, type='pie', sort=FALSE, title='Power Consumption between 6-12am on Jan 9th, 2008')


# betwen 12-6pm
hour_2008_filt2<-filter(newDF1, year == 2008 & month == 1 & day == 9 & hour == 12 | hour == 13 | hour == 14 | hour == 15 | hour == 16 | hour == 17 | hour == 18 )
yr_2008_totals<-data.frame(matrix(ncol=1,nrow=3))
colnames(yr_2008_totals)<-c('cons')
yr_2008_totals[1,1]<-sum(hour_2008_filt2$Sub_metering_1)
yr_2008_totals[2,1]<-sum(hour_2008_filt2$Sub_metering_2)
yr_2008_totals[3,1]<-sum(hour_2008_filt2$Sub_metering_3)

lbls<-c('sub-meter 1','sub-meter 2','sub-meter 3')

plot_ly(yr_2008_totals, values=~cons, labels=~lbls, type='pie', sort=FALSE, title='Power Consumption between 12-6pm on Jan 9th, 2008')



# betwen 7pm-12am
hour_2008_filt3<-filter(newDF1, year == 2008 & month == 1 & day == 9 & hour == 18 | hour == 19 | hour == 20 | hour == 21 | hour == 22 | hour == 23 | hour == 24 )
yr_2008_totals<-data.frame(matrix(ncol=1,nrow=3))
colnames(yr_2008_totals)<-c('cons')
yr_2008_totals[1,1]<-sum(hour_2008_filt3$Sub_metering_1)
yr_2008_totals[2,1]<-sum(hour_2008_filt3$Sub_metering_2)
yr_2008_totals[3,1]<-sum(hour_2008_filt3$Sub_metering_3)

lbls<-c('sub-meter 1','sub-meter 2','sub-meter 3')

plot_ly(yr_2008_totals, values=~cons, labels=~lbls, type='pie', sort=FALSE, title='Power Consumption between 6pm-12am on Jan 9th, 2008')





## ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
## 2007 Power Usage Analysis

## Create similar subset for a whole year of 2007
year_2007 <- filter(newDF1, year == 2007 & (minute == 0))

plot_ly(year_2007, x = ~year_2007$DateTime, y = ~year_2007$Sub_metering_1, name = 'sub-meter 1', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~year_2007$Sub_metering_2, name = 'sub-meter 2', mode = 'lines') %>%
  add_trace(y = ~year_2007$Sub_metering_3, name = 'sub-meter 3', mode = 'lines') %>%
  layout(title = "Power Consumption year 2007",
         xaxis = list(title = "Month"),
         yaxis = list (title = "Power (watt-hours)"))



## Create similar subset for a whole year of 2009
year_2009 <- filter(newDF1, year == 2009 & (minute == 0))

plot_ly(year_2009, x = ~year_2009$DateTime, y = ~year_2009$Sub_metering_1, name = 'sub-meter 1', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~year_2009$Sub_metering_2, name = 'sub-meter 2', mode = 'lines') %>%
  add_trace(y = ~year_2009$Sub_metering_3, name = 'sub-meter 3', mode = 'lines') %>%
  layout(title = "Power Consumption year 2009",
         xaxis = list(title = "Month"),
         yaxis = list (title = "Power (watt-hours)"))


##### plotting year 2007 / 2008 / 2009 only showing sub-meter 1 / sub-meter 2 - sub-meter 3
## year 2007
plot_ly(year_2007, x = ~year_2007$DateTime, y = ~year_2007$Sub_metering_1, name = 'sub-meter 1', type = 'scatter', mode = 'lines') %>%
  layout(title = "Sub-meter 1 Usage year 2007",
         xaxis = list(title = "Month"),
         yaxis = list (title = "Power (watt-hours)"))

plot_ly(year_2007, x = ~year_2007$DateTime, y = ~year_2007$Sub_metering_2, name = 'sub-meter 1', type = 'scatter', mode = 'lines') %>%
  layout(title = "Sub-meter 2 Usage year 2007", col = "red",
         xaxis = list(title = "Month"),
         yaxis = list (title = "Power (watt-hours)"))

plot_ly(year_2007, x = ~year_2007$DateTime, y = ~year_2007$Sub_metering_3, name = 'sub-meter 1', type = 'scatter', mode = 'lines') %>%
  layout(title = "Sub-meter 3 Usage year 2007", col = "green",
         xaxis = list(title = "Month"),
         yaxis = list (title = "Power (watt-hours)"))

## Year 2008
plot_ly(year_2008, x = ~year_2008$DateTime, y = ~year_2008$Sub_metering_1, name = 'sub-meter 1', type = 'scatter', mode = 'lines') %>%
  layout(title = "Sub-meter 1 Usage year 2008",
         xaxis = list(title = "Month"),
         yaxis = list (title = "Power (watt-hours)"))

plot_ly(year_2008, x = ~year_2008$DateTime, y = ~year_2008$Sub_metering_2, name = 'sub-meter 1', type = 'scatter', mode = 'lines') %>%
  layout(title = "Sub-meter 2 Usage year 2008",
         xaxis = list(title = "Month"),
         yaxis = list (title = "Power (watt-hours)"))

plot_ly(year_2008, x = ~year_2008$DateTime, y = ~year_2008$Sub_metering_3, name = 'sub-meter 1', type = 'scatter', mode = 'lines') %>%
  layout(title = "Sub-meter 3 Usage year 2008",
         xaxis = list(title = "Month"),
         yaxis = list (title = "Power (watt-hours)"))


## Year 2009
plot_ly(year_2009, x = ~year_2009$DateTime, y = ~year_2009$Sub_metering_1, name = 'sub-meter 1', type = 'scatter', mode = 'lines') %>%
  layout(title = "Sub-meter 1 Usage year 2009",
         xaxis = list(title = "Month"),
         yaxis = list (title = "Power (watt-hours)"))

plot_ly(year_2009, x = ~year_2009$DateTime, y = ~year_2009$Sub_metering_2, name = 'sub-meter 1', type = 'scatter', mode = 'lines') %>%
  layout(title = "Sub-meter 2 Usage year 2009",
         xaxis = list(title = "Month"),
         yaxis = list (title = "Power (watt-hours)"))

plot_ly(year_2009, x = ~year_2009$DateTime, y = ~year_2009$Sub_metering_3, name = 'sub-meter 1', type = 'scatter', mode = 'lines') %>%
  layout(title = "Sub-meter 3 Usage year 2009",
         xaxis = list(title = "Month"),
         yaxis = list (title = "Power (watt-hours)"))





## +++++++++++++++++++++++++++++++++++++++++++++++++++++++
##### Step 2 - Prepare to analyze the data #####

library(ggplot2)
library(ggfortify)

## Subset to one observation per week on Mondays at 8:00pm for 2007, 2008 and 2009
##### Weekly Power Usage Sub-Meter 3
house070809weekly <- filter(newDF1, weekday == 'Monday' & hour == 20 & minute == 1)

## Create TS object with SubMeter3
tsSM3_070809weekly <- ts(house070809weekly$Sub_metering_3, 
                         frequency=52, start=c(2007,1))
tsSM3_070809weekly
# Time Series:
# Start = c(2007, 1) 
# End = c(2010, 1) 
# Frequency = 52 
# [1] 18 17 17  0 17  0  0 16  0 18 17 17  0  0 17 18  0  0 17  0  0 17  0  0  0 19  0  0  0  0  0  0  0  0  0  0  0  0
# [39] 18 17 17  0 18  0  0  0 17  0  0  0 17 18 17  0  0  0  0  0 17  0  0  0  0  0  0  0  0  0  1  0  1 18  1  1  0  0
# [77]  1 12  1  1  1  1  1  1  0  0  0  1  1 18  1  1 12  1  1  0  0  0  0  0  0  0  0  0 18  0  0  0  0  0  0 17  0  0
# [115]  0  0  0  0  0  1  1  1  1  1  1 17 11  1 18  1  1  0  0  1  1  0 19  1  1  1 10  1  1  0  1  1  1  1 19  1 18  1
# [153]  1 10 19  0 18

autoplot(tsSM3_070809weekly)

## Plot sub-meter 3 with autoplot - add labels, color
autoplot(tsSM3_070809weekly, ts.colour = 'red', xlab = "Time", ylab = "Watt Hours", 
         main = "Sub-meter 3 - Weekly Power Usage")

## Plot sub-meter 3 with plot.ts
plot.ts(tsSM3_070809weekly, col = "red",  xlab = "Time", ylab = "Watt Hours", main = "Sub-meter 3")



###### Monthly Power Usage - Sub-Meter 2
house070809monthly <- filter(newDF1, day == 1 & hour == 20 & minute == 1)

tsSM2_070809monthly <- ts(house070809monthly$Sub_metering_2, 
                           frequency=12, start=c(2007,1))
autoplot(tsSM2_070809monthly, ts.colour = 'dark green', xlab = "Time", ylab = "Watt Hours", 
         main = "Sub-meter 2 - Monthly Power Usage")

# Quarterly Power Usage - Sub-Meter 2
house070809quqrterly <- filter(newDF1, month == 1 & weekday == 'Monday' & hour == 20 & minute == 1)
tsSM2_070809quarterly <- ts(house070809quqrterly$Sub_metering_2, 
                            frequency=4, start=c(2007,1)) 
autoplot(tsSM2_070809quarterly, ts.colour = 'dark green', xlab = "Time", ylab = "Watt Hours", 
        main = "Sub-meter 2 - Quarterly Power Usage")


###### Daily Power Usage - Sub-Meter 1
house070809daily <- filter(newDF1, hour == 20 & minute == 1)

tsSM1_070809daily <- ts(house070809daily$Sub_metering_1, 
                          frequency=365, start=c(2007,1))
autoplot(tsSM1_070809daily, ts.colour = 'blue', xlab = "Time", ylab = "Watt Hours", 
         main = "Sub-meter 1 - Daily Power Usage")

## Hourly Power Usage - Sub-Meter 1
house070809hourly <- filter(newDF1, week == 1 & day == 1)

tsSM1_070809hourly <- ts(house070809hourly$Sub_metering_1, 
                        frequency=1440, start=c(2007,1))
autoplot(tsSM1_070809hourly, ts.colour = 'blue', xlab = "Time", ylab = "Watt Hours", 
         main = "Sub-meter 1 - Hourly Power Usage")







##### Step 3 - Forecasting a time series #####

## Apply time series linear regression to the sub-meter 3 ts object and use summary to obtain R2 and RMSE from the model you built
library(forecast)
fitSM3 <- tslm(tsSM3_070809weekly ~ trend + season) 
summary(fitSM3)
# Call:
#   tslm(formula = tsSM3_070809weekly ~ trend + season)
# 
# Residuals:
#   Min       1Q   Median       3Q      Max 
# -12.0000  -4.2882  -0.3333   2.0452  14.0452 
# 
# Coefficients:
#   Estimate Std. Error t value Pr(>|t|)    
# (Intercept)  19.84427    3.58071   5.542 2.27e-07 ***
#   trend        -0.02651    0.01277  -2.075 0.040430 *  
#   season2     -12.74608    5.25762  -2.424 0.017063 *  
#   season3     -12.71957    5.25686  -2.420 0.017272 *  
#   season4     -18.35972    5.25613  -3.493 0.000703 ***
#   season5     -12.66655    5.25543  -2.410 0.017700 *  
#   season6     -18.30670    5.25476  -3.484 0.000725 ***
#   season7     -12.61353    5.25412  -2.401 0.018141 *  
#   season8      -7.25368    5.25352  -1.381 0.170322    
# season9     -18.22717    5.25294  -3.470 0.000759 ***
#   season10    -12.20066    5.25240  -2.323 0.022133 *  
#   season11    -12.50749    5.25189  -2.382 0.019060 *  
#   season12    -12.48098    5.25141  -2.377 0.019298 *  
#   season13    -18.12114    5.25096  -3.451 0.000808 ***
#   season14    -18.09463    5.25054  -3.446 0.000821 ***
#   season15    -12.40145    5.25015  -2.362 0.020032 *  
#   season16    -11.70827    5.24979  -2.230 0.027880 *  
#   season17    -17.34843    5.24946  -3.305 0.001305 ** 
#   season18    -17.65525    5.24917  -3.363 0.001079 ** 
#   season19    -11.62874    5.24890  -2.215 0.028909 *  
#   season20    -11.60223    5.24867  -2.211 0.029261 *  
#   season21    -17.24239    5.24847  -3.285 0.001389 ** 
#   season22     -6.21588    5.24830  -1.184 0.238970    
# season23    -14.18937    5.24816  -2.704 0.008012 ** 
#   season24    -17.49620    5.24805  -3.334 0.001188 ** 
#   season25    -11.46969    5.24797  -2.186 0.031092 *  
#   season26     -7.10984    5.24792  -1.355 0.178420    
# season27    -17.08333    5.24791  -3.255 0.001529 ** 
#   season28    -17.39016    5.24792  -3.314 0.001268 ** 
#   season29    -17.36365    5.24797  -3.309 0.001288 ** 
#   season30    -17.00380    5.24805  -3.240 0.001605 ** 
#   season31    -16.97729    5.24816  -3.235 0.001632 ** 
#   season32    -17.28412    5.24830  -3.293 0.001354 ** 
#   season33    -11.25761    5.24847  -2.145 0.034286 *  
#   season34    -17.23110    5.24867  -3.283 0.001400 ** 
#   season35    -17.20459    5.24890  -3.278 0.001423 ** 
#   season36    -16.84475    5.24917  -3.209 0.001771 ** 
#   season37    -13.81824    5.24946  -2.632 0.009772 ** 
#   season38    -11.12506    5.24979  -2.119 0.036459 *  
#   season39    -10.76522    5.25015  -2.050 0.042835 *  
#   season40    -11.40537    5.25054  -2.172 0.032110 *  
#   season41     -7.37886    5.25096  -1.405 0.162929    
# season42    -16.68569    5.25141  -3.177 0.001957 ** 
#   season43    -10.65918    5.25189  -2.030 0.044952 *  
#   season44    -16.96600    5.25240  -3.230 0.001657 ** 
#   season45    -10.93949    5.25294  -2.083 0.039746 *  
#   season46    -16.91298    5.25352  -3.219 0.001714 ** 
#   season47     -5.55314    5.25412  -1.057 0.293001    
# season48    -16.85996    5.25476  -3.209 0.001774 ** 
#   season49    -16.83345    5.25543  -3.203 0.001805 ** 
#   season50    -13.80694    5.25613  -2.627 0.009921 ** 
#   season51     -5.11377    5.25686  -0.973 0.332920    
# season52    -11.08726    5.25762  -2.109 0.037363 *  
#   ---
#   Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
# 
# Residual standard error: 6.871 on 104 degrees of freedom
# Multiple R-squared:  0.3831,	Adjusted R-squared:  0.07461 
# F-statistic: 1.242 on 52 and 104 DF,  p-value: 0.1747

# get RMSE score
accuracy(fitSM3)
#                      ME     RMSE      MAE   MPE  MAPE   MASE      ACF1
# Training set 4.186319e-16 5.592356 4.300077 NaN  Inf 0.742612 0.1055588


## Create the forecast for sub-meter 3. Forecast ahead 20 time periods 
forecastfitSM3 <- forecast(fitSM3, h=20)
## Plot the forecast for sub-meter 3. 
plot(forecastfitSM3)

## Create sub-meter 3 forecast with confidence levels 80 and 90
forecastfitSM3c <- forecast(fitSM3, h=20, level=c(80,90))

## Plot sub-meter 3 forecast, limit y and add labels
plot(forecastfitSM3c, ylim = c(0, 20), ylab= "Watt-Hours", xlab="Time", col = "red", main = "Sub-meter 3 (Water Heater & AC)")




## Apply time series Linear Regression to Sub-Meter 2
fitSM2 <- tslm(tsSM2_070809monthly ~ trend + season) 
summary(fitSM2)
# Call:
#   tslm(formula = tsSM2_070809monthly ~ trend + season)
# 
# Residuals:
#   Min       1Q   Median       3Q      Max 
# -10.1250  -0.3333  -0.0625   0.2083  19.6667 
# 
# Coefficients:
#   Estimate Std. Error t value Pr(>|t|)  
# (Intercept)  0.22569    3.12501   0.072   0.9430  
# trend       -0.01736    0.08598  -0.202   0.8418  
# season2      0.01736    4.12795   0.004   0.9967  
# season3      0.36806    4.13064   0.089   0.9298  
# season4      0.71875    4.13511   0.174   0.8635  
# season5      0.06944    4.14136   0.017   0.9868  
# season6      1.08681    4.14939   0.262   0.7957  
# season7      0.43750    4.15918   0.105   0.9171  
# season8      0.45486    4.17071   0.109   0.9141  
# season9      0.80556    4.18399   0.193   0.8490  
# season10    10.48958    4.19898   2.498   0.0201 *
#   season11     0.17361    4.21567   0.041   0.9675  
# season12     0.52431    4.23404   0.124   0.9025  
# ---
#   Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
# 
# Residual standard error: 5.055 on 23 degrees of freedom
# Multiple R-squared:  0.3222,	Adjusted R-squared:  -0.03139 
# F-statistic: 0.9112 on 12 and 23 DF,  p-value: 0.5508

# obtain RMSE value
accuracy(fitSM2)
#                      ME     RMSE      MAE   MPE  MAPE      MASE       ACF1
# Training set 1.503427e-17 4.040163 1.418981 NaN  Inf 0.4665145 0.06922286


## Create the forecast for sub-meter 2. Forecast ahead 15 time periods 
forecastfitSM2 <- forecast(fitSM2, h=15, level=c(70,80))

plot(forecastfitSM2, ylim = c(0, 20), ylab= "Watt-Hours", xlab="Time", col = "dark green", main = "Sub-meter 2 (Laundry Room)")



## Apply time series Linear Regression to Sub-Meter 1
fitSM1 <- tslm(tsSM1_070809daily ~ trend + season) 
summary(fitSM1)
# Call:
#   tslm(formula = tsSM1_070809daily ~ trend + season)
# 
# Residuals:
#   Min       1Q   Median       3Q      Max 
# -24.3333  -0.5028   0.0000   0.5028  26.5028 
# 
# Coefficients:
#   Estimate Std. Error t value Pr(>|t|)    
# (Intercept)  0.5041514  3.6418392   0.138 0.889937    
# trend       -0.0013775  0.0006423  -2.145 0.032310 *  
#   season2      0.0013775  5.1395983   0.000 0.999786    
# season3      0.0027549  5.1395984   0.001 0.999572    
# season4      0.0041324  5.1395986   0.001 0.999359    
# season5      0.3388432  5.1395989   0.066 0.947453    
# season6      0.0068873  5.1395993   0.001 0.998931    
# season7      0.0082648  5.1395997   0.002 0.998717    
# season8      5.0096422  5.1396003   0.975 0.330028    
# season9      0.3443530  5.1396009   0.067 0.946600    
# season10     0.0123972  5.1396015   0.002 0.998076
# |||||||||||||||||||||||||||||||||||||||||||||||||
# season197    0.2699827  5.1411397   0.053 0.958134    
# season198    0.2713602  5.1411555   0.053 0.957920    
# season199    0.2727376  5.1411713   0.053 0.957707    
# [ reached getOption("max.print") -- omitted 166 rows ]
# ---
#   Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
# 
# Residual standard error: 6.295 on 723 degrees of freedom
# Multiple R-squared:  0.359,	Adjusted R-squared:  0.03537 
# F-statistic: 1.109 on 365 and 723 DF,  p-value: 0.1235

# obtain RMSE value
accuracy(fitSM1)
#                   ME         RMSE      MAE  MPE  MAPE   MASE      ACF1
# Training set -6.19849e-17 5.128968 1.775056 NaN  Inf 0.825926 -0.0301817

## Create the forecast for sub-meter 2. Forecast ahead 15 time periods 

forecastfitSM1 <- forecast(fitSM1, h=18, level=c(75,85))

plot(forecastfitSM1, ylim = c(0, 20), ylab= "Watt-Hours", xlab="Time", col = "brown", main = "Sub-meter 1 (Kitchen)")





##### Step 4 - Decomposing a Seasonal Time Series #####

## Decompose Sub-meter 3 into trend, seasonal and remainder
components070809SM3weekly <- decompose(tsSM3_070809weekly)
## Plot decomposed sub-meter 3 
plot(components070809SM3weekly)

## Check summary statistics for decomposed sub-meter 3 
summary(components070809SM3weekly)
#          Length Class  Mode     
# x        157    ts     numeric  
# seasonal 157    ts     numeric  
# trend    157    ts     numeric  
# random   157    ts     numeric  
# figure    52    -none- numeric  
# type       1    -none- character

## check summary statistics for decomposed trend / seasonal / random for Sub-meter 3
summary(components070809SM3weekly$trend)
# Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
# 1.865   2.481   3.058   3.329   3.817   6.663      52 
summary(components070809SM3weekly$seasonal)
#     Min.  1st Qu.   Median    Mean   3rd Qu.   Max. 
# -3.70143 -3.11008 -2.81201  0.09312  5.50530 14.62068 
summary(components070809SM3weekly$random)
#     Min.  1st Qu.   Median     Mean  3rd Qu.     Max.     NA's 
# -10.5726  -1.5341  -0.1784  -0.2217   1.0909  10.1293       52 



## Decompose Sub-meter 2 into trend, seasonal and remainder
components070809SM2monthly <- decompose(tsSM2_070809monthly)
## Plot decomposed sub-meter 2 
plot(components070809SM2monthly)
## Check summary statistics for decomposed sub-meter 3 
summary(components070809SM2monthly)
#         Length Class  Mode     
# x        36     ts     numeric  
# seasonal 36     ts     numeric  
# trend    36     ts     numeric  
# random   36     ts     numeric  
# figure   12     -none- numeric  
# type      1     -none- character

## check summary statistics for decomposed trend / seasonal / random for Sub-meter 2
summary(components070809SM2monthly$trend)
#    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
# 0.08333 0.37500 1.56250 1.61979 2.91667 3.00000      12 
summary(components070809SM2monthly$seasonal)
#    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
# -1.630  -1.547  -1.172   0.000  -1.016  13.870 
summary(components070809SM2monthly$random)
#     Min.   1st Qu.    Median      Mean   3rd Qu.      Max.      NA's 
# -13.24479  -1.15104  -0.03646  -0.03646   1.07812  13.17188        12 



## Decompose Sub-meter 1 into trend, seasonal and remainder
components070809SM1daily <- decompose(tsSM1_070809daily)
## Plot decomposed sub-meter 2 
plot(components070809SM1daily)
## Check summary statistics for decomposed sub-meter 3 
summary(components070809SM1daily)
#          Length Class  Mode     
# x        1089   ts     numeric  
# seasonal 1089   ts     numeric  
# trend    1089   ts     numeric  
# random   1089   ts     numeric  
# figure    365   -none- numeric  
# type        1   -none- character

## check summary statistics for decomposed trend / seasonal / random for Sub-meter 1
summary(components070809SM1daily$trend)
#   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
# 0.7315  1.0658  1.1205  1.1939  1.2192  1.8712     364 
summary(components070809SM1daily$seasonal)
#     Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
# -1.37690 -1.13580 -1.03580 -0.01252 -0.88648 31.36420
summary(components070809SM1daily$random)
   Min.  1st Qu.   Median     Mean  3rd Qu.     Max.     NA's 
-19.6875  -0.1916  -0.1067  -0.1067  -0.0217  19.4742      364





#####  Holt-Winters Forecasting #####

### Sub-meter 3
#### Remove Seasonal Components
## Seasonal adjusting sub-meter 3 by subtracting the seasonal component & plot
tsSM3_070809Adjusted <- tsSM3_070809weekly - components070809SM3weekly$seasonal
autoplot(tsSM3_070809Adjusted)  ## can't tell if the seasonal component was removed

## Test Seasonal Adjustment by running Decompose again. Note the very, very small scale for Seasonal
plot(decompose(tsSM3_070809Adjusted))


#### HoltWinters Simple Exponential Smoothing
## Holt Winters Exponential Smoothing & Plot
tsSM3_HW070809 <- HoltWinters(tsSM3_070809Adjusted, beta=FALSE, gamma=FALSE)
plot(tsSM3_HW070809, ylim = c(0, 25))


#### HoltWinters Forecast
## HoltWinters forecast & plot
tsSM3_HW070809for <- forecast(tsSM3_HW070809, h=25)
plot(tsSM3_HW070809for, ylim = c(0, 20), ylab= "Watt-Hours", xlab="Time - Sub-meter 3")

## Forecast HoltWinters with diminished confidence levels
tsSM3_HW070809forC <- forecast(tsSM3_HW070809, h=25, level=c(10,25))
## Plot only the forecasted area
plot(tsSM3_HW070809forC, ylim = c(0, 20), ylab= "Watt-Hours", xlab="Time - Sub-meter 3", start(2010))

tsSM3_HW070809forC ## a 10% prediction interval for the forecast, and a 25 % prediction interval
# Point           Forecast  Lo 10    Hi 10    Lo 25    Hi 25
# 2010.019       4.359604 3.548857 5.170351 2.303794 6.415414
# 2010.038       4.359604 3.546760 5.172447 2.298478 6.420730
# 2010.058       4.359604 3.544669 5.174538 2.293175 6.426032
# 2010.077       4.359604 3.542584 5.176624 2.287887 6.431321
# 2010.096       4.359604 3.540503 5.178704 2.282611 6.436596
# 2010.115       4.359604 3.538428 5.180779 2.277350 6.441858
# 2010.135       4.359604 3.536358 5.182849 2.272101 6.447107
# 2010.154       4.359604 3.534294 5.184914 2.266865 6.452342
# 2010.173       4.359604 3.532234 5.186973 2.261643 6.457564
# 2010.192       4.359604 3.530180 5.189028 2.256434 6.462774
# 2010.212       4.359604 3.528130 5.191077 2.251237 6.467970
# 2010.231       4.359604 3.526086 5.193122 2.246053 6.473154
# 2010.250       4.359604 3.524047 5.195161 2.240882 6.478325
# 2010.269       4.359604 3.522012 5.197195 2.235724 6.483484
# 2010.288       4.359604 3.519983 5.199225 2.230578 6.488630
# 2010.308       4.359604 3.517958 5.201249 2.225444 6.493764
# 2010.327       4.359604 3.515939 5.203269 2.220323 6.498885
# 2010.346       4.359604 3.513924 5.205284 2.215214 6.503994
# 2010.365       4.359604 3.511914 5.207294 2.210117 6.509091
# 2010.385       4.359604 3.509908 5.209299 2.205032 6.514176
# 2010.404       4.359604 3.507908 5.211300 2.199959 6.519249
# 2010.423       4.359604 3.505912 5.213296 2.194898 6.524310
# 2010.442       4.359604 3.503921 5.215287 2.189849 6.529359
# 2010.462       4.359604 3.501934 5.217273 2.184811 6.534396
# 2010.481       4.359604 3.499952 5.219256 2.179785 6.539422



### Sub-meter 2
#### Remove Seasonal Components
## Seasonal adjusting sub-meter 2 by subtracting the seasonal component & plot
tsSM2_070809Adjusted <- tsSM2_070809monthly - components070809SM2monthly$seasonal
autoplot(tsSM2_070809Adjusted)  ## can't tell if the seasonal component was removed

## Test Seasonal Adjustment by running Decompose again. Note the very, very small scale for Seasonal
plot(decompose(tsSM2_070809Adjusted))


#### HoltWinters Simple Exponential Smoothing
## Holt Winters Exponential Smoothing & Plot
tsSM2_HW070809 <- HoltWinters(tsSM2_070809Adjusted, beta=FALSE, gamma=FALSE)
plot(tsSM2_HW070809, ylim = c(0, 25))


#### HoltWinters Forecast
## HoltWinters forecast & plot
tsSM2_HW070809for <- forecast(tsSM2_HW070809, h=25)
plot(tsSM2_HW070809for, ylim = c(0, 20), ylab= "Watt-Hours", xlab="Time - Sub-meter 2")

## Forecast HoltWinters with diminished confidence levels
tsSM2_HW070809forC <- forecast(tsSM2_HW070809, h=25, level=c(10,25))
## Plot only the forecasted area
plot(tsSM2_HW070809forC, ylim = c(0, 20), ylab= "Watt-Hours", xlab="Time - Sub-meter 2", start(2010))

tsSM2_HW070809forC
# Point          Forecast   Lo 10    Hi 10     Lo 25    Hi 25
# Jan 2010       1.545971 0.9914483 2.100493 0.1398688 2.952073
# Feb 2010       1.545971 0.9914483 2.100493 0.1398688 2.952073
# Mar 2010       1.545971 0.9914483 2.100493 0.1398688 2.952073
# Apr 2010       1.545971 0.9914483 2.100493 0.1398688 2.952073
# May 2010       1.545971 0.9914483 2.100493 0.1398688 2.952073
# Jun 2010       1.545971 0.9914483 2.100493 0.1398688 2.952073
# Jul 2010       1.545971 0.9914483 2.100493 0.1398688 2.952073
# Aug 2010       1.545971 0.9914483 2.100493 0.1398688 2.952073
# Sep 2010       1.545971 0.9914483 2.100493 0.1398688 2.952073
# Oct 2010       1.545971 0.9914483 2.100493 0.1398688 2.952073
# Nov 2010       1.545971 0.9914483 2.100493 0.1398688 2.952073
# Dec 2010       1.545971 0.9914483 2.100493 0.1398688 2.952073
# Jan 2011       1.545971 0.9914483 2.100493 0.1398688 2.952073
# Feb 2011       1.545971 0.9914483 2.100493 0.1398688 2.952073
# Mar 2011       1.545971 0.9914483 2.100493 0.1398688 2.952073
# Apr 2011       1.545971 0.9914483 2.100493 0.1398688 2.952073
# May 2011       1.545971 0.9914483 2.100493 0.1398688 2.952073
# Jun 2011       1.545971 0.9914483 2.100493 0.1398688 2.952073
# Jul 2011       1.545971 0.9914483 2.100493 0.1398688 2.952073
# Aug 2011       1.545971 0.9914483 2.100493 0.1398688 2.952073
# Sep 2011       1.545971 0.9914483 2.100493 0.1398688 2.952073
# Oct 2011       1.545971 0.9914483 2.100493 0.1398688 2.952073
# Nov 2011       1.545971 0.9914483 2.100493 0.1398688 2.952073
# Dec 2011       1.545971 0.9914483 2.100493 0.1398688 2.952073
# Jan 2012       1.545971 0.9914483 2.100493 0.1398688 2.952073


### Sub-meter 2
#### Remove Seasonal Components
## Seasonal adjusting sub-meter 2 by subtracting the seasonal component & plot
tsSM1_070809Adjusted <- tsSM1_070809daily - components070809SM1daily$seasonal
autoplot(tsSM1_070809Adjusted)  ## can't tell if the seasonal component was removed

## Test Seasonal Adjustment by running Decompose again. Note the very, very small scale for Seasonal
plot(decompose(tsSM1_070809Adjusted))


#### HoltWinters Simple Exponential Smoothing
## Holt Winters Exponential Smoothing & Plot
tsSM1_HW070809 <- HoltWinters(tsSM1_070809Adjusted, beta=FALSE, gamma=FALSE)
plot(tsSM1_HW070809, ylim = c(0, 25))


#### HoltWinters Forecast
## HoltWinters forecast & plot
tsSM1_HW070809for <- forecast(tsSM1_HW070809, h=25)
plot(tsSM1_HW070809for, ylim = c(0, 20), ylab= "Watt-Hours", xlab="Time - Sub-meter 1")

## Forecast HoltWinters with diminished confidence levels
tsSM1_HW070809forC <- forecast(tsSM1_HW070809, h=25, level=c(10,25))
## Plot only the forecasted area
plot(tsSM1_HW070809forC, ylim = c(0, 20), ylab= "Watt-Hours", xlab="Time - Sub-meter 1", start(2010))

tsSM1_HW070809forC
# Point          Forecast     Lo 10    Hi 10     Lo 25    Hi 25
# 2009.9836      0.3807425 -0.3517692 1.113254 -1.476687 2.238172
# 2009.9863      0.3807425 -0.3517918 1.113277 -1.476744 2.238229
# 2009.9890      0.3807425 -0.3518145 1.113300 -1.476802 2.238287
# 2009.9918      0.3807425 -0.3518371 1.113322 -1.476859 2.238344
# 2009.9945      0.3807425 -0.3518598 1.113345 -1.476916 2.238401
# 2009.9973      0.3807425 -0.3518824 1.113367 -1.476974 2.238459
# 2010.0000      0.3807425 -0.3519051 1.113390 -1.477031 2.238516
# 2010.0027      0.3807425 -0.3519277 1.113413 -1.477089 2.238574
# 2010.0055      0.3807425 -0.3519504 1.113435 -1.477146 2.238631
# 2010.0082      0.3807425 -0.3519730 1.113458 -1.477204 2.238689
# 2010.0110      0.3807425 -0.3519957 1.113481 -1.477261 2.238746
# 2010.0137      0.3807425 -0.3520183 1.113503 -1.477318 2.238803
# 2010.0164      0.3807425 -0.3520409 1.113526 -1.477376 2.238861
# 2010.0192      0.3807425 -0.3520636 1.113549 -1.477433 2.238918
# 2010.0219      0.3807425 -0.3520862 1.113571 -1.477491 2.238976
# 2010.0247      0.3807425 -0.3521089 1.113594 -1.477548 2.239033
# 2010.0274      0.3807425 -0.3521315 1.113617 -1.477606 2.239091
# 2010.0301      0.3807425 -0.3521542 1.113639 -1.477663 2.239148
# 2010.0329      0.3807425 -0.3521768 1.113662 -1.477720 2.239205
# 2010.0356      0.3807425 -0.3521994 1.113684 -1.477778 2.239263
# 2010.0384      0.3807425 -0.3522221 1.113707 -1.477835 2.239320
# 2010.0411      0.3807425 -0.3522447 1.113730 -1.477893 2.239378
# 2010.0438      0.3807425 -0.3522674 1.113752 -1.477950 2.239435
# 2010.0466      0.3807425 -0.3522900 1.113775 -1.478007 2.239492
# 2010.0493      0.3807425 -0.3523126 1.113798 -1.478065 2.239550










