# Scenario Report




## Model Version: 51
## Scenario: SchoolStartStretch

```
## [1] "Scenario Label"
```

```
## [1] "More diverse school start ages"
```

```
## [1] "Scenario Notes"
```

```
## [1] "Children can start school between 5 and 8 as opposed to 6 and 7 in the base case"
## [2] " Substitude: 'SchoolStartChildMin = 6' with 'SchoolStartChildMin = 5'"           
## [3] "Substitude: 'SchoolStartChildMax = 7' with 'SchoolStartChildMax = 8'"
```

## Mother Model

### Population Stats


There are 10000 Mothers in this scenario.

There are 27008 Children in this scenario.

### State Transitions

A table of the number of mothers who entered each of the different states.


|state                               | entrances| percentage|
|:-----------------------------------|---------:|----------:|
|Mother entrances in DIAGNOSED state |      1774|       17.7|
|Mother entrances in DIAGSYMP state  |      2811|       28.1|
|Mother entrances in HEALTHY state   |         0|        0.0|
|Mother entrances in INFECTED state  |      4498|       45.0|
|Mother entrances in STOPPED state   |       715|        7.1|
|Mother entrances in SYMPTOMS state  |      1964|       19.6|
|Mother entrances in TREATED state   |      1659|       16.6|

### State Membership

The total time spent by mothers in the various states.


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DIAGNOSED state |         5267|        1.0|
|Mother years in DIAGSYMP state  |         5522|        1.1|
|Mother years in HEALTHY state   |       452228|       87.7|
|Mother years in INFECTED state  |        21169|        4.1|
|Mother years in STOPPED state   |         1084|        0.2|
|Mother years in SYMPTOMS state  |         7991|        1.5|
|Mother years in TREATED state   |        22523|        4.4|

Plot of the total time spent in the states involved in scheduling the death of a mother.

![plot of chunk unnamed-chunk-7](figure/SchoolStartStretch/unnamed-chunk-7.png) 

Plot of the total time spent in the detailed states that track mothers disease course.

![plot of chunk unnamed-chunk-8](figure/SchoolStartStretch/unnamed-chunk-8.png) 

### Mother Survival

#### General Notes

The mortality of the the treated mothers is unrealistic

If there is no mortality in the scenario for the population the plot is for then the plot cannot be produced.

#### Survival of all Mothers


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-9](figure/SchoolStartStretch/unnamed-chunk-9.png) 

#### Survival of Mother who never became infected


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-10](figure/SchoolStartStretch/unnamed-chunk-10.png) 

#### Survival of Mother who became infected


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-11](figure/SchoolStartStretch/unnamed-chunk-11.png) 

#### Survival of Mother who became treated


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-12](figure/SchoolStartStretch/unnamed-chunk-12.png) 

### Number of children per mother

![plot of chunk unnamed-chunk-13](figure/SchoolStartStretch/unnamed-chunk-13.png) 

### Age of mothers at birth of children

![plot of chunk unnamed-chunk-14](figure/SchoolStartStretch/unnamed-chunk-14.png) 

## Child Model

### Gender Ratio

![plot of chunk unnamed-chunk-15](figure/SchoolStartStretch/unnamed-chunk-15.png) 

### State Membership


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DEAD state      |       824311|       53.7|
|Mother years in DIAGNOSED state |        10097|        0.7|
|Mother years in DIAGSYMP state  |        10975|        0.7|
|Mother years in HEALTHY state   |       578367|       37.7|
|Mother years in INFECTED state  |        29272|        1.9|
|Mother years in STOPPED state   |         3072|        0.2|
|Mother years in SYMPTOMS state  |        17256|        1.1|
|Mother years in TREATED state   |        60822|        4.0|

![plot of chunk unnamed-chunk-17](figure/SchoolStartStretch/unnamed-chunk-17.png) 

![plot of chunk unnamed-chunk-18](figure/SchoolStartStretch/unnamed-chunk-18.png) 



