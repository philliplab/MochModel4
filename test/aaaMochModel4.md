# Scenario Report




## Model Version: 49
## Scenario: ZeroGestation

```
## [1] "Scenario Label"
```

```
## [1] "No gestation period"
```

```
## [1] "Scenario Notes"
```

```
## [1] "No gestation period, useful for matching input and output fertility."                       
## [2] " Substitude: 'FertilityMotherGestationPeriod = 1' with 'FertilityMotherGestationPeriod = 0'"
```

## Mother Model

### Population Stats


There are 10000 Mothers in this scenario.

There are 29893 Children in this scenario.

### State Transitions

A table of the number of mothers who entered each of the different states.


|state                               | entrances| percentage|
|:-----------------------------------|---------:|----------:|
|Mother entrances in DIAGNOSED state |      1555|       15.6|
|Mother entrances in DIAGSYMP state  |      2433|       24.3|
|Mother entrances in HEALTHY state   |         0|        0.0|
|Mother entrances in INFECTED state  |      3927|       39.3|
|Mother entrances in STOPPED state   |       900|        9.0|
|Mother entrances in SYMPTOMS state  |      1679|       16.8|
|Mother entrances in TREATED state   |      2160|       21.6|

### State Membership

The total time spent by mothers in the various states.


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DIAGNOSED state |         5027|        1.0|
|Mother years in DIAGSYMP state  |         1512|        0.3|
|Mother years in HEALTHY state   |       454760|       87.6|
|Mother years in INFECTED state  |        20243|        3.9|
|Mother years in STOPPED state   |         1447|        0.3|
|Mother years in SYMPTOMS state  |         7468|        1.4|
|Mother years in TREATED state   |        28502|        5.5|

Plot of the total time spent in the states involved in scheduling the death of a mother.

![plot of chunk unnamed-chunk-7](figure/ZeroGestation/unnamed-chunk-7.png) 

Plot of the total time spent in the detailed states that track mothers disease course.

![plot of chunk unnamed-chunk-8](figure/ZeroGestation/unnamed-chunk-8.png) 

### Mother Survival

#### General Notes

The mortality of the the treated mothers is unrealistic

If there is no mortality in the scenario for the population the plot is for then the plot cannot be produced.

#### Survival of all Mothers


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-9](figure/ZeroGestation/unnamed-chunk-9.png) 

#### Survival of Mother who never became infected


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-10](figure/ZeroGestation/unnamed-chunk-10.png) 

#### Survival of Mother who became infected


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-11](figure/ZeroGestation/unnamed-chunk-11.png) 

#### Survival of Mother who became treated


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-12](figure/ZeroGestation/unnamed-chunk-12.png) 

### Number of children per mother

![plot of chunk unnamed-chunk-13](figure/ZeroGestation/unnamed-chunk-13.png) 

### Age of mothers at birth of children

![plot of chunk unnamed-chunk-14](figure/ZeroGestation/unnamed-chunk-14.png) 

## Child Model

### Gender Ratio

![plot of chunk unnamed-chunk-15](figure/ZeroGestation/unnamed-chunk-15.png) 

### State Membership


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DEAD state      |       862894|       51.4|
|Mother years in DIAGNOSED state |         7733|        0.5|
|Mother years in DIAGSYMP state  |         2438|        0.1|
|Mother years in HEALTHY state   |       678939|       40.5|
|Mother years in INFECTED state  |        22726|        1.4|
|Mother years in STOPPED state   |         4601|        0.3|
|Mother years in SYMPTOMS state  |        14183|        0.8|
|Mother years in TREATED state   |        83776|        5.0|

![plot of chunk unnamed-chunk-17](figure/ZeroGestation/unnamed-chunk-17.png) 

![plot of chunk unnamed-chunk-18](figure/ZeroGestation/unnamed-chunk-18.png) 

### Schooling Outcomes

The number of children in the IN SCHOOL category in the figure below are the number of children who died during school years. The number of children in the NOT IN SCHOOL category in the figure below are the number of children who died before starting school. 

![plot of chunk unnamed-chunk-19](figure/ZeroGestation/unnamed-chunk-19.png) 


|school_status | Value|
|:-------------|-----:|
|NOT_IN_SCHOOL |  2551|
|IN_SCHOOL     |   198|
|DROPOUT       | 16115|
|GRADUATED     | 11029|

### Abuse Outcomes


|metrics                 |  Value|
|:-----------------------|------:|
|Susceptible Children    |  27257|
|Abused Children         |  14882|
|Susceptible Child Years | 170534|
|Abused Child Years      |  19408|


| Number of abuse episodes| Value|
|------------------------:|-----:|
|                        0| 12375|
|                        1| 10567|
|                        2|  3664|
|                        3|   610|
|                        4|    40|
|                        5|     1|
|                        6|     0|
|                        7|     0|
|                        8|     0|
|                        9|     0|
|                       10|     0|

### Depression Outcomes


|metrics                 |  Value|
|:-----------------------|------:|
|Susceptible Children    |  27257|
|Depressed Children      |  17747|
|Susceptible Child Years | 164956|
|Depressed Child Years   |  24986|


| Number of depressive episodes| Value|
|-----------------------------:|-----:|
|                             0|  9510|
|                             1| 10619|
|                             2|  5429|
|                             3|  1491|
|                             4|   195|
|                             5|    13|
|                             6|     0|
|                             7|     0|
|                             8|     0|
|                             9|     0|
|                            10|     0|

### Condom Usage Outcomes


|metrics                               | Value|
|:-------------------------------------|-----:|
|Inconsistent Condom Usage Child Years | 89470|
|Consistent Condom Usage Child Years   | 73232|

### Debut Outcomes


|                                                       |        14|        15|        16|
|:------------------------------------------------------|---------:|---------:|---------:|
|Integer Age                                            |    13.000|    14.000|    15.000|
|Number of children who debuted                         |  1913.000|   545.000|   698.000|
|Number of Children who entered the state               | 27224.000| 27195.000| 27164.000|
|Number of sexually active Child years spent in state   |   962.209|  2181.509|  2792.678|
|Number of sexually inactive Child years spent in state | 26247.565| 24996.717| 24351.317|
|Sexually active state entrace rate                     |     0.073|     0.022|     0.029|
|Total number of Child years spent in state             | 27209.774| 27178.226| 27143.995|

shut down



