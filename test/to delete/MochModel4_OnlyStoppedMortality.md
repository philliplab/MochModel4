# Scenario Report




## Model Version: 46
## Scenario: OnlyStoppedMortality

```
## [1] "Scenario Label"
```

```
## [1] "Mortality only in the stopped state"
```

```
## [1] "Scenario Notes"
```

```
##  [1] "Almost all mothers stop treatment and are immortal in all states before treatment cessation. Useful for inspecting mortality in the treatment ceased state."
##  [2] " Substitude: 'HealthyMortalityMotherMultiplier = 1' with 'HealthyMortalityMotherMultiplier = 0'"                                                            
##  [3] "Substitude: 'IncidenceMotherMultiplier = 1' with 'IncidenceMotherMultiplier = 3'"                                                                           
##  [4] "Substitude: 'SymptomsMotherMultiplier = 1' with 'SymptomsMotherMultiplier = 10'"                                                                            
##  [5] "Substitude: 'InfectedDiagnosisMotherMultiplier = 1' with 'InfectedDiagnosisMotherMultiplier = 10'"                                                          
##  [6] "Substitude: 'SymptomsDiagnosisMotherMultiplier = 1' with 'SymptomsDiagnosisMotherMultiplier = 10'"                                                          
##  [7] "Substitude: 'TreatmentMotherMultiplier = 1' with 'TreatmentMotherMultiplier = 1000'"                                                                        
##  [8] "Substitude: 'TreatmentCessationMotherMultiplier = 1' with 'TreatmentCessationMotherMultiplier = 10'"                                                        
##  [9] "Substitude: 'InfectedMortalityMotherMultiplier = 1' with 'InfectedMortalityMotherMultiplier = 0'"                                                           
## [10] "Substitude: 'TreatedMortalityMotherMultiplier = 1' with 'TreatedMortalityMotherMultiplier = 0'"
```

## Mother Model

### Population Stats


There are 10000 Mothers in this scenario.

There are 26427 Children in this scenario.

### State Transitions

A table of the number of mothers who entered each of the different states.


|state                               | entrances| percentage|
|:-----------------------------------|---------:|----------:|
|Mother entrances in DIAGNOSED state |      3496|       35.0|
|Mother entrances in DIAGSYMP state  |      7641|       76.4|
|Mother entrances in HEALTHY state   |         0|        0.0|
|Mother entrances in INFECTED state  |      8687|       86.9|
|Mother entrances in STOPPED state   |      7450|       74.5|
|Mother entrances in SYMPTOMS state  |      5191|       51.9|
|Mother entrances in TREATED state   |      7639|       76.4|

### State Membership

The total time spent by mothers in the various states.


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DIAGNOSED state |       1348.8|        0.2|
|Mother years in DIAGSYMP state  |         76.4|        0.0|
|Mother years in HEALTHY state   |     330297.8|       53.9|
|Mother years in INFECTED state  |       5266.1|        0.9|
|Mother years in STOPPED state   |      11814.5|        1.9|
|Mother years in SYMPTOMS state  |     239748.4|       39.2|
|Mother years in TREATED state   |      23796.1|        3.9|

Plot of the total time spent in the states involved in scheduling the death of a mother.

![plot of chunk unnamed-chunk-7](figure/OnlyStoppedMortality/unnamed-chunk-7.png) 

Plot of the total time spent in the detailed states that track mothers disease course.

![plot of chunk unnamed-chunk-8](figure/OnlyStoppedMortality/unnamed-chunk-8.png) 

### Mother Survival

#### General Notes

The mortality of the the treated mothers is unrealistic

If there is no mortality in the scenario for the population the plot is for then the plot cannot be produced.

#### Survival of all Mothers


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-9](figure/OnlyStoppedMortality/unnamed-chunk-9.png) 

#### Survival of Mother who never became infected


```
## Using Value as value column: use value.var to override.
```

```
## Error: Type of RHS ('double') must match LHS ('logical'). To check and
## coerce would impact performance too much for the fastest cases. Either
## change the type of the target column, or coerce the RHS of := yourself
## (e.g. by using 1L instead of 1)
```

```
## Error: object 'p' not found
```

```
## Error: object 'p' not found
```

```
## Warning: object 'p' not found
```

#### Survival of Mother who became infected


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-11](figure/OnlyStoppedMortality/unnamed-chunk-11.png) 

#### Survival of Mother who became treated


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-12](figure/OnlyStoppedMortality/unnamed-chunk-12.png) 

### Number of children per mother

![plot of chunk unnamed-chunk-13](figure/OnlyStoppedMortality/unnamed-chunk-13.png) 

### Age of mothers at birth of children

![plot of chunk unnamed-chunk-14](figure/OnlyStoppedMortality/unnamed-chunk-14.png) 

## Child Model

### Gender Ratio

![plot of chunk unnamed-chunk-15](figure/OnlyStoppedMortality/unnamed-chunk-15.png) 

### State Membership


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DEAD state      |    768588.62|       40.5|
|Mother years in DIAGNOSED state |      1124.30|        0.1|
|Mother years in DIAGSYMP state  |        67.68|        0.0|
|Mother years in HEALTHY state   |    843333.14|       44.4|
|Mother years in INFECTED state  |      3770.16|        0.2|
|Mother years in STOPPED state   |     26501.34|        1.4|
|Mother years in SYMPTOMS state  |    204350.19|       10.8|
|Mother years in TREATED state   |     49668.16|        2.6|

![plot of chunk unnamed-chunk-17](figure/OnlyStoppedMortality/unnamed-chunk-17.png) 

![plot of chunk unnamed-chunk-18](figure/OnlyStoppedMortality/unnamed-chunk-18.png) 



