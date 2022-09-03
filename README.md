# Power-Consumption-Analysis

**Background Information**

Kathy -  VP from IOT Analytics would like us to take a deep dive into the sub-metering data, to explore some visualizations of the data and then to build predictive model that will demonstrate to our client how the data can be used to help a home owner to make decision about altering power consumption. 
In particular, throughout the whole analysis process, we are encouraged to identify the typical power usage patterns for each sub-meter,  the reliability of power consumption forecast, the questions may occur while we explore the data and any recommendations that we could offer to our client to reduce power usage. 


**Data Visualization and Analysis**

Power usage data was collected from year 2008: Jan 9th / 1st week / 1st Quarter
**Sub-meter 1 (Kitchen)** - daily peak usage around 6pm (likely dinner time), weekly and quarterly data are quite evenly distributed.
**Sub-meter 2 (Laundry room)** - weekly & quarterly power usage is quite high towards the weekend, client uses more washer & dryer at the weekend; a fridge in the laundry room requires all time power shows some consistency in usage during the remaining of the period.
**Sub-meter 3 (Water Heater & AC)** - heavy usage on most time with a few gaps in between.

![image](https://user-images.githubusercontent.com/80385435/188289725-f2f49f57-aa33-462c-a449-a2b80057dd0a.png)
![image](https://user-images.githubusercontent.com/80385435/188289741-c9ba4271-728a-4fe8-9b14-163739b75e8c.png)
![image](https://user-images.githubusercontent.com/80385435/188289746-3e585fe7-3968-4bf9-925b-3d948031ccae.png)


**Time Series Visualization and Analysis**

**Sub-meter 1 (Kitchen)** - some peak usage during the year around weekend / holiday time
**Sub-meter 2 (Laundry Room)** - peak usage towards the 3rd quarter of 2008
**Sub-meter 3 (Water Heater & AC)** - consistent high weekly usage throughout the 3 years as water heater & AC consume more power

![image](https://user-images.githubusercontent.com/80385435/188289788-2de945dd-f2a7-483a-b38b-a66038f8e8a1.png) ![image](https://user-images.githubusercontent.com/80385435/188289795-abe77909-cf50-48b5-9bef-811496715994.png)

Power usage data was collected from year 2008: Jan 9th / 1st week / 1st Quarter
![image](https://user-images.githubusercontent.com/80385435/188289811-2b2ab28f-5e98-49cb-a24e-f415a1fa3e7c.png)

**Linear Regression Forecast Visualization and Analysis**
The lines with brown (Sub-meter1) / green (Sub-meter 2) / red (Sub-meter 3) show the actual data, whereas the blue lines show the forecasted values from year 2010 to 2011; the shaded areas are error bounds at confidence levels (80% in light grey, 90% in dark grey). 

The statistics from the below table show lower value of R-squared and RMSE, which means that the forecasting may be less reliable. 

![image](https://user-images.githubusercontent.com/80385435/188289861-b6655858-46b1-46a8-a20d-c4666fd614e4.png)
![image](https://user-images.githubusercontent.com/80385435/188289871-0941100d-b529-4595-9b01-ce31b7ce66cd.png)
![image](https://user-images.githubusercontent.com/80385435/188289873-0751829f-bb5a-4f15-b059-9ab63a3f6dce.png)
![image](https://user-images.githubusercontent.com/80385435/188289834-ac8a2f67-82d1-46fe-83cb-672e1933ed6a.png)

**Decomposition Visualization and Analysis**
Sub-Meter 1 (Kitchen)
Trend - power usage shows consistency with exception of an increase around 3rd quarter of 2007 and a decrease around April / May 2009
Seasonal - power usage evenly distributed through the year with a few spikes 

Sub-Meter 2 (Laundry Room)
Trend - power usage suddenly increases from 2nd quarter of 2008 till 2nd quarter of 2009, customer may stay at home this year and use more washer & dryer
Seasonal - power usage is quite consistent with peaks during summer time of these 3 years, customer may use washer & dryer more due to hot weather

Sub-Meter 3 (Water Heater & AC)
Trend - power usage gradually decreases from mid 2007 to end 2008, then it gradually increases from 2009
Seasonal - power usage reaches peak at the beginning of each year and drops to almost 0 at the end of that year; it also shows low usage around 3rd quarter of each year 

**Sub-Meter 1 (Kitchen)**
![image](https://user-images.githubusercontent.com/80385435/188289934-340c2352-6337-4904-a5fb-9fa74c09ca66.png)

** Sub-Meter 2 (Laundry Room)**
![image](https://user-images.githubusercontent.com/80385435/188289938-3575d887-54df-4301-9439-8a3cc231e80c.png)

**Sub-Meter 3 (Water Heater & AC)**
![image](https://user-images.githubusercontent.com/80385435/188289947-368531be-e4fd-4b27-af72-5829881d4be1.png)

![image](https://user-images.githubusercontent.com/80385435/188289999-560db2a7-b5c6-452c-a51b-de384f386783.png)
Trend - The Median and Mean value are quite close for Sub-meter 1/2/3, this probably indicate a more accurate trending for usage throughout the year.

![image](https://user-images.githubusercontent.com/80385435/188290005-8f729cd2-aa52-4c35-8a0f-02b1c2a042b2.png)
Seasonal - a lot of negative values for Median and Mean, including  a 0 Mean value for Sub-meter 2, this may interpret that the seasonal component is biased on measuring more data when client is on vacation (using less or even not using any power)/

![image](https://user-images.githubusercontent.com/80385435/188290012-4d8dc9e9-3d55-43d6-aff4-0c77dfbfab92.png)
Random - Majority of the values are negative, the values seem to be less reliable as they are based on random selection of the data. 


**Holt Winters Forecasting and Analysis**
The blue lines show the forecasted power usage for these Sub-meters. The forecast for Sub-meter 1 seems to be below the average power usage, while Sub-meter 2 shows a more reliable forecast. 
![image](https://user-images.githubusercontent.com/80385435/188290029-3c201a02-68a8-4658-a265-347c71491e6d.png)
![image](https://user-images.githubusercontent.com/80385435/188290032-13dc71ba-9d63-46f0-b12f-46ea47ae00cb.png)
![image](https://user-images.githubusercontent.com/80385435/188290037-7ca4f7de-acfa-4116-ab26-bf593c8b5b1f.png)


**Holt Winters Forecasting and Analysis**
The forecast for 3 Sub-meters are quite consistent, this doesn't match with previous graphs, it probably indicates that these forecasts may not be the most accuracte prediction for future power usage. However, they can still be used as a guidance if the household consumes too much power. 

![image](https://user-images.githubusercontent.com/80385435/188290108-aaf0cbdd-7bf5-4a67-9fd7-809bf5e89dad.png)
![image](https://user-images.githubusercontent.com/80385435/188290109-24efcccf-cd5b-49c9-8cfd-78be40bd56e2.png)
![image](https://user-images.githubusercontent.com/80385435/188290113-0b03fb39-5e3a-4d73-98b3-2100d3f8d751.png)


**Summary and Recommendations**

Knowing the amounts of energy consumption is very importance for consumers, it is very useful for them to better understand and control their energy demand to save their energy bill and also help with the environment from the long run.

Power usage pattern observed:
 Consistent power usage of Kitchen throughout the day
 Higher power consumption of Laundry Room over the weekend
 Heavy power consumption for Water Heater & AC throughout the year

Recommendations:
Consider using a energy saving Refrigerator as it’s powered 24x7 in the kitchen
Install separate sub-meters for Water Heater & AC to obtain more accurate figure as they are the most power consumed units
Install a programmable or smart thermostat that appliances can be turned off when client is asleep or away 
It’s recommended to install a device which would record outdoor temperature to better correlate with AC (since it consumes more power than other appliances)
Install energy efficient windows may help household to reduce AC power usage during extreme weather conditions

