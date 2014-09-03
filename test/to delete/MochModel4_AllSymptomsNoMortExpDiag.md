# Scenario Report




## Model Version: 49
## Scenario: AllSymptomsNoMortExpDiag

```
## [1] "Scenario Label"
```

```
## [1] "Exponential diagnosis of symptomatic mothers"
```

```
## [1] "Scenario Notes"
```

```
## [1] "Almost all mothers become diagnosed from the symptomatic state according to an exponential rate."                  
## [2] " Substitude: 'HealthyMortalityMotherMultiplier = 1' with 'HealthyMortalityMotherMultiplier = 0'"                   
## [3] "Substitude: 'IncidenceMotherMultiplier = 1' with 'IncidenceMotherMultiplier = 3.5'"                                
## [4] "Substitude: 'InfectedMortalityMotherMultiplier = 1' with 'InfectedMortalityMotherMultiplier = 0'"                  
## [5] "Substitude: 'SymptomsMotherMultiplier = 1' with 'SymptomsMotherMultiplier = 5'"                                    
## [6] "Substitude: 'SymptomaticDiagnosisTransitionMotherSwitch = 1' with 'SymptomaticDiagnosisTransitionMotherSwitch = 0'"
```

## Mother Model

### Population Stats


There are 10000 Mothers in this scenario.

There are 28673 Children in this scenario.

### State Transitions

A table of the number of mothers who entered each of the different states.


|state                               | entrances| percentage|
|:-----------------------------------|---------:|----------:|
|Mother entrances in DIAGNOSED state |      3661|       36.6|
|Mother entrances in DIAGSYMP state  |      9066|       90.7|
|Mother entrances in HEALTHY state   |         0|        0.0|
|Mother entrances in INFECTED state  |      9066|       90.7|
|Mother entrances in STOPPED state   |      2276|       22.8|
|Mother entrances in SYMPTOMS state  |      5405|       54.0|
|Mother entrances in TREATED state   |      5408|       54.1|

### State Membership

The total time spent by mothers in the various states.


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DIAGNOSED state |         2848|        0.4|
|Mother years in DIAGSYMP state  |       271117|       40.2|
|Mother years in HEALTHY state   |       296732|       44.0|
|Mother years in INFECTED state  |        11077|        1.6|
|Mother years in STOPPED state   |         3727|        0.6|
|Mother years in SYMPTOMS state  |        16253|        2.4|
|Mother years in TREATED state   |        72586|       10.8|

Plot of the total time spent in the states involved in scheduling the death of a mother.

![plot of chunk unnamed-chunk-7](figure/AllSymptomsNoMortExpDiag/unnamed-chunk-7.png) 

Plot of the total time spent in the detailed states that track mothers disease course.

![plot of chunk unnamed-chunk-8](figure/AllSymptomsNoMortExpDiag/unnamed-chunk-8.png) 

### Mother Survival

#### General Notes

The mortality of the the treated mothers is unrealistic

If there is no mortality in the scenario for the population the plot is for then the plot cannot be produced.

#### Survival of all Mothers


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-9](figure/AllSymptomsNoMortExpDiag/unnamed-chunk-9.png) 

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

![plot of chunk unnamed-chunk-11](figure/AllSymptomsNoMortExpDiag/unnamed-chunk-11.png) 

#### Survival of Mother who became treated


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-12](figure/AllSymptomsNoMortExpDiag/unnamed-chunk-12.png) 

### Number of children per mother

![plot of chunk unnamed-chunk-13](figure/AllSymptomsNoMortExpDiag/unnamed-chunk-13.png) 

### Age of mothers at birth of children

![plot of chunk unnamed-chunk-14](figure/AllSymptomsNoMortExpDiag/unnamed-chunk-14.png) 

## Child Model

### Gender Ratio

![plot of chunk unnamed-chunk-15](figure/AllSymptomsNoMortExpDiag/unnamed-chunk-15.png) 

### State Membership


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DEAD state      |       732913|       35.7|
|Mother years in DIAGNOSED state |        61977|        3.0|
|Mother years in DIAGSYMP state  |       774859|       37.8|
|Mother years in HEALTHY state   |       261151|       12.7|
|Mother years in INFECTED state  |         8614|        0.4|
|Mother years in STOPPED state   |         9073|        0.4|
|Mother years in SYMPTOMS state  |        32083|        1.6|
|Mother years in TREATED state   |       171386|        8.4|

![plot of chunk unnamed-chunk-17](figure/AllSymptomsNoMortExpDiag/unnamed-chunk-17.png) 

![plot of chunk unnamed-chunk-18](figure/AllSymptomsNoMortExpDiag/unnamed-chunk-18.png) 

### Schooling Outcomes

The number of children in the IN SCHOOL category in the figure below are the number of children who died during school years. The number of children in the NOT IN SCHOOL category in the figure below are the number of children who died before starting school. 

![plot of chunk unnamed-chunk-19](figure/AllSymptomsNoMortExpDiag/unnamed-chunk-19.png) 


|school_status | Value|
|:-------------|-----:|
|NOT_IN_SCHOOL |     0|
|IN_SCHOOL     |     0|
|DROPOUT       | 15271|
|GRADUATED     | 13402|

shut down



