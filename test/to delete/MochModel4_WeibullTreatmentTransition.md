# Scenario Report




## Model Version: 49
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


There are 100000 Mothers in this scenario.

There are 347947 Children in this scenario.

### State Transitions

A table of the number of mothers who entered each of the different states.


|state                               | entrances| percentage|
|:-----------------------------------|---------:|----------:|
|Mother entrances in DIAGNOSED state |     34818|       34.8|
|Mother entrances in DIAGSYMP state  |     76272|       76.3|
|Mother entrances in HEALTHY state   |         0|        0.0|
|Mother entrances in INFECTED state  |     86821|       86.8|
|Mother entrances in STOPPED state   |      4525|        4.5|
|Mother entrances in SYMPTOMS state  |     51997|       52.0|
|Mother entrances in TREATED state   |     13963|       14.0|

### State Membership

The total time spent by mothers in the various states.


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DIAGNOSED state |       141147|        1.5|
|Mother years in DIAGSYMP state  |      3272254|       34.7|
|Mother years in HEALTHY state   |      3029205|       32.1|
|Mother years in INFECTED state  |       561565|        6.0|
|Mother years in STOPPED state   |         7573|        0.1|
|Mother years in SYMPTOMS state  |      2270971|       24.1|
|Mother years in TREATED state   |       145355|        1.5|

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

#### All Ages


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DEAD state      |      1660854|        6.8|
|Mother years in DIAGNOSED state |      2232418|        9.1|
|Mother years in DIAGSYMP state  |      7962823|       32.4|
|Mother years in HEALTHY state   |      3239241|       13.2|
|Mother years in INFECTED state  |       633275|        2.6|
|Mother years in STOPPED state   |        23769|        0.1|
|Mother years in SYMPTOMS state  |      8374979|       34.1|
|Mother years in TREATED state   |       440032|        1.8|


|state                          | mother_years| percentage|
|:------------------------------|------------:|----------:|
|Mother years in DEAD state     |      1660854|        6.8|
|Mother years in HEALTHY state  |      3239241|       13.2|
|Mother years in INFECTED state |       846515|        3.4|
|Mother years in STOPPED state  |        23769|        0.1|
|Mother years in SYMPTOMS state |     18356980|       74.7|
|Mother years in TREATED state  |       440032|        1.8|

#### Below 18 (inclusive)


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DEAD state      |       127021|        1.9|
|Mother years in DIAGNOSED state |       370323|        5.6|
|Mother years in DIAGSYMP state  |      1571300|       23.8|
|Mother years in HEALTHY state   |       988397|       15.0|
|Mother years in INFECTED state  |       614822|        9.3|
|Mother years in STOPPED state   |         9983|        0.2|
|Mother years in SYMPTOMS state  |      2736290|       41.4|
|Mother years in TREATED state   |       192856|        2.9|


|state                          | mother_years| percentage|
|:------------------------------|------------:|----------:|
|Mother years in DEAD state     |       127021|        1.9|
|Mother years in HEALTHY state  |       988397|       15.0|
|Mother years in INFECTED state |       819151|       12.4|
|Mother years in STOPPED state  |         9983|        0.2|
|Mother years in SYMPTOMS state |      4473584|       67.7|
|Mother years in TREATED state  |       192856|        2.9|

#### Between 12 and 18 (inclusive)


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DEAD state      |        78746|        3.2|
|Mother years in DIAGNOSED state |       128398|        5.3|
|Mother years in DIAGSYMP state  |       661025|       27.1|
|Mother years in HEALTHY state   |       316147|       13.0|
|Mother years in INFECTED state  |        65643|        2.7|
|Mother years in STOPPED state   |         3956|        0.2|
|Mother years in SYMPTOMS state  |      1109517|       45.6|
|Mother years in TREATED state   |        72198|        3.0|


|state                          | mother_years| percentage|
|:------------------------------|------------:|----------:|
|Mother years in DEAD state     |        78746|        3.2|
|Mother years in HEALTHY state  |       316147|       13.0|
|Mother years in INFECTED state |        94882|        3.9|
|Mother years in STOPPED state  |         3956|        0.2|
|Mother years in SYMPTOMS state |      1869700|       76.8|
|Mother years in TREATED state  |        72198|        3.0|

![plot of chunk unnamed-chunk-22](figure/WeibullTreatmentTransition/unnamed-chunk-22.png) 

![plot of chunk unnamed-chunk-23](figure/WeibullTreatmentTransition/unnamed-chunk-23.png) 

### Schooling Outcomes

The number of children in the IN SCHOOL category in the figure below are the number of children who died during school years. The number of children in the NOT IN SCHOOL category in the figure below are the number of children who died before starting school. 

![plot of chunk unnamed-chunk-24](figure/WeibullTreatmentTransition/unnamed-chunk-24.png) 


|school_status |  Value|
|:-------------|------:|
|NOT_IN_SCHOOL |      0|
|IN_SCHOOL     |      0|
|DROPOUT       | 176415|
|GRADUATED     | 171532|

### Abuse Outcomes


|metrics                 |   Value|
|:-----------------------|-------:|
|Susceptible Children    |  347947|
|Abused Children         |  207869|
|Susceptible Child Years | 2083837|
|Abused Child Years      |  351792|


| Number of abuse episodes|  Value|
|------------------------:|------:|
|                        0| 140078|
|                        1| 146621|
|                        2|  52794|
|                        3|   7970|
|                        4|    476|
|                        5|      8|
|                        6|      0|
|                        7|      0|
|                        8|      0|
|                        9|      0|
|                       10|      0|

### Depression Outcomes


|metrics                 |   Value|
|:-----------------------|-------:|
|Susceptible Children    |  347947|
|Depressed Children      |  231488|
|Susceptible Child Years | 2106725|
|Depressed Child Years   |  328904|


| Number of depressive episodes|  Value|
|-----------------------------:|------:|
|                             0| 116459|
|                             1| 136866|
|                             2|  71893|
|                             3|  19894|
|                             4|   2707|
|                             5|    127|
|                             6|      1|
|                             7|      0|
|                             8|      0|
|                             9|      0|
|                            10|      0|

### Condom Usage Outcomes


|metrics                               |   Value|
|:-------------------------------------|-------:|
|Inconsistent Condom Usage Child Years | 1167221|
|Consistent Condom Usage Child Years   |  920461|

### Debut Outcomes


|                                                       |         14|         15|         16|
|:------------------------------------------------------|----------:|----------:|----------:|
|Integer Age                                            |     13.000|     14.000|     15.000|
|Number of children who debuted                         |  26440.000|   7730.000|   9660.000|
|Number of Children who entered the state               | 347947.000| 347947.000| 347947.000|
|Number of sexually active Child years spent in state   |  13249.006|  30278.856|  38968.965|
|Number of sexually inactive Child years spent in state | 334697.995| 317668.144| 308978.035|
|Sexually active state entrace rate                     |      0.079|      0.024|      0.031|
|Total number of Child years spent in state             | 347947.000| 347947.000| 347947.000|

shut down


```
## 
## 
## |metrics                               |   Value|
## |:-------------------------------------|-------:|
## |Inconsistent Condom Usage Child Years | 1167221|
## |Consistent Condom Usage Child Years   |  920461|
```

```
## Using Value as value column: use value.var to override.
```



