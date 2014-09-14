# Scenario Report




## Model Version: 49
## Scenario: AllInfectedNoMortality

```
## [1] "Scenario Label"
```

```
## [1] "All infected and immortal"
```

```
## [1] "Scenario Notes"
```

```
## [1] "Almost all mothers become infected and they cannot die in the asymptomatic undiagnosed infected state."
## [2] " Substitude: 'HealthyMortalityMotherMultiplier = 1' with 'HealthyMortalityMotherMultiplier = 0'"       
## [3] "Substitude: 'IncidenceMotherMultiplier = 1' with 'IncidenceMotherMultiplier = 3.5'"                    
## [4] "Substitude: 'InfectedMortalityMotherMultiplier = 1' with 'InfectedMortalityMotherMultiplier = 0'"
```

## Mother Model

### Population Stats


There are 100000 Mothers in this scenario.

There are 325475 Children in this scenario.

### State Transitions

A table of the number of mothers who entered each of the different states.


|state                               | entrances| percentage|
|:-----------------------------------|---------:|----------:|
|Mother entrances in DIAGNOSED state |     34818|       34.8|
|Mother entrances in DIAGSYMP state  |     76272|       76.3|
|Mother entrances in HEALTHY state   |         0|        0.0|
|Mother entrances in INFECTED state  |     86821|       86.8|
|Mother entrances in STOPPED state   |     22240|       22.2|
|Mother entrances in SYMPTOMS state  |     51997|       52.0|
|Mother entrances in TREATED state   |     68629|       68.6|

### State Membership

The total time spent by mothers in the various states.


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DIAGNOSED state |       141147|        2.0|
|Mother years in DIAGSYMP state  |       405304|        5.7|
|Mother years in HEALTHY state   |      3029205|       42.3|
|Mother years in INFECTED state  |       561565|        7.8|
|Mother years in STOPPED state   |        36733|        0.5|
|Mother years in SYMPTOMS state  |      2270971|       31.7|
|Mother years in TREATED state   |       710907|        9.9|

Plot of the total time spent in the states involved in scheduling the death of a mother.

![plot of chunk unnamed-chunk-7](figure/AllInfectedNoMortality/unnamed-chunk-7.png) 

Plot of the total time spent in the detailed states that track mothers disease course.

![plot of chunk unnamed-chunk-8](figure/AllInfectedNoMortality/unnamed-chunk-8.png) 

### Mother Survival

#### General Notes

The mortality of the the treated mothers is unrealistic

If there is no mortality in the scenario for the population the plot is for then the plot cannot be produced.

#### Survival of all Mothers


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-9](figure/AllInfectedNoMortality/unnamed-chunk-9.png) 

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

![plot of chunk unnamed-chunk-11](figure/AllInfectedNoMortality/unnamed-chunk-11.png) 

#### Survival of Mother who became treated


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-12](figure/AllInfectedNoMortality/unnamed-chunk-12.png) 

### Number of children per mother

![plot of chunk unnamed-chunk-13](figure/AllInfectedNoMortality/unnamed-chunk-13.png) 

### Age of mothers at birth of children

![plot of chunk unnamed-chunk-14](figure/AllInfectedNoMortality/unnamed-chunk-14.png) 

## Child Model

### Gender Ratio

![plot of chunk unnamed-chunk-15](figure/AllInfectedNoMortality/unnamed-chunk-15.png) 

### State Membership

#### All Ages


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DEAD state      |      8210592|       35.5|
|Mother years in DIAGNOSED state |       455023|        2.0|
|Mother years in DIAGSYMP state  |       977485|        4.2|
|Mother years in HEALTHY state   |      3252297|       14.1|
|Mother years in INFECTED state  |       633273|        2.7|
|Mother years in STOPPED state   |       112436|        0.5|
|Mother years in SYMPTOMS state  |      7372187|       31.9|
|Mother years in TREATED state   |      2129557|        9.2|


|state                          | mother_years| percentage|
|:------------------------------|------------:|----------:|
|Mother years in DEAD state     |      8210592|       35.5|
|Mother years in HEALTHY state  |      3252297|       14.1|
|Mother years in INFECTED state |       846337|        3.7|
|Mother years in STOPPED state  |       112436|        0.5|
|Mother years in SYMPTOMS state |      8591631|       37.1|
|Mother years in TREATED state  |      2129557|        9.2|

#### Below 18 (inclusive)


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DEAD state      |       636569|       10.3|
|Mother years in DIAGNOSED state |       224095|        3.6|
|Mother years in DIAGSYMP state  |       192968|        3.1|
|Mother years in HEALTHY state   |       991514|       16.0|
|Mother years in INFECTED state  |       614374|        9.9|
|Mother years in STOPPED state   |        48888|        0.8|
|Mother years in SYMPTOMS state  |      2517396|       40.7|
|Mother years in TREATED state   |       958221|       15.5|


