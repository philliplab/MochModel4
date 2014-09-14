# Scenario Report




## Model Version: 49
## Scenario: AllInfectedNoSympNoMortExpDiag

```
## [1] "Scenario Label"
```

```
## [1] "Exponential diagnosis of asymptomatic mothers"
```

```
## [1] "Scenario Notes"
```

```
## [1] "Almost all mothers become diagnosed from the asymptomatic state according to an exponential rate"            
## [2] " Substitude: 'HealthyMortalityMotherMultiplier = 1' with 'HealthyMortalityMotherMultiplier = 0'"             
## [3] "Substitude: 'IncidenceMotherMultiplier = 1' with 'IncidenceMotherMultiplier = 3.5'"                          
## [4] "Substitude: 'InfectedMortalityMotherMultiplier = 1' with 'InfectedMortalityMotherMultiplier = 0'"            
## [5] "Substitude: 'SymptomsMotherMultiplier = 1' with 'SymptomsMotherMultiplier = 0'"                              
## [6] "Substitude: 'InfectedDiagnosisTransitionMotherSwitch = 1' with 'InfectedDiagnosisTransitionMotherSwitch = 0'"
```

## Mother Model

### Population Stats


There are 100000 Mothers in this scenario.

There are 373514 Children in this scenario.

### State Transitions

A table of the number of mothers who entered each of the different states.


|state                               | entrances| percentage|
|:-----------------------------------|---------:|----------:|
|Mother entrances in DIAGNOSED state |     86811|       86.8|
|Mother entrances in DIAGSYMP state  |         0|        0.0|
|Mother entrances in HEALTHY state   |         0|        0.0|
|Mother entrances in INFECTED state  |     86821|       86.8|
|Mother entrances in STOPPED state   |         0|        0.0|
|Mother entrances in SYMPTOMS state  |         0|        0.0|
|Mother entrances in TREATED state   |         0|        0.0|

### State Membership

The total time spent by mothers in the various states.


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DIAGNOSED state |      6535423|       65.4|
|Mother years in DIAGSYMP state  |            0|        0.0|
|Mother years in HEALTHY state   |      3029205|       30.3|
|Mother years in INFECTED state  |       435372|        4.4|
|Mother years in STOPPED state   |            0|        0.0|
|Mother years in SYMPTOMS state  |            0|        0.0|
|Mother years in TREATED state   |            0|        0.0|

Plot of the total time spent in the states involved in scheduling the death of a mother.

![plot of chunk unnamed-chunk-7](figure/AllInfectedNoSympNoMortExpDiag/unnamed-chunk-7.png) 

Plot of the total time spent in the detailed states that track mothers disease course.

![plot of chunk unnamed-chunk-8](figure/AllInfectedNoSympNoMortExpDiag/unnamed-chunk-8.png) 

### Mother Survival

#### General Notes

The mortality of the the treated mothers is unrealistic

If there is no mortality in the scenario for the population the plot is for then the plot cannot be produced.

#### Survival of all Mothers


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

![plot of chunk unnamed-chunk-13](figure/AllInfectedNoSympNoMortExpDiag/unnamed-chunk-13.png) 

### Age of mothers at birth of children

![plot of chunk unnamed-chunk-14](figure/AllInfectedNoSympNoMortExpDiag/unnamed-chunk-14.png) 

## Child Model

### Gender Ratio

![plot of chunk unnamed-chunk-15](figure/AllInfectedNoSympNoMortExpDiag/unnamed-chunk-15.png) 

### State Membership

#### All Ages


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DEAD state      |            0|        0.0|
|Mother years in DIAGNOSED state |     22466275|       85.7|
|Mother years in DIAGSYMP state  |            0|        0.0|
|Mother years in HEALTHY state   |      3259892|       12.4|
|Mother years in INFECTED state  |       480174|        1.8|
|Mother years in STOPPED state   |            0|        0.0|
|Mother years in SYMPTOMS state  |            0|        0.0|
|Mother years in TREATED state   |            0|        0.0|


|state                          | mother_years| percentage|
|:------------------------------|------------:|----------:|
|Mother years in DEAD state     |            0|        0.0|
|Mother years in HEALTHY state  |      3259892|       12.4|
|Mother years in INFECTED state |     22946449|       87.6|
|Mother years in STOPPED state  |            0|        0.0|
|Mother years in SYMPTOMS state |            0|        0.0|
|Mother years in TREATED state  |            0|        0.0|

#### Below 18 (inclusive)


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DEAD state      |            0|        0.0|
|Mother years in DIAGNOSED state |      5648343|       79.6|
|Mother years in DIAGSYMP state  |            0|        0.0|
|Mother years in HEALTHY state   |       994259|       14.0|
|Mother years in INFECTED state  |       454165|        6.4|
|Mother years in STOPPED state   |            0|        0.0|
|Mother years in SYMPTOMS state  |            0|        0.0|
|Mother years in TREATED state   |            0|        0.0|


