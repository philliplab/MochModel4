---
title: "MochModel4 Tests"
author: "Phillip Labuschagne"
date: "Tuesday, July 22, 2014"
output: html_document
---

# Setup and Run Model





```
## [1] "Running Time"
```

```
##    user  system elapsed 
##    0.12    0.09   39.97
```

```
## [1] "Number of Scenarios"
```

```
## [1] 9
```

# Tests for Model Version 26

Notes on the organization of the tests:
- If a test involves a child in any way, it goes in the child section.
- If a test involves only one transition, then it goes into that transition's section. This includes test that only test the effect of one parameter. If that parameter is specifically associated with only one transition, then the test goes there.
- Any other test goes under the heading of the scenario it uses.
- If a test does not fit any of these categories, dump it in the General section.

## Mother

### Transitions

#### Transition 1 - Death of Uninfected Mothers

#### <a name="NodeathsfromhealthyinNoHealthyMortality"></a>No deaths from healthy in NoHealthyMortality

Scenario(s): NoHealthyMortality

No mothers should die from the Healthy state in the NoHealthyMortality Scenario

[To Summary Table](#summary_tab_link)  

```
##                                 metrics    ..1
## 1                Healthy Mortality Rate      0
## 2          Healthy mother years at risk 634221
## 3               Infected Mortality Rate     NA
## 4         Infected mother years at risk  35262
## 5                  Mother years at risk 714963
## 6                      Number of deaths   4871
## 7   Number of deaths from HEALTHY state      0
## 8  Number of deaths from INFECTED state   2062
## 9   Number of deaths from TREATED state   1467
## 10               Overall Mortality Rate     NA
## 11               Treated Mortality Rate     NA
## 12         Treated mother years at risk  43401
```
  

**Result: TRUE**  

---


#### Transition 2 - HIV Infection

#### <a name="PercentageeverinfectedzeroinNoHIV"></a>Percentage ever infected zero in NoHIV

Scenario(s): NoHIV

The number of mothers ever infected in the NoHIV case should be 0

[To Summary Table](#summary_tab_link)  

```
## $total_infections
## [1] 0
```
  

**Result: TRUE**  

---


#### Transition 3 - Death of Infected Mothers

#### <a name="NodeathsfromInfectedinNoInfectedMortality"></a>No deaths from Infected in NoInfectedMortality

Scenario(s): NoInfectedMortality

No mothers should die from the Infected state in the NoInfectedMortality Scenario

[To Summary Table](#summary_tab_link)  

```
##                                 metrics        ..1
## 1                Healthy Mortality Rate      4.661
## 2          Healthy mother years at risk 452227.730
## 3               Infected Mortality Rate         NA
## 4         Infected mother years at risk  41654.846
## 5                  Mother years at risk 564981.966
## 6                      Number of deaths   9924.000
## 7   Number of deaths from HEALTHY state   5502.000
## 8  Number of deaths from INFECTED state      0.000
## 9   Number of deaths from TREATED state   2339.000
## 10               Overall Mortality Rate         NA
## 11               Treated Mortality Rate         NA
## 12         Treated mother years at risk  67841.994
```
  

**Result: TRUE**  

---


#### <a name="InfectedMortalityMatchvanderpaal"></a>Infected Mortality Match van der paal

Scenario(s): OnlyInfectedMortality

When the kaplan meier curves of the infected mortalities are fitted with Weibull curves, the parameters must be similar to those obtained from the van der paal article

[To Summary Table](#summary_tab_link)  

![plot of chunk unnamed-chunk-8](figure/unnamed-chunk-81.png) 

```
## 
##    1 
## 3441 
## 
##   2 
## 908 
## 
##   3 
## 158 
## 
##  4 
## 20
```

![plot of chunk unnamed-chunk-8](figure/unnamed-chunk-82.png) 
  

**Result: Manual**  

---


#### Transition 4 - Development of Symptoms of HIV Infected Mothers

#### <a name="SymptomRatesMatchvanderpaal"></a>Symptom Rates Match van der paal

Scenario(s): AllInfectedNoMortality

When the kaplan meier curves of the symptom rates are fitted with Weibull curves, the parameters must be similar to those obtained from the van der paal article

[To Summary Table](#summary_tab_link)  
![plot of chunk unnamed-chunk-10](figure/unnamed-chunk-101.png) 

```
## 
##    1 
## 3441 
## 
##   2 
## 908 
## 
##   3 
## 158 
## 
##  4 
## 21
```

![plot of chunk unnamed-chunk-10](figure/unnamed-chunk-102.png) 
  

**Result: Manual**  

---


#### Transition 5 - Diagnosis of Asymptomatic Mothers
#### <a name="AsymptomaticDiagnosisRatesmatchesinputs"></a>Asymptomatic Diagnosis Rates matches inputs

Scenario(s): AllInfectedNoSymptomsNoMortality

When the kaplan meier curves of the asymptomatic diagnosis rates are compared to the input values, they should look similar

[To Summary Table](#summary_tab_link)  
![plot of chunk unnamed-chunk-12](figure/unnamed-chunk-12.png)   

```
## Mean time till diagnosis from onset of symptoms: 4.96688215346391.
```
  

**Result: Manual**  

---


#### Transition 6 - Diagnosis of Symptomatic Mothers
#### <a name="SymptomaticDiagnosisRatesmatchesinputs"></a>Symptomatic Diagnosis Rates matches inputs

Scenario(s): AllInfectedNoMortality

When the kaplan meier curves of the symptomatic diagnosis rates are compared to the input values, they should look similar

[To Summary Table](#summary_tab_link)  
![plot of chunk unnamed-chunk-14](figure/unnamed-chunk-14.png)   

```
## Mean time till diagnosis from onset of symptoms: 2.90830914462988.
```
  

**Result: Manual**  

---


#### Transition 7 - Treatment rate of Eligible Mothers
#### <a name="TreatmentRatesmatchesinputs"></a>Treatment Rates matches inputs

Scenario(s): AllInfectedNoMortality

When the kaplan meier curves of the treatment rates are compared to the input values, they should look similar

[To Summary Table](#summary_tab_link)  
![plot of chunk unnamed-chunk-16](figure/unnamed-chunk-16.png)   

```
## Mean time till treatment from Eligibility and diagnosis: 1.00022084805654.
```
  

**Result: Manual**  

---


#### <a name="TreatmentRatesmatchesinputs"></a>Treatment Rates matches inputs

Scenario(s): WeibullTreatmentTransition

The input rates for the transition to treatment must match the input rates in the case that the weibull transition is specified.

[To Summary Table](#summary_tab_link)  
![plot of chunk unnamed-chunk-18](figure/unnamed-chunk-18.png)   

```
## Mean time till treatment from Eligibility and diagnosis: 4.9568826822939.
```
  

**Result: Manual**  

---


#### Transition 9 - Treatment cessation
#### <a name="TreatmentCessationRatesmatchesinputs"></a>Treatment Cessation Rates matches inputs

Scenario(s): AllInfectedNoMortality

When the kaplan meier curves of the treatment stoppage rates are compared to the input values, they should look similar

[To Summary Table](#summary_tab_link)  
![plot of chunk unnamed-chunk-20](figure/unnamed-chunk-20.png)   

```
## Mean time till treatment from Eligibility and diagnosis: 14.5481817049969.
```
  

**Result: Manual**  

---

### Scenarios

#### Base

#### <a name="LifeExpectancyHealthyMother"></a>Life Expectancy Healthy Mother

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


#### <a name="Percentageeverinfectedbounded"></a>Percentage ever infected bounded

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


#### <a name="InfectedvsHealthyMortality"></a>Infected vs Healthy Mortality

Scenario(s): Base

The mortality of uninfected mothers must be lower than the mortality of uninfected mothers. Mortality is tricky to measure accurately thus a proxy is used. Total deaths from state is compared to the total years spent in the state for each state. Further refinements should be made to this test

[To Summary Table](#summary_tab_link)  

```
## $total_time_in_healthy
## [1] 452228
## 
## $total_time_in_infected
## [1] 32532
## 
## $deaths_in_healthy
## [1] 5502
## 
## $deaths_in_infected
## [1] 1832
## 
## $crude_healthy_mortality
## [1] 0.01217
## 
## $crude_infected_mortality
## [1] 0.05631
```
  

**Result: TRUE**  

---


#### <a name="Percentageeversymptomaticbounded"></a>Percentage ever symptomatic bounded

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


#### <a name="Percentageeverdiagnosedbounded"></a>Percentage ever diagnosed bounded

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


#### OnlyInfectedMortality

#### <a name="OnlyInfectedMortalityscenariohasmostpeopledyingfrominfectedstate"></a>OnlyInfectedMortality scenario has most people dying from infected state

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


### General

#### <a name="MotherMaxAge"></a>Mother Max Age

Scenario(s): Base

The max age of a mother cannot be greater than 92

[To Summary Table](#summary_tab_link)  

```
##                    metrics        Value CV SE
## 1          Population size 10000.000000 NA NA
## 2 Minimum duration of life     0.001127 NA NA
## 3 Maximum duration of life   100.000000 NA NA
## 4          Life expectancy    52.744129 NA NA
```
  

**Result: FALSE**  

---


#### <a name="Allsurvivalcurves"></a>All survival curves

Scenario(s): Base

Currently broken - Must add censoring to the KM curves. Plots of all the survival curves. The curves must be inspected manually. Only add those states that directly affect the scehduling og mortality, otherwise this plot will become to cluttered.

[To Summary Table](#summary_tab_link)  
![plot of chunk unnamed-chunk-36](figure/unnamed-chunk-36.png) 
  

**Result: Manual**  

---


#### <a name="MDEATH_SCHEDStateMembershiptracking"></a>MDEATH_SCHED State Membership tracking

Scenario(s): All

Plots showing the membership of mothers to the different states in the MDEATH_SCHED_STATE

[To Summary Table](#summary_tab_link)  

![plot of chunk unnamed-chunk-39](figure/unnamed-chunk-39.png) 
  

**Result: Manual**  

---


#### <a name="MDETAILEDStateMembershiptracking"></a>MDETAILED State Membership tracking

Scenario(s): All

Plots showing the membership of mothers to the different states in the MDEATH_SCHED_STATE

[To Summary Table](#summary_tab_link)  
![plot of chunk unnamed-chunk-41](figure/unnamed-chunk-41.png) 
  

**Result: Manual**  

---

## Child

## Summary of All Tests
Model Version: 26

#### Summary of the Test Results 

|FALSE|Manual|TRUE|
|:-:|:-:|:-:|
|1|9|9| 

#### <a name="summary_tab_link"></a>Table of the Test Results

|Name|Result|Scenarios|
|:-:|:-:|:-:|
|[No deaths from healthy in NoHealthyMortality](#NodeathsfromhealthyinNoHealthyMortality)|TRUE|NoHealthyMortality 
|[Percentage ever infected zero in NoHIV](#PercentageeverinfectedzeroinNoHIV)|TRUE|NoHIV 
|[No deaths from Infected in NoInfectedMortality](#NodeathsfromInfectedinNoInfectedMortality)|TRUE|NoInfectedMortality 
|[Infected Mortality Match van der paal](#InfectedMortalityMatchvanderpaal)|Manual|OnlyInfectedMortality 
|[Symptom Rates Match van der paal](#SymptomRatesMatchvanderpaal)|Manual|AllInfectedNoMortality 
|[Asymptomatic Diagnosis Rates matches inputs](#AsymptomaticDiagnosisRatesmatchesinputs)|Manual|AllInfectedNoSymptomsNoMortality 
|[Symptomatic Diagnosis Rates matches inputs](#SymptomaticDiagnosisRatesmatchesinputs)|Manual|AllInfectedNoMortality 
|[Treatment Rates matches inputs](#TreatmentRatesmatchesinputs)|Manual|WeibullTreatmentTransition 
|[Treatment Cessation Rates matches inputs](#TreatmentCessationRatesmatchesinputs)|Manual|AllInfectedNoMortality 
|[Life Expectancy Healthy Mother](#LifeExpectancyHealthyMother)|TRUE|NoHIV 
|[Percentage ever infected bounded](#Percentageeverinfectedbounded)|TRUE|Base 
|[Infected vs Healthy Mortality](#InfectedvsHealthyMortality)|TRUE|Base 
|[Percentage ever symptomatic bounded](#Percentageeversymptomaticbounded)|TRUE|Base 
|[Percentage ever diagnosed bounded](#Percentageeverdiagnosedbounded)|TRUE|Base 
|[OnlyInfectedMortality scenario has most people dying from infected state](#OnlyInfectedMortalityscenariohasmostpeopledyingfrominfectedstate)|TRUE|OnlyInfectedMortality 
|[Mother Max Age](#MotherMaxAge)|FALSE|Base 
|[All survival curves](#Allsurvivalcurves)|Manual|Base 
|[MDEATH_SCHED State Membership tracking](#MDEATH_SCHEDStateMembershiptracking)|Manual|All 
|[MDETAILED State Membership tracking](#MDETAILEDStateMembershiptracking)|Manual|All 
