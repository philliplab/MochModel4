# Scenario Report




## Model Version: 49
## Scenario: LowFertilityInHighSES

```
## [1] "Scenario Label"
```

```
## [1] "Decrease fertility of HIGH SES mothers"
```

```
## [1] "Scenario Notes"
```

```
## [1] "Decrease fertility of HIGH SES mothers"                                                                                                                           
## [2] " Substitude: 'FertilityMotherSESMultipliers\\[SOCIO_ECONOMIC_STATE\\] = \\{1, 1\\}' with 'FertilityMotherSESMultipliers\\[SOCIO_ECONOMIC_STATE\\] = \\{0.5, 1\\}'"
```

## Mother Model

### Population Stats


There are 10000 Mothers in this scenario.

There are 20604 Children in this scenario.

### State Transitions

A table of the number of mothers who entered each of the different states.


|state                               | entrances| percentage|
|:-----------------------------------|---------:|----------:|
|Mother entrances in DIAGNOSED state |      1774|       17.7|
|Mother entrances in DIAGSYMP state  |      2811|       28.1|
|Mother entrances in HEALTHY state   |         0|        0.0|
|Mother entrances in INFECTED state  |      4498|       45.0|
|Mother entrances in STOPPED state   |       677|        6.8|
|Mother entrances in SYMPTOMS state  |      1964|       19.6|
|Mother entrances in TREATED state   |      1659|       16.6|

### State Membership

The total time spent by mothers in the various states.


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DIAGNOSED state |         5267|        1.0|
|Mother years in DIAGSYMP state  |         5522|        1.1|
|Mother years in HEALTHY state   |       452228|       87.9|
|Mother years in INFECTED state  |        21169|        4.1|
|Mother years in STOPPED state   |         1031|        0.2|
|Mother years in SYMPTOMS state  |         7991|        1.6|
|Mother years in TREATED state   |        21541|        4.2|

Plot of the total time spent in the states involved in scheduling the death of a mother.

![plot of chunk unnamed-chunk-7](figure/LowFertilityInHighSES/unnamed-chunk-7.png) 

Plot of the total time spent in the detailed states that track mothers disease course.

![plot of chunk unnamed-chunk-8](figure/LowFertilityInHighSES/unnamed-chunk-8.png) 

### Mother Survival

#### General Notes

The mortality of the the treated mothers is unrealistic

If there is no mortality in the scenario for the population the plot is for then the plot cannot be produced.

#### Survival of all Mothers


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-9](figure/LowFertilityInHighSES/unnamed-chunk-9.png) 

#### Survival of Mother who never became infected


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-10](figure/LowFertilityInHighSES/unnamed-chunk-10.png) 

#### Survival of Mother who became infected


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-11](figure/LowFertilityInHighSES/unnamed-chunk-11.png) 

#### Survival of Mother who became treated


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-12](figure/LowFertilityInHighSES/unnamed-chunk-12.png) 

### Number of children per mother

![plot of chunk unnamed-chunk-13](figure/LowFertilityInHighSES/unnamed-chunk-13.png) 

### Age of mothers at birth of children

![plot of chunk unnamed-chunk-14](figure/LowFertilityInHighSES/unnamed-chunk-14.png) 

## Child Model

### Gender Ratio

![plot of chunk unnamed-chunk-15](figure/LowFertilityInHighSES/unnamed-chunk-15.png) 

### State Membership


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DEAD state      |       630696|       53.8|
|Mother years in DIAGNOSED state |         7428|        0.6|
|Mother years in DIAGSYMP state  |         8200|        0.7|
|Mother years in HEALTHY state   |       444845|       38.0|
|Mother years in INFECTED state  |        22489|        1.9|
|Mother years in STOPPED state   |         2124|        0.2|
|Mother years in SYMPTOMS state  |        13184|        1.1|
|Mother years in TREATED state   |        42882|        3.7|

![plot of chunk unnamed-chunk-17](figure/LowFertilityInHighSES/unnamed-chunk-17.png) 

![plot of chunk unnamed-chunk-18](figure/LowFertilityInHighSES/unnamed-chunk-18.png) 

### Schooling Outcomes

The number of children in the IN SCHOOL category in the figure below are the number of children who died during school years. The number of children in the NOT IN SCHOOL category in the figure below are the number of children who died before starting school. 

![plot of chunk unnamed-chunk-19](figure/LowFertilityInHighSES/unnamed-chunk-19.png) 


|school_status | Value|
|:-------------|-----:|
|NOT_IN_SCHOOL | 20604|
|IN_SCHOOL     |     0|
|DROPOUT       |     0|
|GRADUATED     |     0|

### Abuse Outcomes


|metrics                 |  Value|
|:-----------------------|------:|
|Susceptible Children    |  19163|
|Abused Children         |  10297|
|Susceptible Child Years | 133634|
|Abused Child Years      |  43697|

### Depression Outcomes


|metrics                 |  Value|
|:-----------------------|------:|
|Susceptible Children    |  19163|
|Depressed Children      |  13737|
|Susceptible Child Years | 133634|
|Depressed Child Years   |  50397|

shut down



