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
##    0.12    0.12   78.75
```

```
## [1] "Number of Scenarios"
```

```
## [1] 14
```

# Tests for Model Version 49

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
## 6                       Number of deaths  10000
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
## 4          Infected mother years at risk 279869
## 5                   Mother years at risk 656687
## 6                       Number of deaths  10000
## 7    Number of deaths from HEALTHY state      0
## 8   Number of deaths from INFECTED state      0
## 9    Number of deaths from STOPPED state      0
## 10   Number of deaths from TREATED state   8073
## 11                Overall Mortality Rate     NA
## 12                Treated Mortality Rate     NA
## 13          Treated mother years at risk 140093
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
## 3441  909  158   20
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
## 3441  909  158   20
```

![plot of chunk unnamed-chunk-13](figure/unnamed-chunk-131.png) ![plot of chunk unnamed-chunk-13](figure/unnamed-chunk-132.png) 
  

**Result: Manual**  

---


### Transition 5 - Diagnosis of Asymptomatic Mothers
#### <a name="AsymptomaticExponentialDiagnosisRatesmatchesinputs"></a>Asymptomatic Exponential Diagnosis Rates matches inputs

Scenario(s): AllInfectedNoSympNoMortExpDiag

When the kaplan meier curves of the asymptomatic diagnosis rates are compared to the input values, they should look similar. This is only for the case where the transition is based on the exponential distribution

