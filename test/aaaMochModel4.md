# Scenario Report




## Model Version: 46
## Scenario: ZeroGestation

## Mother Model

### Population Stats


There are 10000 Mothers in this scenario.

There are 30794 Children in this scenario.

### State Transitions

A table of the number of mothers who entered each of the different states.


|state                               | entrances| percentage|
|:-----------------------------------|---------:|----------:|
|Mother entrances in DIAGNOSED state |      1774|       17.7|
|Mother entrances in DIAGSYMP state  |      2811|       28.1|
|Mother entrances in HEALTHY state   |         0|        0.0|
|Mother entrances in INFECTED state  |      4498|       45.0|
|Mother entrances in STOPPED state   |       771|        7.7|
|Mother entrances in SYMPTOMS state  |      1964|       19.6|
|Mother entrances in TREATED state   |      1659|       16.6|

### State Membership

The total time spent by mothers in the various states.


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DIAGNOSED state |         5267|        1.0|
|Mother years in DIAGSYMP state  |         5522|        1.1|
|Mother years in HEALTHY state   |       452228|       87.4|
|Mother years in INFECTED state  |        21169|        4.1|
|Mother years in STOPPED state   |         1164|        0.2|
|Mother years in SYMPTOMS state  |         7991|        1.5|
|Mother years in TREATED state   |        24280|        4.7|

Plot of the total time spent in the states involved in scheduling the death of a mother.

![plot of chunk unnamed-chunk-6](figure/ZeroGestation/unnamed-chunk-6.png) 

Plot of the total time spent in the detailed states that track mothers disease course.

![plot of chunk unnamed-chunk-7](figure/ZeroGestation/unnamed-chunk-7.png) 

### Mother Survival

Note: The unrealistic mortality is caused by the issues with the mortality of the treated mothers.

#### Survival of all Mothers


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-8](figure/ZeroGestation/unnamed-chunk-8.png) 

#### Survival of Mother who never became infected


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-9](figure/ZeroGestation/unnamed-chunk-9.png) 

#### Survival of Mother who became infected


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-10](figure/ZeroGestation/unnamed-chunk-10.png) 

#### Survival of Mother who became treated


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-11](figure/ZeroGestation/unnamed-chunk-11.png) 

### Number of children per mother

![plot of chunk unnamed-chunk-12](figure/ZeroGestation/unnamed-chunk-12.png) 

### Age of mothers at birth of children

![plot of chunk unnamed-chunk-13](figure/ZeroGestation/unnamed-chunk-13.png) 

## Child Model

### Gender Ratio

![plot of chunk unnamed-chunk-14](figure/ZeroGestation/unnamed-chunk-14.png) 


