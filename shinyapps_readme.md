---
title: "Simple leniar Regression model of miles/galon against Auto/Manual transmission + a Variable selected from Mtcars Data"
author: "Lakshmi Narayana"
date: "Sunday, March 22, 2015"
output: html_document
---


# Objective

The aim of this application is to show case the relation between miles per galon and transmission to the other variables of mtcars dataset.

# Instructions on layout and usage

## Layout of the Application

- The **top panel on the left** allows for selection of **automatic/manual transmission** 
- The **bottom panel on the left** allows for selection of the **variable to plot the model** along with the automatic/manual transmission.
- The **top panel on the right** will display the **selected variables in the left panel**.
- The **middle panel on the right** will display the **mean median values of the selected variable** in the left panel from the mtcars dataset.
- The **bottom two panels on the right** will display the **summary of the model and and plot of the model** 

## Usage of the application

- User is expected to select automatic or manual transmission .default is Automatic
- User is expected to select the variable which has to included for the model along with the Transmission.

# Results

- Results are presented on the right side of the page.
- Selected variables,Summary of the selected variables,Summary and Plot of the model are displayed.

# Dataset Used is mtcars


```r
summary(mtcars)
```

```
##       mpg             cyl             disp             hp       
##  Min.   :10.40   Min.   :4.000   Min.   : 71.1   Min.   : 52.0  
##  1st Qu.:15.43   1st Qu.:4.000   1st Qu.:120.8   1st Qu.: 96.5  
##  Median :19.20   Median :6.000   Median :196.3   Median :123.0  
##  Mean   :20.09   Mean   :6.188   Mean   :230.7   Mean   :146.7  
##  3rd Qu.:22.80   3rd Qu.:8.000   3rd Qu.:326.0   3rd Qu.:180.0  
##  Max.   :33.90   Max.   :8.000   Max.   :472.0   Max.   :335.0  
##       drat             wt             qsec             vs        
##  Min.   :2.760   Min.   :1.513   Min.   :14.50   Min.   :0.0000  
##  1st Qu.:3.080   1st Qu.:2.581   1st Qu.:16.89   1st Qu.:0.0000  
##  Median :3.695   Median :3.325   Median :17.71   Median :0.0000  
##  Mean   :3.597   Mean   :3.217   Mean   :17.85   Mean   :0.4375  
##  3rd Qu.:3.920   3rd Qu.:3.610   3rd Qu.:18.90   3rd Qu.:1.0000  
##  Max.   :4.930   Max.   :5.424   Max.   :22.90   Max.   :1.0000  
##        am              gear            carb      
##  Min.   :0.0000   Min.   :3.000   Min.   :1.000  
##  1st Qu.:0.0000   1st Qu.:3.000   1st Qu.:2.000  
##  Median :0.0000   Median :4.000   Median :2.000  
##  Mean   :0.4062   Mean   :3.688   Mean   :2.812  
##  3rd Qu.:1.0000   3rd Qu.:4.000   3rd Qu.:4.000  
##  Max.   :1.0000   Max.   :5.000   Max.   :8.000
```