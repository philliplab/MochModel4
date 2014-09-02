# Scenario Report




## Model Version: 46
## Scenario: WeibullTreatmentTransition

```
## [1] "Scenario Label"
```

```
## [1] "Weibull based transition into treatment"
```

```
## [1] "Scenario Notes"
```

```
## [1] "Almost all mothers become infected and transition into treatment based on a weibull distribution"
## [2] " Substitude: 'HealthyMortalityMotherMultiplier = 1' with 'HealthyMortalityMotherMultiplier = 0'" 
## [3] "Substitude: 'IncidenceMotherMultiplier = 1' with 'IncidenceMotherMultiplier = 3.5'"              
## [4] "Substitude: 'InfectedMortalityMotherMultiplier = 1' with 'InfectedMortalityMotherMultiplier = 0'"
## [5] "Substitude: 'TreatmentTransitionMotherSwitch = 1' with 'TreatmentTransitionMotherSwitch = 2'"
```

## Mother Model

### Population Stats


There are 10000 Mothers in this scenario.

There are 33485 Children in this scenario.

### State Transitions

A table of the number of mothers who entered each of the different states.


|state                               | entrances| percentage|
|:-----------------------------------|---------:|----------:|
|Mother entrances in DIAGNOSED state |      3661|       36.6|
|Mother entrances in DIAGSYMP state  |      7982|       79.8|
|Mother entrances in HEALTHY state   |         0|        0.0|
|Mother entrances in INFECTED state  |      9066|       90.7|
|Mother entrances in STOPPED state   |      3076|       30.8|
|Mother entrances in SYMPTOMS state  |      5405|       54.0|
|Mother entrances in TREATED state   |      7650|       76.5|

### State Membership

The total time spent by mothers in the various states.


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DIAGNOSED state |        14238|        1.9|
|Mother years in DIAGSYMP state  |        38068|        5.2|
|Mother years in HEALTHY state   |       296732|       40.3|
|Mother years in INFECTED state  |        55385|        7.5|
|Mother years in STOPPED state   |         4854|        0.7|
|Mother years in SYMPTOMS state  |       228821|       31.1|
|Mother years in TREATED state   |        98386|       13.4|

Plot of the total time spent in the states involved in scheduling the death of a mother.

![plot of chunk unnamed-chunk-7](figure/WeibullTreatmentTransition/unnamed-chunk-7.png) 

Plot of the total time spent in the detailed states that track mothers disease course.

![plot of chunk unnamed-chunk-8](figure/WeibullTreatmentTransition/unnamed-chunk-8.png) 

### Mother Survival

#### General Notes

The mortality of the the treated mothers is unrealistic

If there is no mortality in the scenario for the population the plot is for then the plot cannot be produced.

#### Survival of all Mothers


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-9](figure/WeibullTreatmentTransition/unnamed-chunk-9.png) 

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

![plot of chunk unnamed-chunk-11](figure/WeibullTreatmentTransition/unnamed-chunk-11.png) 

#### Survival of Mother who became treated


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-12](figure/WeibullTreatmentTransition/unnamed-chunk-12.png) 

### Number of children per mother

![plot of chunk unnamed-chunk-13](figure/WeibullTreatmentTransition/unnamed-chunk-13.png) 

### Age of mothers at birth of children

![plot of chunk unnamed-chunk-14](figure/WeibullTreatmentTransition/unnamed-chunk-14.png) 

## Child Model

### Gender Ratio

![plot of chunk unnamed-chunk-15](figure/WeibullTreatmentTransition/unnamed-chunk-15.png) 

### State Membership


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DEAD state      |       823514|       34.7|
|Mother years in DIAGNOSED state |        48117|        2.0|
|Mother years in DIAGSYMP state  |        58740|        2.5|
|Mother years in HEALTHY state   |       705279|       29.8|
|Mother years in INFECTED state  |        35926|        1.5|
|Mother years in STOPPED state   |        15754|        0.7|
|Mother years in SYMPTOMS state  |       402187|       17.0|
|Mother years in TREATED state   |       280846|       11.8|

![plot of chunk unnamed-chunk-17](figure/WeibullTreatmentTransition/unnamed-chunk-17.png) 

![plot of chunk unnamed-chunk-18](figure/WeibullTreatmentTransition/unnamed-chunk-18.png) 


