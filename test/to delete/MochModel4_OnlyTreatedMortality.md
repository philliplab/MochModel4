# Scenario Report




## Model Version: 49
## Scenario: OnlyTreatedMortality

```
## [1] "Scenario Label"
```

```
## [1] "Mortality only in the treated state"
```

```
## [1] "Scenario Notes"
```

```
## [1] "Almost all mothers become treated and are immortal in all states before treatment"                 
## [2] " Substitude: 'HealthyMortalityMotherMultiplier = 1' with 'HealthyMortalityMotherMultiplier = 0'"   
## [3] "Substitude: 'IncidenceMotherMultiplier = 1' with 'IncidenceMotherMultiplier = 5'"                  
## [4] "Substitude: 'SymptomsMotherMultiplier = 1' with 'SymptomsMotherMultiplier = 10'"                   
## [5] "Substitude: 'InfectedDiagnosisMotherMultiplier = 1' with 'InfectedDiagnosisMotherMultiplier = 10'" 
## [6] "Substitude: 'SymptomsDiagnosisMotherMultiplier = 1' with 'SymptomsDiagnosisMotherMultiplier = 10'" 
## [7] "Substitude: 'TreatmentMotherMultiplier = 1' with 'TreatmentMotherMultiplier = 1000'"               
## [8] "Substitude: 'TreatmentCessationMotherMultiplier = 1' with 'TreatmentCessationMotherMultiplier = 0'"
## [9] "Substitude: 'InfectedMortalityMotherMultiplier = 1' with 'InfectedMortalityMotherMultiplier = 0'"
```

## Mother Model

### Population Stats


There are 10000 Mothers in this scenario.

There are 29847 Children in this scenario.

### State Transitions

A table of the number of mothers who entered each of the different states.


|state                               | entrances| percentage|
|:-----------------------------------|---------:|----------:|
|Mother entrances in DIAGNOSED state |      3922|       39.2|
|Mother entrances in DIAGSYMP state  |      8521|       85.2|
|Mother entrances in HEALTHY state   |         0|        0.0|
|Mother entrances in INFECTED state  |      9681|       96.8|
|Mother entrances in STOPPED state   |         0|        0.0|
|Mother entrances in SYMPTOMS state  |      5759|       57.6|
|Mother entrances in TREATED state   |      8520|       85.2|

### State Membership

The total time spent by mothers in the various states.


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DIAGNOSED state |      1575.92|        0.2|
|Mother years in DIAGSYMP state  |        85.21|        0.0|
|Mother years in HEALTHY state   |    236725.00|       36.0|
|Mother years in INFECTED state  |      6077.40|        0.9|
|Mother years in STOPPED state   |         0.00|        0.0|
|Mother years in SYMPTOMS state  |    272130.01|       41.4|
|Mother years in TREATED state   |    140093.29|       21.3|

Plot of the total time spent in the states involved in scheduling the death of a mother.

![plot of chunk unnamed-chunk-7](figure/OnlyTreatedMortality/unnamed-chunk-7.png) 

Plot of the total time spent in the detailed states that track mothers disease course.

![plot of chunk unnamed-chunk-8](figure/OnlyTreatedMortality/unnamed-chunk-8.png) 

### Mother Survival

#### General Notes

The mortality of the the treated mothers is unrealistic

If there is no mortality in the scenario for the population the plot is for then the plot cannot be produced.

#### Survival of all Mothers


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-9](figure/OnlyTreatedMortality/unnamed-chunk-9.png) 

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

![plot of chunk unnamed-chunk-11](figure/OnlyTreatedMortality/unnamed-chunk-11.png) 

#### Survival of Mother who became treated


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-12](figure/OnlyTreatedMortality/unnamed-chunk-12.png) 

### Number of children per mother

![plot of chunk unnamed-chunk-13](figure/OnlyTreatedMortality/unnamed-chunk-13.png) 

### Age of mothers at birth of children

![plot of chunk unnamed-chunk-14](figure/OnlyTreatedMortality/unnamed-chunk-14.png) 

## Child Model

### Gender Ratio

![plot of chunk unnamed-chunk-15](figure/OnlyTreatedMortality/unnamed-chunk-15.png) 

### State Membership


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DEAD state      |    872469.31|       41.1|
|Mother years in DIAGNOSED state |      1144.65|        0.1|
|Mother years in DIAGSYMP state  |        56.86|        0.0|
|Mother years in HEALTHY state   |    100511.16|        4.7|
|Mother years in INFECTED state  |      3632.14|        0.2|
|Mother years in STOPPED state   |         0.00|        0.0|
|Mother years in SYMPTOMS state  |    773084.41|       36.4|
|Mother years in TREATED state   |    374322.59|       17.6|

![plot of chunk unnamed-chunk-17](figure/OnlyTreatedMortality/unnamed-chunk-17.png) 

![plot of chunk unnamed-chunk-18](figure/OnlyTreatedMortality/unnamed-chunk-18.png) 

### Schooling Outcomes

The number of children in the IN SCHOOL category in the figure below are the number of children who died during school years. The number of children in the NOT IN SCHOOL category in the figure below are the number of children who died before starting school. 

![plot of chunk unnamed-chunk-19](figure/OnlyTreatedMortality/unnamed-chunk-19.png) 


|school_status | Value|
|:-------------|-----:|
|NOT_IN_SCHOOL |     0|
|IN_SCHOOL     |     0|
|DROPOUT       | 15647|
|GRADUATED     | 14200|

shut down



