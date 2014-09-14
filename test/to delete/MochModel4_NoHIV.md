# Scenario Report




## Model Version: 49
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


There are 100000 Mothers in this scenario.

There are 293052 Children in this scenario.

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
|Mother years in HEALTHY state   |      6476105|        100|
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

#### All Ages


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DEAD state      |      5738274|       35.1|
|Mother years in DIAGNOSED state |            0|        0.0|
|Mother years in DIAGSYMP state  |            0|        0.0|
|Mother years in HEALTHY state   |     10588731|       64.9|
|Mother years in INFECTED state  |            0|        0.0|
|Mother years in STOPPED state   |            0|        0.0|
|Mother years in SYMPTOMS state  |            0|        0.0|
|Mother years in TREATED state   |            0|        0.0|


|state                          | mother_years| percentage|
|:------------------------------|------------:|----------:|
|Mother years in DEAD state     |      5738274|       35.1|
|Mother years in HEALTHY state  |     10588731|       64.9|
|Mother years in INFECTED state |            0|        0.0|
|Mother years in STOPPED state  |            0|        0.0|
|Mother years in SYMPTOMS state |            0|        0.0|
|Mother years in TREATED state  |            0|        0.0|

#### Below 18 (inclusive)


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DEAD state      |       226885|        4.4|
|Mother years in DIAGNOSED state |            0|        0.0|
|Mother years in DIAGSYMP state  |            0|        0.0|
|Mother years in HEALTHY state   |      4879041|       95.6|
|Mother years in INFECTED state  |            0|        0.0|
|Mother years in STOPPED state   |            0|        0.0|
|Mother years in SYMPTOMS state  |            0|        0.0|
|Mother years in TREATED state   |            0|        0.0|


|state                          | mother_years| percentage|
|:------------------------------|------------:|----------:|
|Mother years in DEAD state     |       226885|        4.4|
|Mother years in HEALTHY state  |      4879041|       95.6|
|Mother years in INFECTED state |            0|        0.0|
|Mother years in STOPPED state  |            0|        0.0|
|Mother years in SYMPTOMS state |            0|        0.0|
|Mother years in TREATED state  |            0|        0.0|

#### Between 12 and 18 (inclusive)


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DEAD state      |       148052|        7.9|
|Mother years in DIAGNOSED state |            0|        0.0|
|Mother years in DIAGSYMP state  |            0|        0.0|
|Mother years in HEALTHY state   |      1716596|       92.1|
|Mother years in INFECTED state  |            0|        0.0|
|Mother years in STOPPED state   |            0|        0.0|
|Mother years in SYMPTOMS state  |            0|        0.0|
|Mother years in TREATED state   |            0|        0.0|


|state                          | mother_years| percentage|
|:------------------------------|------------:|----------:|
|Mother years in DEAD state     |       148052|        7.9|
|Mother years in HEALTHY state  |      1716596|       92.1|
|Mother years in INFECTED state |            0|        0.0|
|Mother years in STOPPED state  |            0|        0.0|
|Mother years in SYMPTOMS state |            0|        0.0|
|Mother years in TREATED state  |            0|        0.0|

![plot of chunk unnamed-chunk-22](figure/NoHIV/unnamed-chunk-22.png) 

![plot of chunk unnamed-chunk-23](figure/NoHIV/unnamed-chunk-23.png) 

### Schooling Outcomes

The number of children in the IN SCHOOL category in the figure below are the number of children who died during school years. The number of children in the NOT IN SCHOOL category in the figure below are the number of children who died before starting school. 

![plot of chunk unnamed-chunk-24](figure/NoHIV/unnamed-chunk-24.png) 


|school_status |  Value|
|:-------------|------:|
|NOT_IN_SCHOOL |  24659|
|IN_SCHOOL     |   1972|
|DROPOUT       | 125984|
|GRADUATED     | 140437|

### Abuse Outcomes


|metrics                 |   Value|
|:-----------------------|-------:|
|Susceptible Children    |  267329|
|Abused Children         |  143160|
|Susceptible Child Years | 1632496|
|Abused Child Years      |  232151|


| Number of abuse episodes|  Value|
|------------------------:|------:|
|                        0| 124169|
|                        1| 106833|
|                        2|  32220|
|                        3|   3914|
|                        4|    191|
|                        5|      2|
|                        6|      0|
|                        7|      0|
|                        8|      0|
|                        9|      0|
|                       10|      0|

### Depression Outcomes


|metrics                 |   Value|
|:-----------------------|-------:|
|Susceptible Children    |  267329|
|Depressed Children      |  166820|
|Susceptible Child Years | 1636649|
|Depressed Child Years   |  227999|


| Number of depressive episodes|  Value|
|-----------------------------:|------:|
|                             0| 100509|
|                             1| 104258|
|                             2|  48838|
|                             3|  12223|
|                             4|   1434|
|                             5|     67|
|                             6|      0|
|                             7|      0|
|                             8|      0|
|                             9|      0|
|                            10|      0|

### Condom Usage Outcomes


|metrics                               |  Value|
|:-------------------------------------|------:|
|Inconsistent Condom Usage Child Years | 888133|
|Consistent Condom Usage Child Years   | 709278|

### Debut Outcomes


|                                                       |         14|         15|         16|
|:------------------------------------------------------|----------:|----------:|----------:|
|Integer Age                                            |     13.000|     14.000|     15.000|
|Number of children who debuted                         |  18481.000|   5535.000|   7040.000|
|Number of Children who entered the state               | 267138.000| 266934.000| 266688.000|
|Number of sexually active Child years spent in state   |   9227.387|  21217.381|  27488.413|
|Number of sexually inactive Child years spent in state | 257802.934| 245586.706| 239033.155|
|Sexually active state entrace rate                     |      0.072|      0.023|      0.029|
|Total number of Child years spent in state             | 267030.321| 266804.087| 266521.568|

shut down


```
## 
## 
## |metrics                               |  Value|
## |:-------------------------------------|------:|
## |Inconsistent Condom Usage Child Years | 888133|
## |Consistent Condom Usage Child Years   | 709278|
```

```
## Using Value as value column: use value.var to override.
```



