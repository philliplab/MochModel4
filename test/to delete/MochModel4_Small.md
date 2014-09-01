# Scenario Report




## Model Version: 46
## Scenario: Small

```
## [1] "Scenario Label"
```

```
## [1] "Small - 1000 Mothers"
```

```
## [1] "Scenario Notes"
```

```
## [1] "A scenario with only 1000 mothers to see if anything breaks when the numbers are smaller." 
## [2] " Substitude: 'int\tStartingPopulationSize = 10000' with 'int\tStartingPopulationSize = 1000'"
```

## Mother Model

### Population Stats


There are 1000 Mothers in this scenario.

There are 2724 Children in this scenario.

### State Transitions

A table of the number of mothers who entered each of the different states.


|state                               | entrances| percentage|
|:-----------------------------------|---------:|----------:|
|Mother entrances in DIAGNOSED state |       169|       16.9|
|Mother entrances in DIAGSYMP state  |       259|       25.9|
|Mother entrances in HEALTHY state   |         0|        0.0|
|Mother entrances in INFECTED state  |       448|       44.8|
|Mother entrances in STOPPED state   |        63|        6.3|
|Mother entrances in SYMPTOMS state  |       200|       20.0|
|Mother entrances in TREATED state   |       151|       15.1|

### State Membership

The total time spent by mothers in the various states.


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DIAGNOSED state |        512.4|        1.0|
|Mother years in DIAGSYMP state  |        486.8|        0.9|
|Mother years in HEALTHY state   |      45702.9|       87.5|
|Mother years in INFECTED state  |       2316.0|        4.4|
|Mother years in STOPPED state   |        109.6|        0.2|
|Mother years in SYMPTOMS state  |        898.7|        1.7|
|Mother years in TREATED state   |       2217.4|        4.2|

Plot of the total time spent in the states involved in scheduling the death of a mother.

![plot of chunk unnamed-chunk-7](figure/Small/unnamed-chunk-7.png) 

Plot of the total time spent in the detailed states that track mothers disease course.

![plot of chunk unnamed-chunk-8](figure/Small/unnamed-chunk-8.png) 

### Mother Survival

#### General Notes

The mortality of the the treated mothers is unrealistic

If there is no mortality in the scenario for the population the plot is for then the plot cannot be produced.

#### Survival of all Mothers


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-9](figure/Small/unnamed-chunk-9.png) 

#### Survival of Mother who never became infected


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-10](figure/Small/unnamed-chunk-10.png) 

#### Survival of Mother who became infected


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-11](figure/Small/unnamed-chunk-11.png) 

#### Survival of Mother who became treated


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-12](figure/Small/unnamed-chunk-12.png) 

### Number of children per mother

![plot of chunk unnamed-chunk-13](figure/Small/unnamed-chunk-13.png) 

### Age of mothers at birth of children

![plot of chunk unnamed-chunk-14](figure/Small/unnamed-chunk-14.png) 

## Child Model

### Gender Ratio

![plot of chunk unnamed-chunk-15](figure/Small/unnamed-chunk-15.png) 

### State Membership


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DEAD state      |      81811.3|       52.9|
|Mother years in DIAGNOSED state |        713.3|        0.5|
|Mother years in DIAGSYMP state  |        642.3|        0.4|
|Mother years in HEALTHY state   |      63551.0|       41.1|
|Mother years in INFECTED state  |       2087.6|        1.4|
|Mother years in STOPPED state   |        319.1|        0.2|
|Mother years in SYMPTOMS state  |       1338.2|        0.9|
|Mother years in TREATED state   |       4086.0|        2.6|

![plot of chunk unnamed-chunk-17](figure/Small/unnamed-chunk-17.png) 

![plot of chunk unnamed-chunk-18](figure/Small/unnamed-chunk-18.png) 



