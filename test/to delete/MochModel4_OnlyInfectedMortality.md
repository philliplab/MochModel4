# Scenario Report




## Model Version: 51
## Scenario: OnlyInfectedMortality

```
## [1] "Scenario Label"
```

```
## [1] "Mothers can only die in the infected State"
```

```
## [1] "Scenario Notes"
```

```
## [1] "A scenario in which all mothers die from the infected and undiagnosed asymptomatic stage"        
## [2] " Substitude: 'HealthyMortalityMotherMultiplier = 1' with 'HealthyMortalityMotherMultiplier = 0'" 
## [3] "Substitude: 'IncidenceMotherMultiplier = 1' with 'IncidenceMotherMultiplier = 3.5'"              
## [4] "Substitude: 'SymptomsMotherMultiplier = 1' with 'SymptomsMotherMultiplier = 0'"                  
## [5] "Substitude: 'InfectedDiagnosisMotherMultiplier = 1' with 'InfectedDiagnosisMotherMultiplier = 0'"
## [6] "Substitude: 'SymptomsDiagnosisMotherMultiplier = 1' with 'SymptomsDiagnosisMotherMultiplier = 0'"
```

## Mother Model

### Population Stats


There are 10000 Mothers in this scenario.

There are 24355 Children in this scenario.

### State Transitions

A table of the number of mothers who entered each of the different states.


|state                               | entrances| percentage|
|:-----------------------------------|---------:|----------:|
|Mother entrances in DIAGNOSED state |      3661|       36.6|
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
|Mother years in DIAGNOSED state |        20805|        5.2|
|Mother years in DIAGSYMP state  |            0|        0.0|
|Mother years in HEALTHY state   |       296732|       74.3|
|Mother years in INFECTED state  |        81899|       20.5|
|Mother years in STOPPED state   |            0|        0.0|
|Mother years in SYMPTOMS state  |            0|        0.0|
|Mother years in TREATED state   |            0|        0.0|

Plot of the total time spent in the states involved in scheduling the death of a mother.

![plot of chunk unnamed-chunk-7](figure/OnlyInfectedMortality/unnamed-chunk-7.png) 

Plot of the total time spent in the detailed states that track mothers disease course.

![plot of chunk unnamed-chunk-8](figure/OnlyInfectedMortality/unnamed-chunk-8.png) 

### Mother Survival

#### General Notes

The mortality of the the treated mothers is unrealistic

If there is no mortality in the scenario for the population the plot is for then the plot cannot be produced.

#### Survival of all Mothers


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-9](figure/OnlyInfectedMortality/unnamed-chunk-9.png) 

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

![plot of chunk unnamed-chunk-11](figure/OnlyInfectedMortality/unnamed-chunk-11.png) 

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

![plot of chunk unnamed-chunk-13](figure/OnlyInfectedMortality/unnamed-chunk-13.png) 

### Age of mothers at birth of children

![plot of chunk unnamed-chunk-14](figure/OnlyInfectedMortality/unnamed-chunk-14.png) 

## Child Model

### Gender Ratio

![plot of chunk unnamed-chunk-15](figure/OnlyInfectedMortality/unnamed-chunk-15.png) 

### State Membership


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DEAD state      |      1363147|       76.2|
|Mother years in DIAGNOSED state |        40798|        2.3|
|Mother years in DIAGSYMP state  |            0|        0.0|
|Mother years in HEALTHY state   |       257269|       14.4|
|Mother years in INFECTED state  |       127106|        7.1|
|Mother years in STOPPED state   |            0|        0.0|
|Mother years in SYMPTOMS state  |            0|        0.0|
|Mother years in TREATED state   |            0|        0.0|

![plot of chunk unnamed-chunk-17](figure/OnlyInfectedMortality/unnamed-chunk-17.png) 

![plot of chunk unnamed-chunk-18](figure/OnlyInfectedMortality/unnamed-chunk-18.png) 



