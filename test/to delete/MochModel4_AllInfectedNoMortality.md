# Scenario Report




## Model Version: 46
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

There are 33521 Children in this scenario.

### State Transitions

A table of the number of mothers who entered each of the different states.


|state                               | entrances| percentage|
|:-----------------------------------|---------:|----------:|
|Mother entrances in DIAGNOSED state |      3661|       36.6|
|Mother entrances in DIAGSYMP state  |      7982|       79.8|
|Mother entrances in HEALTHY state   |         0|        0.0|
|Mother entrances in INFECTED state  |      9066|       90.7|
|Mother entrances in STOPPED state   |      1937|       19.4|
|Mother entrances in SYMPTOMS state  |      5405|       54.0|
|Mother entrances in TREATED state   |      4755|       47.5|

### State Membership

The total time spent by mothers in the various states.


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DIAGNOSED state |        14238|        1.7|
|Mother years in DIAGSYMP state  |       163342|       19.8|
|Mother years in HEALTHY state   |       296732|       36.0|
|Mother years in INFECTED state  |        55385|        6.7|
|Mother years in STOPPED state   |         3109|        0.4|
|Mother years in SYMPTOMS state  |       228821|       27.8|
|Mother years in TREATED state   |        61613|        7.5|

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
|Mother years in DEAD state      |       516758|       21.8|
|Mother years in DIAGNOSED state |       103100|        4.3|
|Mother years in DIAGSYMP state  |       231022|        9.7|
|Mother years in HEALTHY state   |       868685|       36.6|
|Mother years in INFECTED state  |        36302|        1.5|
|Mother years in STOPPED state   |         9877|        0.4|
|Mother years in SYMPTOMS state  |       448524|       18.9|
|Mother years in TREATED state   |       156075|        6.6|

![plot of chunk unnamed-chunk-17](figure/AllInfectedNoMortality/unnamed-chunk-17.png) 

![plot of chunk unnamed-chunk-18](figure/AllInfectedNoMortality/unnamed-chunk-18.png) 



