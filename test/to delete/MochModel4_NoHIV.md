# Scenario Report




## Model Version: 46
## Scenario: NoHIV

```
## [1] "Scenario Label"
```

```
## [1] "No HIV"
```

```
## [1] "Scenario Notes"
```

```
## [1] "A scenario with no HIV is useful for checking the the non-HIV mortality"          
## [2] " Substitude: 'IncidenceMotherMultiplier = 1' with 'IncidenceMotherMultiplier = 0'"
```

## Mother Model

### Population Stats


There are 10000 Mothers in this scenario.

There are 29747 Children in this scenario.

### State Transitions

A table of the number of mothers who entered each of the different states.


|state                               | entrances| percentage|
|:-----------------------------------|---------:|----------:|
|Mother entrances in DIAGNOSED state |         0|          0|
|Mother entrances in DIAGSYMP state  |         0|          0|
|Mother entrances in HEALTHY state   |         0|          0|
|Mother entrances in INFECTED state  |         0|          0|
|Mother entrances in STOPPED state   |         0|          0|
|Mother entrances in SYMPTOMS state  |         0|          0|
|Mother entrances in TREATED state   |         0|          0|

### State Membership

The total time spent by mothers in the various states.


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DIAGNOSED state |            0|          0|
|Mother years in DIAGSYMP state  |            0|          0|
|Mother years in HEALTHY state   |       660087|        100|
|Mother years in INFECTED state  |            0|          0|
|Mother years in STOPPED state   |            0|          0|
|Mother years in SYMPTOMS state  |            0|          0|
|Mother years in TREATED state   |            0|          0|

Plot of the total time spent in the states involved in scheduling the death of a mother.

![plot of chunk unnamed-chunk-7](figure/NoHIV/unnamed-chunk-7.png) 

Plot of the total time spent in the detailed states that track mothers disease course.

![plot of chunk unnamed-chunk-8](figure/NoHIV/unnamed-chunk-8.png) 

### Mother Survival

#### General Notes

The mortality of the the treated mothers is unrealistic

If there is no mortality in the scenario for the population the plot is for then the plot cannot be produced.

#### Survival of all Mothers


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-9](figure/NoHIV/unnamed-chunk-9.png) 

#### Survival of Mother who never became infected


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-10](figure/NoHIV/unnamed-chunk-10.png) 

#### Survival of Mother who became infected


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

![plot of chunk unnamed-chunk-13](figure/NoHIV/unnamed-chunk-13.png) 

### Age of mothers at birth of children

![plot of chunk unnamed-chunk-14](figure/NoHIV/unnamed-chunk-14.png) 

## Child Model

### Gender Ratio

![plot of chunk unnamed-chunk-15](figure/NoHIV/unnamed-chunk-15.png) 

### State Membership


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DEAD state      |       579421|       34.6|
|Mother years in DIAGNOSED state |            0|        0.0|
|Mother years in DIAGSYMP state  |            0|        0.0|
|Mother years in HEALTHY state   |      1097013|       65.4|
|Mother years in INFECTED state  |            0|        0.0|
|Mother years in STOPPED state   |            0|        0.0|
|Mother years in SYMPTOMS state  |            0|        0.0|
|Mother years in TREATED state   |            0|        0.0|

![plot of chunk unnamed-chunk-17](figure/NoHIV/unnamed-chunk-17.png) 

![plot of chunk unnamed-chunk-18](figure/NoHIV/unnamed-chunk-18.png) 