[To Summary Table](#summary_tab_link)  
![plot of chunk unnamed-chunk-15](figure/unnamed-chunk-15.png)   

```
## Mean time till diagnosis from onset of symptoms: 4.96599265105437.
```
  

**Result: Manual**  

---


#### <a name="AsymptomaticPercentageDiagnosisRatesmatchesinputs"></a>Asymptomatic Percentage Diagnosis Rates matches inputs

Scenario(s): Base

The percentage of mothers who become diagnosed while asymptomatic must match the input rate. 

This test is only for the case where the transition is based on a percentage and not on a exponential curve.

[To Summary Table](#summary_tab_link)  

```
## $`output infected mothers`
## [1] 4498
## 
## $`output diagnosed mothers`
## [1] 1774
## 
## $`output percentage`
## [1] 0.3944
## 
## $`input percentage`
## [1] 0.4
## 
## $`input / output ratio`
## [1] 1.014
```
  

**Result: TRUE**  

---


### Transition 6 - Diagnosis of Symptomatic Mothers
#### <a name="SymptomaticExponentialDiagnosisRatesmatchesinputs"></a>Symptomatic Exponential Diagnosis Rates matches inputs

Scenario(s): AllSymptomsNoMortExpDiag

When the kaplan meier curves of the symptomatic diagnosis rates are compared to the input values, they should look similar. This is only for the case where the transition is based on the exponential distribution

[To Summary Table](#summary_tab_link)  
![plot of chunk unnamed-chunk-19](figure/unnamed-chunk-19.png)   

```
## Mean time till diagnosis from onset of symptoms: 2.92839658993833.
```
  

**Result: Manual**  

---


#### <a name="SymptomaticPercentageDiagnosisRatesmatchesinputs"></a>Symptomatic Percentage Diagnosis Rates matches inputs

Scenario(s): Base

The percentage of mothers who become diagnosed while asymptomatic must match the input rate. 

This test is only for the case where the transition is based on the percentage and not the exponential curve.

[To Summary Table](#summary_tab_link)  

```
## $`output symptomatic mothers`
## [1] 1964
## 
## $`output diagnosed mothers`
## [1] 1573
## 
## $`output percentage`
## [1] 0.8009
## 
## $`input percentage`
## [1] 0.8
## 
## $`input / output ratio`
## [1] 0.9989
```
  

**Result: TRUE**  

---


### Transition 7 - Treatment rate of Eligible Mothers

#### <a name="TreatmentRatesmatchesinputs"></a>Treatment Rates matches inputs

Scenario(s): AllInfectedNoMortality

 Scenario(s): WeibullTreatmentTransition

When the kaplan meier curves of the treatment rates are compared to the input values, they should look similar. 

When the treatment coverage rate approach is used to assign treatment, it should be a step function with the majority of the transitions happening at time 0.01. Then much smaller steps at 1.01, 2.01, .... (depending on how the treatment coverage rate fluctuates) 

If the weibull transition is used, then the KM curve should look like a weibull curve. A red line will show the curve constructed from the input parameters.

[To Summary Table](#summary_tab_link)  

```
## [1] "AllInfectedNoMortality"
```

![plot of chunk unnamed-chunk-23](figure/unnamed-chunk-231.png) 

```
##   
## Mean time till treatment from Eligibility and diagnosis: 0.0100000000000012. 
##   
## [1] "WeibullTreatmentTransition"
```

![plot of chunk unnamed-chunk-23](figure/unnamed-chunk-232.png) 

```
##   
## Mean time till treatment from Eligibility and diagnosis: 4.78616468550891. 
## 
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

#### <a name="TreatmentCoverageRateMatchesInputRate"></a>Treatment Coverage Rate Matches Input Rate

Scenario(s): AllInfectedNoMortality

Plots showing the treatment coverage rates. 

The line shows how many mothers started treatment at a given age vs how many mothers became eligible at a given age. 

If the Treatment coverage rate transition is used, then the line must reflect the treatment coverage rate for the given age. Note that the variability increases drastically as the number of mothers who become eligible decreases.

If the weibull transition is used, then the line should increase with age since the probability of going on treatment increases with time spent in the eligible state. This is not really meaningful. One should rather look at the 'Treatment Rate of Eligible Mothers' test.


[To Summary Table](#summary_tab_link)  

```
## [1] "AllInfectedNoMortality"
```

![plot of chunk unnamed-chunk-27](figure/unnamed-chunk-27.png) 
  

**Result: Manual**  

---

### Transition 8 - Death of Treated Mothers

#### <a name="TreatedMortalityRelatestoInputs"></a>Treated Mortality Relates to Inputs

Scenario(s): OnlyTreatedMortality

The treated mortality in the mother child model must be much lower than the only treated mortality from the ASSA model since that ASSA models treated mortality excludes non-HIV mortality 

[To Summary Table](#summary_tab_link)  
![plot of chunk unnamed-chunk-29](figure/unnamed-chunk-29.png) 
  

**Result: TRUE**  

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
## 4          Infected mother years at risk 246440
## 5                   Mother years at risk 612348
## 6                       Number of deaths  10000
## 7    Number of deaths from HEALTHY state      0
## 8   Number of deaths from INFECTED state      0
## 9    Number of deaths from STOPPED state   7362
## 10   Number of deaths from TREATED state      0
## 11                Overall Mortality Rate     NA
## 12                Treated Mortality Rate     NA
## 13          Treated mother years at risk  23796
## 14       Treatment Ceased Mortality Rate     NA
## 15 Treatment Ceased mother years at risk  11815
```
  

**Result: TRUE**  

---

### Transition 9 - Treatment cessation

#### <a name="TreatmentCessationRatesmatchesinputs"></a>Treatment Cessation Rates matches inputs

Scenario(s): Base

When the kaplan meier curves of the treatment stoppage rates are compared to the input values, they should look similar.

[To Summary Table](#summary_tab_link)  
![plot of chunk unnamed-chunk-33](figure/unnamed-chunk-33.png)   

```
## Mean time till treatment cessarion from treatment: 13.2542007235793.
```
  

**Result: TRUE**  

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
## 2702  800  152   26
```

![plot of chunk unnamed-chunk-35](figure/unnamed-chunk-351.png) ![plot of chunk unnamed-chunk-35](figure/unnamed-chunk-352.png) 
  

**Result: Manual**  

---


### Fertility

#### <a name="MotherAgeatBirthHistogram"></a>Mother Age at Birth Histogram

Scenario(s): Base

A plot of the Ages at which mothers give birth. TODO: Turn this into a real test

[To Summary Table](#summary_tab_link)  
![plot of chunk unnamed-chunk-37](figure/unnamed-chunk-37.png) 
  

**Result: Manual**  

---

#### <a name="MotherFertilityRates"></a>Mother Fertility Rates

Scenario(s): Base

 Scenario(s): ZeroGestation

A plot of the fertility rates of the mothers. Unless the gestation period parameter is set to zero, it is expected that the output rates should be lower than the input rates. TODO: Change this into a test

[To Summary Table](#summary_tab_link)  

```
## [1] "Base"
```

![plot of chunk unnamed-chunk-39](figure/unnamed-chunk-391.png) 

```
## [1] "ZeroGestation"
```

![plot of chunk unnamed-chunk-39](figure/unnamed-chunk-392.png) 
  

**Result: Manual**  

---

#### <a name="NumberofChildrenperMother"></a>Number of Children per Mother

Scenario(s): Base

Plot of number of children per mother. TODO: Convert into a real test

[To Summary Table](#summary_tab_link)  
![plot of chunk unnamed-chunk-41](figure/unnamed-chunk-41.png) 
  

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
## [1] 39948
## 
## $deaths_in_healthy
## [1] 5502
## 
## $deaths_in_infected
## [1] 2839
## 
## $crude_healthy_mortality
## [1] 0.01217
## 
## $crude_infected_mortality
## [1] 0.07107
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
##    0    1 
##  471 4528
```
  

**Result: TRUE**  

---

## Mother - General

#### <a name="InputSESmatchesoutputSES"></a>Input SES matches output SES

Scenario(s): Base

When the input SES rate is compared to the output SES rate, they should be similar

[To Summary Table](#summary_tab_link)  

```
## $high_ses_rate_out
## [1] 0.4934
## 
## $high_ses_rate_in
## [1] 0.5
```
  

**Result: TRUE**  

---

#### <a name="MotherMaxAge"></a>Mother Max Age

Scenario(s): Base

The max age of a mother cannot be greater than 92. This is failing because the old people's mortality on treatment and STOPPED is not correctly implemented from ASSA model

[To Summary Table](#summary_tab_link)  

```
##                    metrics        Value CV SE
## 1          Population size 10000.000000 NA NA
## 2 Minimum duration of life     0.001127 NA NA
## 3 Maximum duration of life    91.993240 NA NA
## 4          Life expectancy    51.474878 NA NA
```
  

**Result: TRUE**  

---

#### <a name="Eventtablerowstrackexactlyoneactor"></a>Event table rows track exactly one actor

Scenario(s): Base

Each row in the events table should track exactly one actor.

[To Summary Table](#summary_tab_link)  

```
## Using Value as value column: use value.var to override.
```

```
## num_actors
##    1 
## 4999
```
  

**Result: TRUE**  

---

#### <a name="MDEATH_SCHEDStateMembershiptracking"></a>MDEATH_SCHED State Membership tracking

Scenario(s): All

Plots showing the membership of mothers to the different states in the MDEATH_SCHED_STATE

[To Summary Table](#summary_tab_link)  

![plot of chunk unnamed-chunk-60](figure/unnamed-chunk-60.png) 
  

**Result: Manual**  

---

#### <a name="MDETAILEDStateMembershiptracking"></a>MDETAILED State Membership tracking

Scenario(s): All

Plots showing the membership of mothers to the different states in the MDEATH_SCHED_STATE

[To Summary Table](#summary_tab_link)  
![plot of chunk unnamed-chunk-62](figure/unnamed-chunk-62.png) 
  

**Result: Manual**  

---

#### <a name="NochangeinMotherfromprevious"></a>No change in Mother from previous

Scenario(s): All

Check that the hash of the membership data of the mothers matches those of the previous run. Note that this is not really a test. If you made changes to the code that affects the mothers, then this test's result must be 'Changed', otherwise it must be 'No_Change'

[To Summary Table](#summary_tab_link)  

```
##               hash_time                             hash
## 109 2014-09-02 22:31:13 df5092e08a7137d63c7d129c1f347dc4
## 110 2014-09-02 23:22:08 df5092e08a7137d63c7d129c1f347dc4
## 111 2014-09-02 23:26:48 df5092e08a7137d63c7d129c1f347dc4
## 112 2014-09-03 21:26:15 df5092e08a7137d63c7d129c1f347dc4
## 113 2014-09-04 05:34:25 ace41a09bd8a1b152d4845fd06f019f6
## 114 2014-09-04 07:19:34 ace41a09bd8a1b152d4845fd06f019f6
```
  

**Result: No_Change**  

---

## Child - Schooling

#### <a name="ChildSchoolStartAge"></a>Child School Start Age

Scenario(s): Base

 Scenario(s): SchoolStartStretch

Histogram of child age at school start. For Base scenario all children start school between 6 and 7 which is reported as age 6. For the SchoolStartStretch scenario Children start school between 5 and 8.

[To Summary Table](#summary_tab_link)  

```
## [1] "Base"
```

![plot of chunk unnamed-chunk-66](figure/unnamed-chunk-661.png) 

```
## [1] "SchoolStartStretch"
```

![plot of chunk unnamed-chunk-66](figure/unnamed-chunk-662.png) 
  

**Result: FALSE**  

---

#### <a name="ChildSchoolStartMDState"></a>Child School Start MD State

Scenario(s): Base

Histogram of childrens mother's disease states at school start

[To Summary Table](#summary_tab_link)  
![plot of chunk unnamed-chunk-68](figure/unnamed-chunk-68.png) 
  

**Result: Manual**  

---

#### <a name="SchoolChildMDETAILEDStateMembershiptracking"></a>School Child MDETAILED State Membership tracking

Scenario(s): All

Plots showing the membership of mothers to the different states in the MDEATH_SCHED_STATE during the time children were at school

[To Summary Table](#summary_tab_link)  

```
## Warning: no non-missing arguments to max; returning -Inf
```

```
## Error: replacement has 1 row, data has 0
```
  

**Result: Manual**  

---

#### <a name="SchoolChildMDETAILEDStateMembershiphistogram"></a>School Child MDETAILED State Membership histogram

Scenario(s): All

Histogram showing the membership of mothers to the different states in the MDEATH_SCHED_STATE during the time children were at school

[To Summary Table](#summary_tab_link)  


```
## Warning: no non-missing arguments to max; returning -Inf
```

```
## Error: replacement has 1 row, data has 0
```
  

**Result: Manual**  

---

#### <a name="DropoutRatescorrectlyspecified"></a>Dropout Rates correctly specified

Scenario(s): Base

Just select a couple of dropout rates from the big multidimensional array and make sure they are what you expect them to be. 

Note that there is an issue with the modgenTester R package. It does not read the Age dimension fully - it chops off the first couple of years. However, this is definitely just an R issue.

[To Summary Table](#summary_tab_link)  

```
## $fhh15
## [1] 0.01842
## 
## $flde13
## [1] 0.1221
## 
## $mhsy16
## [1] 0.03315
## 
## $mldst17
## [1] 0.1888
```
  

**Result: TRUE**  

---

## Child - General

#### <a name="ChildGenderRatios"></a>Child Gender Ratios

Scenario(s): Base

The input and output gender ratios of the children must be similar. The input ratio over the output ratio must be between 0.975 and 1.025.

[To Summary Table](#summary_tab_link)  

```
## $input_female_percentage
## [1] 0.5
## 
## $output_female_percentage
## [1] 0.4977
```
  

**Result: TRUE**  

---

#### <a name="ChildSESRatios"></a>Child SES Ratios

Scenario(s): Base

 Scenario(s): LowFertilityInHighSES

 Scenario(s): NoHIV

A plot to show the SES ratios of the children in different circumstances

[To Summary Table](#summary_tab_link)  
![plot of chunk unnamed-chunk-79](figure/unnamed-chunk-79.png) 
  

**Result: Manual**  

---

#### <a name="ChildMortality"></a>Child Mortality

Scenario(s): Base

 Scenario(s): NoChildMortality

Child output mortality must match child input mortality. There is something a little off here. Will come back to it later.

[To Summary Table](#summary_tab_link)  

```
## [1] "Base"
```

![plot of chunk unnamed-chunk-81](figure/unnamed-chunk-811.png) 

```
## [1] "NoChildMortality"
```

![plot of chunk unnamed-chunk-81](figure/unnamed-chunk-812.png) 
  

**Result: Manual**  

---

#### <a name="ChildMDEATH_SCHEDStateMembershiptracking"></a>Child MDEATH_SCHED State Membership tracking

Scenario(s): All

Plots showing the membership of children's mothers to the different states in the MDEATH_SCHED_STATE

[To Summary Table](#summary_tab_link)  
![plot of chunk unnamed-chunk-83](figure/unnamed-chunk-83.png) 
  

**Result: Manual**  

---

#### <a name="ChildMDETAILEDStateMembershiptracking"></a>Child MDETAILED State Membership tracking

Scenario(s): All

Plots showing the membership of children's mothers to the different states in the MDETAILED_STATE

[To Summary Table](#summary_tab_link)  
![plot of chunk unnamed-chunk-85](figure/unnamed-chunk-85.png) 
  

**Result: Manual**  

---

#### <a name="ChildCHILD_SCHEDStateMembershiptracking"></a>Child CHILD_SCHED State Membership tracking

Scenario(s): All

Plots showing the membership of children's mothers to the different states in the CHILD_SCHED_STATE

[To Summary Table](#summary_tab_link)  
![plot of chunk unnamed-chunk-87](figure/unnamed-chunk-87.png) 
  

**Result: Manual**  

---

## Summary of All Tests
Model Version: 49

#### Summary of the Test Results 

|FALSE|Manual|No_Change|TRUE|
|:-:|:-:|:-:|:-:|
|1|21|1|19| 

#### <a name="summary_tab_link"></a>Table of the Test Results

|Name|Result|Scenarios|
|:-:|:-:|:-:|
|[No deaths from healthy in OnlyInfectedMortality](#NodeathsfromhealthyinOnlyInfectedMortality)|TRUE|OnlyInfectedMortality 
|[Healthy Mortality Match Inputs](#HealthyMortalityMatchInputs)|Manual|NoHIV 
|[Percentage ever infected zero in NoHIV](#PercentageeverinfectedzeroinNoHIV)|TRUE|NoHIV 
|[No deaths from Infected in OnlyTreatedMortality](#NodeathsfromInfectedinOnlyTreatedMortality)|TRUE|OnlyTreatedMortality 
|[Infected Mortality Match van der paal](#InfectedMortalityMatchvanderpaal)|Manual|OnlyInfectedMortality 
|[Symptom Rates Match van der paal](#SymptomRatesMatchvanderpaal)|Manual|AllInfectedNoMortality 
|[Asymptomatic Exponential Diagnosis Rates matches inputs](#AsymptomaticExponentialDiagnosisRatesmatchesinputs)|Manual|AllInfectedNoSympNoMortExpDiag 
|[Asymptomatic Percentage Diagnosis Rates matches inputs](#AsymptomaticPercentageDiagnosisRatesmatchesinputs)|TRUE|Base 
|[Symptomatic Exponential Diagnosis Rates matches inputs](#SymptomaticExponentialDiagnosisRatesmatchesinputs)|Manual|AllSymptomsNoMortExpDiag 
|[Symptomatic Percentage Diagnosis Rates matches inputs](#SymptomaticPercentageDiagnosisRatesmatchesinputs)|TRUE|Base 
|[Treatment Rates matches inputs](#TreatmentRatesmatchesinputs)|Manual|AllInfectedNoMortality, WeibullTreatmentTransition 
|[Treatment chance is assigned as expected](#Treatmentchanceisassignedasexpected)|TRUE|Base 
|[Treatment Coverage Rate Matches Input Rate](#TreatmentCoverageRateMatchesInputRate)|Manual|AllInfectedNoMortality 
|[Treated Mortality Relates to Inputs](#TreatedMortalityRelatestoInputs)|TRUE|OnlyTreatedMortality 
|[No deaths from Treated in OnlyStoppedMortality](#NodeathsfromTreatedinOnlyStoppedMortality)|TRUE|OnlyStoppedMortality 
|[Treatment Cessation Rates matches inputs](#TreatmentCessationRatesmatchesinputs)|TRUE|Base 
|[Stopped Mortality Match Inputs](#StoppedMortalityMatchInputs)|Manual|OnlyStoppedMortality 
|[Mother Age at Birth Histogram](#MotherAgeatBirthHistogram)|Manual|Base 
|[Mother Fertility Rates](#MotherFertilityRates)|Manual|Base, ZeroGestation 
|[Number of Children per Mother](#NumberofChildrenperMother)|Manual|Base 
|[Life Expectancy Healthy Mother](#LifeExpectancyHealthyMother)|TRUE|NoHIV 
|[Percentage ever infected bounded](#Percentageeverinfectedbounded)|TRUE|Base 
|[Infected vs Healthy Mortality](#InfectedvsHealthyMortality)|TRUE|Base 
|[Percentage ever symptomatic bounded](#Percentageeversymptomaticbounded)|TRUE|Base 
|[OnlyInfectedMortality scenario has most people dying from infected state](#OnlyInfectedMortalityscenariohasmostpeopledyingfrominfectedstate)|TRUE|OnlyInfectedMortality 
|[Input SES matches output SES](#InputSESmatchesoutputSES)|TRUE|Base 
|[Mother Max Age](#MotherMaxAge)|TRUE|Base 
|[Event table rows track exactly one actor](#Eventtablerowstrackexactlyoneactor)|TRUE|Base 
|[MDEATH_SCHED State Membership tracking](#MDEATH_SCHEDStateMembershiptracking)|Manual|All 
|[MDETAILED State Membership tracking](#MDETAILEDStateMembershiptracking)|Manual|All 
|[No change in Mother from previous](#NochangeinMotherfromprevious)|No_Change|All 
|[Child School Start Age](#ChildSchoolStartAge)|FALSE|Base, SchoolStartStretch 
|[Child School Start MD State](#ChildSchoolStartMDState)|Manual|Base 
|[School Child MDETAILED State Membership tracking](#SchoolChildMDETAILEDStateMembershiptracking)|Manual|All 
|[School Child MDETAILED State Membership histogram](#SchoolChildMDETAILEDStateMembershiphistogram)|Manual|All 
|[Dropout Rates correctly specified](#DropoutRatescorrectlyspecified)|TRUE|Base 
|[Child Gender Ratios](#ChildGenderRatios)|TRUE|Base 
|[Child SES Ratios](#ChildSESRatios)|Manual|Base, LowFertilityInHighSES, NoHIV 
|[Child Mortality](#ChildMortality)|Manual|Base, NoChildMortality 
|[Child MDEATH_SCHED State Membership tracking](#ChildMDEATH_SCHEDStateMembershiptracking)|Manual|All 
|[Child MDETAILED State Membership tracking](#ChildMDETAILEDStateMembershiptracking)|Manual|All 
|[Child CHILD_SCHED State Membership tracking](#ChildCHILD_SCHEDStateMembershiptracking)|Manual|All 

## Debugging NOTES


