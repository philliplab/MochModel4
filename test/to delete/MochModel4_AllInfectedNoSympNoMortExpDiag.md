# Scenario Report




## Model Version: 49
## Scenario: AllInfectedNoSympNoMortExpDiag

```
## [1] "Scenario Label"
```

```
## [1] "Exponential diagnosis of asymptomatic mothers"
```

```
## [1] "Scenario Notes"
```

```
## [1] "Almost all mothers become diagnosed from the asymptomatic state according to an exponential rate"            
## [2] " Substitude: 'HealthyMortalityMotherMultiplier = 1' with 'HealthyMortalityMotherMultiplier = 0'"             
## [3] "Substitude: 'IncidenceMotherMultiplier = 1' with 'IncidenceMotherMultiplier = 3.5'"                          
## [4] "Substitude: 'InfectedMortalityMotherMultiplier = 1' with 'InfectedMortalityMotherMultiplier = 0'"            
## [5] "Substitude: 'SymptomsMotherMultiplier = 1' with 'SymptomsMotherMultiplier = 0'"                              
## [6] "Substitude: 'InfectedDiagnosisTransitionMotherSwitch = 1' with 'InfectedDiagnosisTransitionMotherSwitch = 0'"
```

## Mother Model

### Population Stats


There are 10000 Mothers in this scenario.

There are 36729 Children in this scenario.

### State Transitions

A table of the number of mothers who entered each of the different states.


|state                               | entrances| percentage|
|:-----------------------------------|---------:|----------:|
|Mother entrances in DIAGNOSED state |      9064|       90.6|
|Mother entrances in DIAGSYMP state  |         0|        0.0|
|Mother entrances in HEALTHY state   |         0|        0.0|
|Mother entrances in INFECTED state  |      9066|       90.7|
|Mother entrances in STOPPED state   |         0|        0.0|
|Mother entrances in SYMPTOMS state  |         0|        0.0|
|Mother entrances in TREATED state   |         0|        0.0|

### State Membership

The total time spent by mothers in the various states.


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DIAGNOSED state |       658115|       65.8|
|Mother years in DIAGSYMP state  |            0|        0.0|
|Mother years in HEALTHY state   |       296732|       29.7|
|Mother years in INFECTED state  |        45154|        4.5|
|Mother years in STOPPED state   |            0|        0.0|
|Mother years in SYMPTOMS state  |            0|        0.0|
|Mother years in TREATED state   |            0|        0.0|

Plot of the total time spent in the states involved in scheduling the death of a mother.

![plot of chunk unnamed-chunk-7](figure/AllInfectedNoSympNoMortExpDiag/unnamed-chunk-7.png) 

Plot of the total time spent in the detailed states that track mothers disease course.

![plot of chunk unnamed-chunk-8](figure/AllInfectedNoSympNoMortExpDiag/unnamed-chunk-8.png) 

### Mother Survival

#### General Notes

The mortality of the the treated mothers is unrealistic

If there is no mortality in the scenario for the population the plot is for then the plot cannot be produced.

#### Survival of all Mothers


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

#### Survival of Mother who became treated


```
## Using Value as value column: use value.var to override.
```

```
## Error: argument is of length zero
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

### Number of children per mother

![plot of chunk unnamed-chunk-13](figure/AllInfectedNoSympNoMortExpDiag/unnamed-chunk-13.png) 

### Age of mothers at birth of children

![plot of chunk unnamed-chunk-14](figure/AllInfectedNoSympNoMortExpDiag/unnamed-chunk-14.png) 

## Child Model

### Gender Ratio

![plot of chunk unnamed-chunk-15](figure/AllInfectedNoSympNoMortExpDiag/unnamed-chunk-15.png) 

### State Membership


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DEAD state      |            0|        0.0|
|Mother years in DIAGNOSED state |      2252796|       87.5|
|Mother years in DIAGSYMP state  |            0|        0.0|
|Mother years in HEALTHY state   |       257546|       10.0|
|Mother years in INFECTED state  |        63694|        2.5|
|Mother years in STOPPED state   |            0|        0.0|
|Mother years in SYMPTOMS state  |            0|        0.0|
|Mother years in TREATED state   |            0|        0.0|

![plot of chunk unnamed-chunk-17](figure/AllInfectedNoSympNoMortExpDiag/unnamed-chunk-17.png) 

![plot of chunk unnamed-chunk-18](figure/AllInfectedNoSympNoMortExpDiag/unnamed-chunk-18.png) 

### Schooling Outcomes

The number of children in the IN SCHOOL category in the figure below are the number of children who died during school years. The number of children in the NOT IN SCHOOL category in the figure below are the number of children who died before starting school. 

![plot of chunk unnamed-chunk-19](figure/AllInfectedNoSympNoMortExpDiag/unnamed-chunk-19.png) 


|school_status | Value|
|:-------------|-----:|
|NOT_IN_SCHOOL | 36729|
|IN_SCHOOL     |     0|
|DROPOUT       |     0|
|GRADUATED     |     0|

### Abuse Outcomes


|metrics                 |  Value|
|:-----------------------|------:|
|Susceptible Children    |  36729|
|Abused Children         |  19620|
|Susceptible Child Years | 257103|
|Abused Child Years      |  83068|

### Depression Outcomes


|metrics                 |  Value|
|:-----------------------|------:|
|Susceptible Children    |  36729|
|Depressed Children      |  24865|
|Susceptible Child Years | 257103|
|Depressed Child Years   |  87948|

shut down



