Boston Marathon Qualifying Time and Prospective Check
========================================================
author: Lynn Huang
date: March 27, 2017
autosize: true

Application Feature
========================================================
This Application allows user to check the qualifying time and pace for Boston Marathon for his/her age group.


At the same time, the graphic plot shows the qualifying times for all the age groups for him or her. This will allow user to see his possibility of BQ for the years to come if he can't reach the BQ goal at his current age.



Data Exploration and Interpretation
========================================================
The one-row table shows the qualifying time and pace for the specific sex and age group that user belongs to.

Time, in HH:MI, total running time for a marathon race                            

Pace, in MM:SS/Mile, average pace for a marathon


Exploring the data
========================================================




```r
head(bq)
```

```
  AgeGroup Time Pace    Sex
1    18-34 3:35 8:12 Female
2    35-39 3:40 8:24 Female
3    40-44 3:45 8:35 Female
4    45-49 3:55 8:58 Female
5    50-54 4:00 9:10 Female
6    55-59 4:10 9:33 Female
```

```r
filter(bq, Sex=='Male',AgeGroup=='45-49')
```

```
  AgeGroup Time Pace  Sex
1    45-49 3:25 7:49 Male
```
The Web App and Codes
========================================================
The Web App is running on https://mlynnhuang.shinyapps.io/data-product/
The code for ui.R and server.R can be found in https://github.com/mlynnhuang/data-product-2/