|state                          | mother_years| percentage|
|:------------------------------|------------:|----------:|
|Mother years in DEAD state     |            0|          0|
|Mother years in HEALTHY state  |       994259|         14|
|Mother years in INFECTED state |      6102507|         86|
|Mother years in STOPPED state  |            0|          0|
|Mother years in SYMPTOMS state |            0|          0|
|Mother years in TREATED state  |            0|          0|

#### Between 12 and 18 (inclusive)


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DEAD state      |            0|        0.0|
|Mother years in DIAGNOSED state |      2243051|       85.8|
|Mother years in DIAGSYMP state  |            0|        0.0|
|Mother years in HEALTHY state   |       318409|       12.2|
|Mother years in INFECTED state  |        53138|        2.0|
|Mother years in STOPPED state   |            0|        0.0|
|Mother years in SYMPTOMS state  |            0|        0.0|
|Mother years in TREATED state   |            0|        0.0|


|state                          | mother_years| percentage|
|:------------------------------|------------:|----------:|
|Mother years in DEAD state     |            0|        0.0|
|Mother years in HEALTHY state  |       318409|       12.2|
|Mother years in INFECTED state |      2296189|       87.8|
|Mother years in STOPPED state  |            0|        0.0|
|Mother years in SYMPTOMS state |            0|        0.0|
|Mother years in TREATED state  |            0|        0.0|

![plot of chunk unnamed-chunk-22](figure/AllInfectedNoSympNoMortExpDiag/unnamed-chunk-22.png) 

![plot of chunk unnamed-chunk-23](figure/AllInfectedNoSympNoMortExpDiag/unnamed-chunk-23.png) 

### Schooling Outcomes

The number of children in the IN SCHOOL category in the figure below are the number of children who died during school years. The number of children in the NOT IN SCHOOL category in the figure below are the number of children who died before starting school. 

![plot of chunk unnamed-chunk-24](figure/AllInfectedNoSympNoMortExpDiag/unnamed-chunk-24.png) 


|school_status |  Value|
|:-------------|------:|
|NOT_IN_SCHOOL |      0|
|IN_SCHOOL     |      0|
|DROPOUT       | 171352|
|GRADUATED     | 202162|

### Abuse Outcomes


|metrics                 |   Value|
|:-----------------------|-------:|
|Susceptible Children    |  373514|
|Abused Children         |  200211|
|Susceptible Child Years | 2291028|
|Abused Child Years      |  323570|


| Number of abuse episodes|  Value|
|------------------------:|------:|
|                        0| 173303|
|                        1| 150317|
|                        2|  44193|
|                        3|   5415|
|                        4|    283|
|                        5|      3|
|                        6|      0|
|                        7|      0|
|                        8|      0|
|                        9|      0|
|                       10|      0|

### Depression Outcomes


|metrics                 |   Value|
|:-----------------------|-------:|
|Susceptible Children    |  373514|
|Depressed Children      |  230105|
|Susceptible Child Years | 2303560|
|Depressed Child Years   |  311038|


| Number of depressive episodes|  Value|
|-----------------------------:|------:|
|                             0| 143409|
|                             1| 146245|
|                             2|  66256|
|                             3|  15745|
|                             4|   1771|
|                             5|     88|
|                             6|      0|
|                             7|      0|
|                             8|      0|
|                             9|      0|
|                            10|      0|

### Condom Usage Outcomes


|metrics                               |   Value|
|:-------------------------------------|-------:|
|Inconsistent Condom Usage Child Years | 1245099|
|Consistent Condom Usage Child Years   |  995985|

### Debut Outcomes


|                                                       |         14|         15|         16|
|:------------------------------------------------------|----------:|----------:|----------:|
|Integer Age                                            |     13.000|     14.000|     15.000|
|Number of children who debuted                         |  25792.000|   7851.000|   9787.000|
|Number of Children who entered the state               | 373514.000| 373514.000| 373514.000|
|Number of sexually active Child years spent in state   |  12898.970|  29745.128|  38570.889|
|Number of sexually inactive Child years spent in state | 360615.030| 343768.872| 334943.111|
|Sexually active state entrace rate                     |      0.072|      0.023|      0.029|
|Total number of Child years spent in state             | 373514.000| 373514.000| 373514.000|

shut down


```
## 
## 
## |metrics                               |   Value|
## |:-------------------------------------|-------:|
## |Inconsistent Condom Usage Child Years | 1245099|
## |Consistent Condom Usage Child Years   |  995985|
```

```
## Using Value as value column: use value.var to override.
```



