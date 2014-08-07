---
title: "MochModel4 Tests"
author: "Phillip Labuschagne"
date: "Tuesday, July 22, 2014"
output: html_document
---

## Setup and Run Model

### Folders and scenario creation





### Run modgen on all scenarios


```
## Warning: package 'foreach' was built under R version 3.0.3
```

```
## foreach: simple, scalable parallel programming from Revolution Analytics
## Use Revolution R for scalability, fault tolerance and more.
## http://www.revolutionanalytics.com
```

```
## Warning: package 'doSNOW' was built under R version 3.0.3
```

```
## Loading required package: iterators
```

```
## Warning: package 'iterators' was built under R version 3.0.3
```

```
## Loading required package: snow
```

```
## Warning: package 'snow' was built under R version 3.0.3
```

```
## [[1]]
##  [1] "modgenTester" "ggplot2"      "RODBC"        "snow"        
##  [5] "methods"      "stats"        "graphics"     "grDevices"   
##  [9] "utils"        "datasets"     "base"        
## 
## [[2]]
##  [1] "modgenTester" "ggplot2"      "RODBC"        "snow"        
##  [5] "methods"      "stats"        "graphics"     "grDevices"   
##  [9] "utils"        "datasets"     "base"        
## 
## [[3]]
##  [1] "modgenTester" "ggplot2"      "RODBC"        "snow"        
##  [5] "methods"      "stats"        "graphics"     "grDevices"   
##  [9] "utils"        "datasets"     "base"        
## 
## [[4]]
##  [1] "modgenTester" "ggplot2"      "RODBC"        "snow"        
##  [5] "methods"      "stats"        "graphics"     "grDevices"   
##  [9] "utils"        "datasets"     "base"        
## 
## [[5]]
##  [1] "modgenTester" "ggplot2"      "RODBC"        "snow"        
##  [5] "methods"      "stats"        "graphics"     "grDevices"   
##  [9] "utils"        "datasets"     "base"        
## 
## [[6]]
##  [1] "modgenTester" "ggplot2"      "RODBC"        "snow"        
##  [5] "methods"      "stats"        "graphics"     "grDevices"   
##  [9] "utils"        "datasets"     "base"
```

```
## [[1]]
## [1] "\"C:\\Users\\Administrator\\Documents\\Visual Studio 2010\\Projects\\MochModel4\\test\\MochModel4.exe\" -sc \"C:\\Users\\Administrator\\Documents\\Visual Studio 2010\\Projects\\MochModel4\\test\\Base.scex\""
## 
## [[2]]
## [1] "\"C:\\Users\\Administrator\\Documents\\Visual Studio 2010\\Projects\\MochModel4\\test\\MochModel4.exe\" -sc \"C:\\Users\\Administrator\\Documents\\Visual Studio 2010\\Projects\\MochModel4\\test\\NoHealthyMortality.scex\""
## 
## [[3]]
## [1] "\"C:\\Users\\Administrator\\Documents\\Visual Studio 2010\\Projects\\MochModel4\\test\\MochModel4.exe\" -sc \"C:\\Users\\Administrator\\Documents\\Visual Studio 2010\\Projects\\MochModel4\\test\\NoHIV.scex\""
## 
## [[4]]
## [1] "\"C:\\Users\\Administrator\\Documents\\Visual Studio 2010\\Projects\\MochModel4\\test\\MochModel4.exe\" -sc \"C:\\Users\\Administrator\\Documents\\Visual Studio 2010\\Projects\\MochModel4\\test\\NoInfectedMortality.scex\""
## 
## [[5]]
## [1] "\"C:\\Users\\Administrator\\Documents\\Visual Studio 2010\\Projects\\MochModel4\\test\\MochModel4.exe\" -sc \"C:\\Users\\Administrator\\Documents\\Visual Studio 2010\\Projects\\MochModel4\\test\\OnlyInfectedMortality.scex\""
## 
## [[6]]
## [1] "\"C:\\Users\\Administrator\\Documents\\Visual Studio 2010\\Projects\\MochModel4\\test\\MochModel4.exe\" -sc \"C:\\Users\\Administrator\\Documents\\Visual Studio 2010\\Projects\\MochModel4\\test\\Small.scex\""
```

```
##    user  system elapsed 
##    0.05    0.00   21.12
```

