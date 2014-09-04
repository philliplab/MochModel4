# Scenario Report




## Model Version: 49
## Scenario: AllInfectedNoMortality

```
## [1] "Scenario Label"
```

```
## [1] "All infected and immortal"
```

```
## [1] "Scenario Notes"
```

```
## [1] "Almost all mothers become infected and they cannot die in the asymptomatic undiagnosed infected state."
## [2] " Substitude: 'HealthyMortalityMotherMultiplier = 1' with 'HealthyMortalityMotherMultiplier = 0'"       
## [3] "Substitude: 'IncidenceMotherMultiplier = 1' with 'IncidenceMotherMultiplier = 3.5'"                    
## [4] "Substitude: 'InfectedMortalityMotherMultiplier = 1' with 'InfectedMortalityMotherMultiplier = 0'"
```

## Mother Model

### Population Stats


There are 10000 Mothers in this scenario.

There are 33447 Children in this scenario.

### State Transitions

A table of the number of mothers who entered each of the different states.


|state                               | entrances| percentage|
|:-----------------------------------|---------:|----------:|
|Mother entrances in DIAGNOSED state |      3661|       36.6|
|Mother entrances in DIAGSYMP state  |      7982|       79.8|
|Mother entrances in HEALTHY state   |         0|        0.0|
|Mother entrances in INFECTED state  |      9066|       90.7|
|Mother entrances in STOPPED state   |      1555|       15.6|
|Mother entrances in SYMPTOMS state  |      5405|       54.0|
|Mother entrances in TREATED state   |      4755|       47.5|

### State Membership

The total time spent by mothers in the various states.


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DIAGNOSED state |        14238|        1.8|
|Mother years in DIAGSYMP state  |       163342|       20.2|
|Mother years in HEALTHY state   |       296732|       36.6|
|Mother years in INFECTED state  |        55385|        6.8|
|Mother years in STOPPED state   |         2532|        0.3|
|Mother years in SYMPTOMS state  |       228821|       28.2|
|Mother years in TREATED state   |        49042|        6.1|

Plot of the total time spent in the states involved in scheduling the death of a mother.

![plot of chunk unnamed-chunk-7](figure/AllInfectedNoMortality/unnamed-chunk-7.png) 

Plot of the total time spent in the detailed states that track mothers disease course.

![plot of chunk unnamed-chunk-8](figure/AllInfectedNoMortality/unnamed-chunk-8.png) 

### Mother Survival

#### General Notes

The mortality of the the treated mothers is unrealistic

If there is no mortality in the scenario for the population the plot is for then the plot cannot be produced.

#### Survival of all Mothers


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-9](figure/AllInfectedNoMortality/unnamed-chunk-9.png) 

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

![plot of chunk unnamed-chunk-11](figure/AllInfectedNoMortality/unnamed-chunk-11.png) 

#### Survival of Mother who became treated


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-12](figure/AllInfectedNoMortality/unnamed-chunk-12.png) 

### Number of children per mother

![plot of chunk unnamed-chunk-13](figure/AllInfectedNoMortality/unnamed-chunk-13.png) 

### Age of mothers at birth of children

![plot of chunk unnamed-chunk-14](figure/AllInfectedNoMortality/unnamed-chunk-14.png) 

## Child Model

### Gender Ratio

![plot of chunk unnamed-chunk-15](figure/AllInfectedNoMortality/unnamed-chunk-15.png) 

### State Membership


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DEAD state      |       556901|       23.5|
|Mother years in DIAGNOSED state |       114241|        4.8|
|Mother years in DIAGSYMP state  |       417712|       17.7|
|Mother years in HEALTHY state   |       259215|       11.0|
|Mother years in INFECTED state  |        76856|        3.2|
|Mother years in STOPPED state   |         7874|        0.3|
|Mother years in SYMPTOMS state  |       783795|       33.1|
|Mother years in TREATED state   |       149514|        6.3|

![plot of chunk unnamed-chunk-17](figure/AllInfectedNoMortality/unnamed-chunk-17.png) 

![plot of chunk unnamed-chunk-18](figure/AllInfectedNoMortality/unnamed-chunk-18.png) 

### Schooling Outcomes

The number of children in the IN SCHOOL category in the figure below are the number of children who died during school years. The number of children in the NOT IN SCHOOL category in the figure below are the number of children who died before starting school. 

![plot of chunk unnamed-chunk-19](figure/AllInfectedNoMortality/unnamed-chunk-19.png) 


|school_status | Value|
|:-------------|-----:|
|NOT_IN_SCHOOL | 33447|
|IN_SCHOOL     |     0|
|DROPOUT       |     0|
|GRADUATED     |     0|

### Abuse Outcomes


|metrics                 |  Value|
|:-----------------------|------:|
|Susceptible Children    |  33447|
|Abused Children         |  14580|
|Susceptible Child Years | 234129|
|Abused Child Years      |  60332|

### Depression Outcomes


|metrics                 |  Value|
|:-----------------------|------:|
|Susceptible Children    |  33447|
|Depressed Children      |  17955|
|Susceptible Child Years | 234129|
|Depressed Child Years   |  61978|

shut down



