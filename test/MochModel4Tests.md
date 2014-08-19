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
##    0.16    0.19   46.05
```

```
## [1] "Number of Scenarios"
```

```
## [1] 12
```

# Tests for Model Version 31

Notes on the organization of the tests:
- If a test involves a child in any way, it goes in the child section.
- If a test involves only one transition, then it goes into that transition's section. This includes test that only test the effect of one parameter. If that parameter is specifically associated with only one transition, then the test goes there.
- Any other test goes under the heading of the scenario it uses.
- If a test does not fit any of these categories, dump it in the General section.

## Mother - Transitions

### Transition 1 - Death of Uninfected Mothers

#### <a name="NodeathsfromhealthyinOnlyInfectedMortality"></a>No deaths from healthy in OnlyInfectedMortality

Scenario(s): OnlyInfectedMortality

No mothers should die from the Healthy state in the OnlyInfectedMortality Scenario

[To Summary Table](#summary_tab_link)  

```
##                                  metrics    ..1
## 1                 Healthy Mortality Rate     NA
## 2           Healthy mother years at risk 296732
## 3                Infected Mortality Rate     NA
## 4          Infected mother years at risk 102705
## 5                   Mother years at risk 399436
## 6                       Number of deaths   9066
## 7    Number of deaths from HEALTHY state      0
## 8   Number of deaths from INFECTED state   9066
## 9    Number of deaths from STOPPED state      0
## 10   Number of deaths from TREATED state      0
## 11                Overall Mortality Rate     NA
## 12                Treated Mortality Rate     NA
## 13          Treated mother years at risk      0
## 14       Treatment Ceased Mortality Rate     NA
## 15 Treatment Ceased mother years at risk      0
```
  

**Result: TRUE**  

---


#### <a name="HealthyMortalityMatchInputs"></a>Healthy Mortality Match Inputs

Scenario(s): NoHIV

When the kaplan meier curves of the healthy mortalities are compared to the input ASSA mortalities, then they must be similar. 

Note that the input parameters are not perfectly translated into a curve. This can be optimized in the future, but I believe it is good enough for a quick check.

[To Summary Table](#summary_tab_link)  
![plot of chunk unnamed-chunk-4](figure/unnamed-chunk-4.png) 
  

**Result: Manual**  

---


### Transition 2 - HIV Infection

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


### Transition 3 - Death of Infected Mothers

#### <a name="NodeathsfromInfectedinOnlyTreatedMortality"></a>No deaths from Infected in OnlyTreatedMortality

Scenario(s): OnlyTreatedMortality

No mothers should die from the Infected state in the OnlyTreatedMortality Scenario

[To Summary Table](#summary_tab_link)  

```
##                                  metrics    ..1
## 1                 Healthy Mortality Rate      0
## 2           Healthy mother years at risk 236725
## 3                Infected Mortality Rate     NA
## 4          Infected mother years at risk  33173
## 5                   Mother years at risk 520685
## 6                       Number of deaths   8995
## 7    Number of deaths from HEALTHY state      0
## 8   Number of deaths from INFECTED state      0
## 9    Number of deaths from STOPPED state      0
## 10   Number of deaths from TREATED state   8995
## 11                Overall Mortality Rate     NA
## 12                Treated Mortality Rate     NA
## 13          Treated mother years at risk 250787
## 14       Treatment Ceased Mortality Rate     NA
## 15 Treatment Ceased mother years at risk      0
```
  

**Result: TRUE**  

---


#### <a name="InfectedMortalityMatchvanderpaal"></a>Infected Mortality Match van der paal

Scenario(s): OnlyInfectedMortality

When the kaplan meier curves of the infected mortalities are fitted with Weibull curves, the parameters must be similar to those obtained from the van der paal article

[To Summary Table](#summary_tab_link)  


```
## Number of deaths by Van Der Paal Age category:
```

```
## 
##    1    2    3    4 
## 3441  908  158   20
```

![plot of chunk unnamed-chunk-11](figure/unnamed-chunk-111.png) ![plot of chunk unnamed-chunk-11](figure/unnamed-chunk-112.png) 
  

**Result: Manual**  

---


### Transition 4 - Development of Symptoms of HIV Infected Mothers

#### <a name="SymptomRatesMatchvanderpaal"></a>Symptom Rates Match van der paal

Scenario(s): AllInfectedNoMortality

When the kaplan meier curves of the symptom rates are fitted with Weibull curves, the parameters must be similar to those obtained from the van der paal article

[To Summary Table](#summary_tab_link)  

```
## Number of deaths by Van Der Paal Age category:
```

```
## 
##    1    2    3    4 
## 3441  908  158   21
```

![plot of chunk unnamed-chunk-13](figure/unnamed-chunk-131.png) ![plot of chunk unnamed-chunk-13](figure/unnamed-chunk-132.png) 
  

**Result: Manual**  

---


### Transition 5 - Diagnosis of Asymptomatic Mothers
#### <a name="AsymptomaticDiagnosisRatesmatchesinputs"></a>Asymptomatic Diagnosis Rates matches inputs

Scenario(s): AllInfectedNoSymptomsNoMortality

When the kaplan meier curves of the asymptomatic diagnosis rates are compared to the input values, they should look similar

[To Summary Table](#summary_tab_link)  
![plot of chunk unnamed-chunk-15](figure/unnamed-chunk-15.png)   

```
## Mean time till diagnosis from onset of symptoms: 4.96688215346391.
```
  

**Result: Manual**  

---


### Transition 6 - Diagnosis of Symptomatic Mothers
#### <a name="SymptomaticDiagnosisRatesmatchesinputs"></a>Symptomatic Diagnosis Rates matches inputs

Scenario(s): AllInfectedNoMortality

When the kaplan meier curves of the symptomatic diagnosis rates are compared to the input values, they should look similar

[To Summary Table](#summary_tab_link)  
![plot of chunk unnamed-chunk-17](figure/unnamed-chunk-17.png)   

```
## Mean time till diagnosis from onset of symptoms: 2.90830914462988.
```
  

**Result: Manual**  

---


### Transition 7 - Treatment rate of Eligible Mothers
#### <a name="TreatmentRatesmatchesinputs"></a>Treatment Rates matches inputs

Scenario(s): AllInfectedNoMortality

When the kaplan meier curves of the treatment rates are compared to the input values, they should look similar

[To Summary Table](#summary_tab_link)  
![plot of chunk unnamed-chunk-19](figure/unnamed-chunk-19.png)   

```
## Mean time till treatment from Eligibility and diagnosis: 0.0100000000000002.
```
  

**Result: Manual**  

---


#### <a name="TreatmentRatesmatchesinputsWeibullTransition"></a>Treatment Rates matches inputs Weibull Transition

Scenario(s): WeibullTreatmentTransition

The input rates for the transition to treatment must match the input rates in the case that the weibull transition is specified.

[To Summary Table](#summary_tab_link)  
![plot of chunk unnamed-chunk-21](figure/unnamed-chunk-21.png)   

```
## Mean time till treatment from Eligibility and diagnosis: 4.9568826822939.
```
  

**Result: Manual**  

---


#### <a name="Treatmentchanceisassignedasexpected"></a>Treatment chance is assigned as expected

Scenario(s): Base

The treatment chance must be a random uniform number. Min between 0 and 0.05, Max between 0.95 and 1, Mean between 0.475 and 0.525

[To Summary Table](#summary_tab_link)  

```
## $Min
## [1] 0.00005855
## 
## $Max
## [1] 0.9998
## 
## $Avg
## [1] 0.5036
```
  

**Result: TRUE**  

---


#### <a name="TreatmentCoverageRateCoverageBasedTransition"></a>Treatment Coverage Rate Coverage Based Transition

Scenario(s): AllInfectedNoMortality

 Scenario(s): WeibullTreatmentTransition

Plots showing the treatment coverage rates. 

The line shows how many mothers started treatment at a given age vs how many mothers became eligible at a given age. 

If the weibull transition is used, then the line should increase with age since the probability of going on treatment increases with time spent in the eligible state. 

If the Treatment coverage rate transition is used, then the line must reflect the treatment coverage rate for the given age. Note that the variability increases drastically as the number of mothers who become eligible decreases.

[To Summary Table](#summary_tab_link)  

```
## [1] "AllInfectedNoMortality"
```

![plot of chunk unnamed-chunk-25](figure/unnamed-chunk-251.png) 

```
## [1] "WeibullTreatmentTransition"
```

![plot of chunk unnamed-chunk-25](figure/unnamed-chunk-252.png) 
  

**Result: Manual**  

---


### Transition 8 - Death of Treated Mothers

#### <a name="TreatedMortalityMatchInputs"></a>Treated Mortality Match Inputs

Scenario(s): OnlyTreatedMortality

When the kaplan meier curves of the treated mortalities are compared to the input ASSA mortalities, then they must be similar. There is obviously somethings wrong: Need a different way for dealing with older people. Also that step that happens right at the start in the simulated data is not right.

[To Summary Table](#summary_tab_link)  
![plot of chunk unnamed-chunk-27](figure/unnamed-chunk-27.png) 
  

**Result: FALSE**  

---


#### <a name="NodeathsfromTreatedinOnlyStoppedMortality"></a>No deaths from Treated in OnlyStoppedMortality

Scenario(s): OnlyStoppedMortality

No mothers should die from the Treated state in the OnlyStoppedMortality Scenario

[To Summary Table](#summary_tab_link)  

```
##                                  metrics    ..1
## 1                 Healthy Mortality Rate      0
## 2           Healthy mother years at risk 330298
## 3                Infected Mortality Rate     NA
## 4          Infected mother years at risk  29463
## 5                   Mother years at risk 402132
## 6                       Number of deaths   8685
## 7    Number of deaths from HEALTHY state      0
## 8   Number of deaths from INFECTED state      0
## 9    Number of deaths from STOPPED state   8685
## 10   Number of deaths from TREATED state      0
## 11                Overall Mortality Rate     NA
## 12                Treated Mortality Rate     NA
## 13          Treated mother years at risk  28356
## 14       Treatment Ceased Mortality Rate     NA
## 15 Treatment Ceased mother years at risk  14015
```
  

**Result: TRUE**  

---


### Transition 9 - Treatment cessation

#### <a name="TreatmentCessationRatesmatchesinputs"></a>Treatment Cessation Rates matches inputs

Scenario(s): AllStopped

When the kaplan meier curves of the treatment stoppage rates are compared to the input values, they should look similar

[To Summary Table](#summary_tab_link)  
![plot of chunk unnamed-chunk-31](figure/unnamed-chunk-31.png)   

```
## Mean time till treatment from Eligibility and diagnosis: 24.3654466726808.
```
  

**Result: FALSE**  

---


### Transition 10 - Death of Stopped Mothers

#### <a name="StoppedMortalityMatchInputs"></a>Stopped Mortality Match Inputs

Scenario(s): OnlyStoppedMortality

When the kaplan meier curves of the stopped mortalities are compared to the input ASSA mortalities, then they must be similar.

[To Summary Table](#summary_tab_link)  

```
## Number of deaths by Van Der Paal Age category:
```

```
## 
##    1    2    3    4 
## 3190  938  179   31
```

![plot of chunk unnamed-chunk-33](figure/unnamed-chunk-331.png) ![plot of chunk unnamed-chunk-33](figure/unnamed-chunk-332.png) 
  

**Result: Manual**  

---


## Mother - Scenarios

### Base

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
## [1] 37065
## 
## $deaths_in_healthy
## [1] 5502
## 
## $deaths_in_infected
## [1] 2771
## 
## $crude_healthy_mortality
## [1] 0.01217
## 
## $crude_infected_mortality
## [1] 0.07476
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


### OnlyInfectedMortality

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


## Mother - General

#### <a name="MotherMaxAge"></a>Mother Max Age

Scenario(s): Base

The max age of a mother cannot be greater than 92. This is failing because the old people's mortality on treatment and STOPPED is not correctly implemented from ASSA model

[To Summary Table](#summary_tab_link)  

```
##                    metrics        Value CV SE
## 1          Population size 10000.000000 NA NA
## 2 Minimum duration of life     0.001127 NA NA
## 3 Maximum duration of life   100.000000 NA NA
## 4          Life expectancy    51.630533 NA NA
```
  

**Result: FALSE**  

---


#### <a name="Allsurvivalcurves"></a>All survival curves

Scenario(s): Base

Currently broken - Must add censoring to the KM curves. Plots of all the survival curves. The curves must be inspected manually. Only add those states that directly affect the scehduling og mortality, otherwise this plot will become to cluttered.

[To Summary Table](#summary_tab_link)  
![plot of chunk unnamed-chunk-49](figure/unnamed-chunk-49.png) 
  

**Result: Manual**  

---


#### <a name="MDEATH_SCHEDStateMembershiptracking"></a>MDEATH_SCHED State Membership tracking

Scenario(s): All

Plots showing the membership of mothers to the different states in the MDEATH_SCHED_STATE

[To Summary Table](#summary_tab_link)  

![plot of chunk unnamed-chunk-52](figure/unnamed-chunk-52.png) 
  

**Result: Manual**  

---


#### <a name="MDETAILEDStateMembershiptracking"></a>MDETAILED State Membership tracking

Scenario(s): All

Plots showing the membership of mothers to the different states in the MDEATH_SCHED_STATE

[To Summary Table](#summary_tab_link)  
![plot of chunk unnamed-chunk-54](figure/unnamed-chunk-54.png) 
  

**Result: Manual**  

---

## Child

## Summary of All Tests
Model Version: 31

#### Summary of the Test Results 

|FALSE|Manual|TRUE|
|:-:|:-:|:-:|
|3|12|11| 

#### <a name="summary_tab_link"></a>Table of the Test Results

|Name|Result|Scenarios|
|:-:|:-:|:-:|
|[No deaths from healthy in OnlyInfectedMortality](#NodeathsfromhealthyinOnlyInfectedMortality)|TRUE|OnlyInfectedMortality 
|[Healthy Mortality Match Inputs](#HealthyMortalityMatchInputs)|Manual|NoHIV 
|[Percentage ever infected zero in NoHIV](#PercentageeverinfectedzeroinNoHIV)|TRUE|NoHIV 
|[No deaths from Infected in OnlyTreatedMortality](#NodeathsfromInfectedinOnlyTreatedMortality)|TRUE|OnlyTreatedMortality 
|[Infected Mortality Match van der paal](#InfectedMortalityMatchvanderpaal)|Manual|OnlyInfectedMortality 
|[Symptom Rates Match van der paal](#SymptomRatesMatchvanderpaal)|Manual|AllInfectedNoMortality 
|[Asymptomatic Diagnosis Rates matches inputs](#AsymptomaticDiagnosisRatesmatchesinputs)|Manual|AllInfectedNoSymptomsNoMortality 
|[Symptomatic Diagnosis Rates matches inputs](#SymptomaticDiagnosisRatesmatchesinputs)|Manual|AllInfectedNoMortality 
|[Treatment Rates matches inputs](#TreatmentRatesmatchesinputs)|Manual|AllInfectedNoMortality 
|[Treatment Rates matches inputs Weibull Transition](#TreatmentRatesmatchesinputsWeibullTransition)|Manual|WeibullTreatmentTransition 
|[Treatment chance is assigned as expected](#Treatmentchanceisassignedasexpected)|TRUE|Base 
|[Treatment Coverage Rate Coverage Based Transition](#TreatmentCoverageRateCoverageBasedTransition)|Manual|AllInfectedNoMortality, WeibullTreatmentTransition 
|[Treated Mortality Match Inputs](#TreatedMortalityMatchInputs)|FALSE|OnlyTreatedMortality 
|[No deaths from Treated in OnlyStoppedMortality](#NodeathsfromTreatedinOnlyStoppedMortality)|TRUE|OnlyStoppedMortality 
|[Treatment Cessation Rates matches inputs](#TreatmentCessationRatesmatchesinputs)|FALSE|AllStopped 
|[Stopped Mortality Match Inputs](#StoppedMortalityMatchInputs)|Manual|OnlyStoppedMortality 
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