|state                          | mother_years| percentage|
|:------------------------------|------------:|----------:|
|Mother years in DEAD state     |       636569|       10.3|
|Mother years in HEALTHY state  |       991514|       16.0|
|Mother years in INFECTED state |       818562|       13.2|
|Mother years in STOPPED state  |        48888|        0.8|
|Mother years in SYMPTOMS state |      2730271|       44.2|
|Mother years in TREATED state  |       958221|       15.5|

#### Between 12 and 18 (inclusive)


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DEAD state      |       393109|       17.3|
|Mother years in DIAGNOSED state |        40888|        1.8|
|Mother years in DIAGSYMP state  |        80724|        3.5|
|Mother years in HEALTHY state   |       317313|       13.9|
|Mother years in INFECTED state  |        66145|        2.9|
|Mother years in STOPPED state   |        18857|        0.8|
|Mother years in SYMPTOMS state  |      1008777|       44.3|
|Mother years in TREATED state   |       352510|       15.5|


|state                          | mother_years| percentage|
|:------------------------------|------------:|----------:|
|Mother years in DEAD state     |       393109|       17.3|
|Mother years in HEALTHY state  |       317313|       13.9|
|Mother years in INFECTED state |        95129|        4.2|
|Mother years in STOPPED state  |        18857|        0.8|
|Mother years in SYMPTOMS state |      1101406|       48.3|
|Mother years in TREATED state  |       352510|       15.5|

![plot of chunk unnamed-chunk-22](figure/AllInfectedNoMortality/unnamed-chunk-22.png) 

![plot of chunk unnamed-chunk-23](figure/AllInfectedNoMortality/unnamed-chunk-23.png) 

### Schooling Outcomes

The number of children in the IN SCHOOL category in the figure below are the number of children who died during school years. The number of children in the NOT IN SCHOOL category in the figure below are the number of children who died before starting school. 

![plot of chunk unnamed-chunk-24](figure/AllInfectedNoMortality/unnamed-chunk-24.png) 


|school_status |  Value|
|:-------------|------:|
|NOT_IN_SCHOOL |      0|
|IN_SCHOOL     |      0|
|DROPOUT       | 169132|
|GRADUATED     | 156343|

### Abuse Outcomes


|metrics                 |   Value|
|:-----------------------|-------:|
|Susceptible Children    |  325475|
|Abused Children         |  189745|
|Susceptible Child Years | 1960881|
|Abused Child Years      |  317444|


| Number of abuse episodes|  Value|
|------------------------:|------:|
|                        0| 135730|
|                        1| 135960|
|                        2|  46661|
|                        3|   6764|
|                        4|    353|
|                        5|      7|
|                        6|      0|
|                        7|      0|
|                        8|      0|
|                        9|      0|
|                       10|      0|

### Depression Outcomes


|metrics                 |   Value|
|:-----------------------|-------:|
|Susceptible Children    |  325475|
|Depressed Children      |  217807|
|Susceptible Child Years | 1966951|
|Depressed Child Years   |  311374|


| Number of depressive episodes|  Value|
|-----------------------------:|------:|
|                             0| 107668|
|                             1| 127444|
|                             2|  67931|
|                             3|  19553|
|                             4|   2713|
|                             5|    166|
|                             6|      0|
|                             7|      0|
|                             8|      0|
|                             9|      0|
|                            10|      0|

### Condom Usage Outcomes


|metrics                               |   Value|
|:-------------------------------------|-------:|
|Inconsistent Condom Usage Child Years | 1089807|
|Consistent Condom Usage Child Years   |  863043|

### Debut Outcomes


|                                                       |         14|         15|         16|
|:------------------------------------------------------|----------:|----------:|----------:|
|Integer Age                                            |     13.000|     14.000|     15.000|
|Number of children who debuted                         |  24519.000|   7204.000|   8839.000|
|Number of Children who entered the state               | 325475.000| 325475.000| 325475.000|
|Number of sexually active Child years spent in state   |  12288.278|  28086.390|  36148.195|
|Number of sexually inactive Child years spent in state | 313186.722| 297388.611| 289326.805|
|Sexually active state entrace rate                     |      0.078|      0.024|      0.031|
|Total number of Child years spent in state             | 325475.000| 325475.000| 325475.000|

shut down


```
## 
## 
## |metrics                               |   Value|
## |:-------------------------------------|-------:|
## |Inconsistent Condom Usage Child Years | 1089807|
## |Consistent Condom Usage Child Years   |  863043|
```

```
## Using Value as value column: use value.var to override.
```



