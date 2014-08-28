# Scenario Report




## Model Version: 46
## Scenario: ZeroGestation

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

### Mother Survival

Note: The unrealistic mortality is caused by the issues with the mortality of the treated mothers.

#### Survival of all Mothers


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-6](figure/unnamed-chunk-6.png) 

#### Survival of Mother who never became infected


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-7](figure/unnamed-chunk-7.png) 

#### Survival of Mother who became infected


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-8](figure/unnamed-chunk-8.png) 

#### Survival of Mother who became treated


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-9](figure/unnamed-chunk-9.png) 