```
## [1] "C:/Users/Administrator/Documents/Visual Studio 2010/Projects/MochModel4/test/Base(tbl).mdb"
## [1] "C:/Users/Administrator/Documents/Visual Studio 2010/Projects/MochModel4/test/NoHealthyMortality(tbl).mdb"
## [1] "C:/Users/Administrator/Documents/Visual Studio 2010/Projects/MochModel4/test/NoHIV(tbl).mdb"
## [1] "C:/Users/Administrator/Documents/Visual Studio 2010/Projects/MochModel4/test/NoInfectedMortality(tbl).mdb"
## [1] "C:/Users/Administrator/Documents/Visual Studio 2010/Projects/MochModel4/test/OnlyInfectedMortality(tbl).mdb"
## [1] "C:/Users/Administrator/Documents/Visual Studio 2010/Projects/MochModel4/test/Small(tbl).mdb"
```

## Tests for Model Version 13

### <a name="LifeExpectancyHealthyMother"></a>Life Expectancy Healthy Mother

Scenario(s): NoHIV

In the case of no sickness, we expect the mother's life expectancy to be between 60 and 70

[To Summary Table](#summary_tab_link)


```
##                    metrics        Value CV SE
## 1          Population size 10000.000000 NA NA
## 2 Minimum duration of life     0.001127 NA NA
## 3 Maximum duration of life    91.999630 NA NA
## 4          Life expectancy    66.008688 NA NA
```

**Result: TRUE** 

---



### <a name="MotherMaxAge"></a>Mother Max Age

Scenario(s): Base

The max age of a mother cannot be greater than 92

[To Summary Table](#summary_tab_link)


```
##                    metrics        Value CV SE
## 1          Population size 10000.000000 NA NA
## 2 Minimum duration of life     0.001127 NA NA
## 3 Maximum duration of life    91.993240 NA NA
## 4          Life expectancy    49.989346 NA NA
```

**Result: TRUE** 

---



### <a name="Percentageeverinfectedbounded"></a>Percentage ever infected bounded

Scenario(s): Base

The percentage of mothers ever infected in the base case should be between 40 and 50%

[To Summary Table](#summary_tab_link)


```
## $total_infections
## [1] 4498
## 
## $total_population
## [1] 10000
```

**Result: TRUE** 

---



### <a name="PercentageeverinfectedzeroinNoHIV"></a>Percentage ever infected zero in NoHIV

Scenario(s): NoHIV

The number of mothers ever infected in the NoHIV case should be 0

[To Summary Table](#summary_tab_link)


```
## $total_infections
## [1] 0
```

**Result: TRUE** 

---



### <a name="InfectedvsHealthyMortality"></a>Infected vs Healthy Mortality

Scenario(s): Base

The mortality of uninfected mothers must be lower than the mortality of uninfected mothers. Mortality is tricky to measure accurately thus a proxy is used. Total deaths from state is compared to the total years spent in the state for each state. Further refinements should be made to this test

[To Summary Table](#summary_tab_link)


```
## $total_time_in_healthy
## [1] 452228
## 
## $total_time_in_infected
## [1] 47666
## 
## $deaths_in_healthy
## [1] 5502
## 
## $deaths_in_infected
## [1] 4498
## 
## $crude_healthy_mortality
## [1] 0.01217
## 
## $crude_infected_mortality
## [1] 0.09437
```

**Result: TRUE** 

---



### <a name="NodeathsfromhealthyinNoHealthyMortality"></a>No deaths from healthy in NoHealthyMortality

Scenario(s): NoHealthyMortality

No mothers should die from the Healthy state in the NoHealthyMortality Scenario

[To Summary Table](#summary_tab_link)


```
##                                metrics    ..1
## 1               Healthy Mortality Rate      0
## 2         Healthy mother years at risk 634221
## 3              Infected Mortality Rate     NA
## 4        Infected mother years at risk  51903
## 5                 Mother years at risk 686124
## 6                     Number of deaths   4918
## 7  Number of deaths from HEALTHY state      0
## 8 Number of deaths from INFECTED state   4918
## 9               Overall Mortality Rate     NA
```

**Result: TRUE** 

---



### <a name="NodeathsfromInfectedinNoInfectedMortality"></a>No deaths from Infected in NoInfectedMortality

Scenario(s): NoInfectedMortality

No mothers should die from the Infected state in the NoInfectedMortality Scenario

[To Summary Table](#summary_tab_link)


```
##                                metrics    ..1
## 1               Healthy Mortality Rate     NA
## 2         Healthy mother years at risk 452228
## 3              Infected Mortality Rate     NA
## 4        Infected mother years at risk 336320
## 5                 Mother years at risk 788548
## 6                     Number of deaths   5502
## 7  Number of deaths from HEALTHY state   5502
## 8 Number of deaths from INFECTED state      0
## 9               Overall Mortality Rate     NA
```

**Result: TRUE** 

---



### <a name="Allsurvivalcurves"></a>All survival curves

Scenario(s): Base

Plots of all the survival curves. The curves must be inspected manually

[To Summary Table](#summary_tab_link)

![plot of chunk unnamed-chunk-26](figure/unnamed-chunk-26.png) 

**Result: Manual** 

---



### <a name="OnlyInfectedMortalityscenariohasmostpeopledyingfrominfectedstate"></a>OnlyInfectedMortality scenario has most people dying from infected state

Scenario(s): OnlyInfectedMortality

This test make sure that in the scenario where there is only mortality in the infected state, that all people who die before age 100, die from the infected state

[To Summary Table](#summary_tab_link)


```
## [1] 9066
```

```
## 
##    0    1    2 
##  471 4527    1
```

**Result: TRUE** 

---



### <a name="InfectedMortalityMatchvanderpaal"></a>Infected Mortality Match van der paal

Scenario(s): OnlyInfectedMortality

When the kaplan meier curves of the infected mortalities are fitted with Weibull curves, the parameters must be similar to those obtained from the van der paal article

[To Summary Table](#summary_tab_link)

![plot of chunk unnamed-chunk-32](figure/unnamed-chunk-321.png) ![plot of chunk unnamed-chunk-32](figure/unnamed-chunk-322.png) ![plot of chunk unnamed-chunk-32](figure/unnamed-chunk-323.png) ![plot of chunk unnamed-chunk-32](figure/unnamed-chunk-324.png) ![plot of chunk unnamed-chunk-32](figure/unnamed-chunk-325.png) 

**Result: Manual** 

---



### <a name="Percentageeversymptomaticbounded"></a>Percentage ever symptomatic bounded

Scenario(s): Base

The percentage of mothers who ever became symptomatic in the base case should be between 30 and 34%

[To Summary Table](#summary_tab_link)


```
## $total_symptomatic_mothers
## [1] 3202
## 
## $total_population
## [1] 10000
```

**Result: TRUE** 

---



### <a name="Percentageeverdiagnosedbounded"></a>Percentage ever diagnosed bounded

Scenario(s): Base

The percentage of mothers who were ever diagnosed in the base case should be between 36 and 40%

[To Summary Table](#summary_tab_link)


```
## $total_diagnosed_mothers
## [1] 3841
## 
## $total_population
## [1] 10000
```

**Result: TRUE** 

---


### <a name="StateMembershiptracking"></a>State Membership tracking

Scenario(s): All

Plots showing the membership of mothers to the different states in the MDEATH_SCHED_STATE

[To Summary Table](#summary_tab_link)

![plot of chunk unnamed-chunk-41](figure/unnamed-chunk-411.png) ![plot of chunk unnamed-chunk-41](figure/unnamed-chunk-412.png) ![plot of chunk unnamed-chunk-41](figure/unnamed-chunk-413.png) ![plot of chunk unnamed-chunk-41](figure/unnamed-chunk-414.png) ![plot of chunk unnamed-chunk-41](figure/unnamed-chunk-415.png) ![plot of chunk unnamed-chunk-41](figure/unnamed-chunk-416.png) 

**Result: Manual** 

---



## Summary of all tests
Model Version: 13

### <a name="summary_tab_link"></a>Summary Table

|Name|Result|Scenarios|
|:-:|:-:|:-:|
|[Life Expectancy Healthy Mother](#LifeExpectancyHealthyMother)|TRUE|NoHIV 
|[Mother Max Age](#MotherMaxAge)|TRUE|Base 
|[Percentage ever infected bounded](#Percentageeverinfectedbounded)|TRUE|Base 
|[Percentage ever infected zero in NoHIV](#PercentageeverinfectedzeroinNoHIV)|TRUE|NoHIV 
|[Infected vs Healthy Mortality](#InfectedvsHealthyMortality)|TRUE|Base 
|[No deaths from healthy in NoHealthyMortality](#NodeathsfromhealthyinNoHealthyMortality)|TRUE|NoHealthyMortality 
|[No deaths from Infected in NoInfectedMortality](#NodeathsfromInfectedinNoInfectedMortality)|TRUE|NoInfectedMortality 
|[All survival curves](#Allsurvivalcurves)|Manual|Base 
|[OnlyInfectedMortality scenario has most people dying from infected state](#OnlyInfectedMortalityscenariohasmostpeopledyingfrominfectedstate)|TRUE|OnlyInfectedMortality 
|[Infected Mortality Match van der paal](#InfectedMortalityMatchvanderpaal)|Manual|OnlyInfectedMortality 
|[Percentage ever symptomatic bounded](#Percentageeversymptomaticbounded)|TRUE|Base 
|[Percentage ever diagnosed bounded](#Percentageeverdiagnosedbounded)|TRUE|Base 
|[State Membership tracking](#StateMembershiptracking)|Manual|All 
