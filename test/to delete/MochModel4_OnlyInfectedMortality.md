# Scenario Report




## Model Version: 49
## Scenario: OnlyInfectedMortality

```
## [1] "Scenario Label"
```

```
## [1] "Mothers can only die in the infected State"
```

```
## [1] "Scenario Notes"
```

```
## [1] "A scenario in which all mothers die from the infected and undiagnosed asymptomatic stage"        
## [2] " Substitude: 'HealthyMortalityMotherMultiplier = 1' with 'HealthyMortalityMotherMultiplier = 0'" 
## [3] "Substitude: 'IncidenceMotherMultiplier = 1' with 'IncidenceMotherMultiplier = 3.5'"              
## [4] "Substitude: 'SymptomsMotherMultiplier = 1' with 'SymptomsMotherMultiplier = 0'"                  
## [5] "Substitude: 'InfectedDiagnosisMotherMultiplier = 1' with 'InfectedDiagnosisMotherMultiplier = 0'"
## [6] "Substitude: 'SymptomsDiagnosisMotherMultiplier = 1' with 'SymptomsDiagnosisMotherMultiplier = 0'"
```

## Mother Model

### Population Stats


There are 100000 Mothers in this scenario.

There are 228029 Children in this scenario.

### State Transitions

A table of the number of mothers who entered each of the different states.


|state                               | entrances| percentage|
|:-----------------------------------|---------:|----------:|
|Mother entrances in DIAGNOSED state |     34818|       34.8|
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
|Mother years in DIAGNOSED state |       204755|        5.1|
|Mother years in DIAGSYMP state  |            0|        0.0|
|Mother years in HEALTHY state   |      3029205|       74.8|
|Mother years in INFECTED state  |       817639|       20.2|
|Mother years in STOPPED state   |            0|        0.0|
|Mother years in SYMPTOMS state  |            0|        0.0|
|Mother years in TREATED state   |            0|        0.0|

Plot of the total time spent in the states involved in scheduling the death of a mother.

![plot of chunk unnamed-chunk-7](figure/OnlyInfectedMortality/unnamed-chunk-7.png) 

Plot of the total time spent in the detailed states that track mothers disease course.

![plot of chunk unnamed-chunk-8](figure/OnlyInfectedMortality/unnamed-chunk-8.png) 

### Mother Survival

#### General Notes

The mortality of the the treated mothers is unrealistic

If there is no mortality in the scenario for the population the plot is for then the plot cannot be produced.

#### Survival of all Mothers


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-9](figure/OnlyInfectedMortality/unnamed-chunk-9.png) 

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

![plot of chunk unnamed-chunk-11](figure/OnlyInfectedMortality/unnamed-chunk-11.png) 

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

![plot of chunk unnamed-chunk-13](figure/OnlyInfectedMortality/unnamed-chunk-13.png) 

### Age of mothers at birth of children

![plot of chunk unnamed-chunk-14](figure/OnlyInfectedMortality/unnamed-chunk-14.png) 

## Child Model

### Gender Ratio

![plot of chunk unnamed-chunk-15](figure/OnlyInfectedMortality/unnamed-chunk-15.png) 

### State Membership

#### All Ages


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DEAD state      |     12208461|       72.4|
|Mother years in DIAGNOSED state |       354040|        2.1|
|Mother years in DIAGSYMP state  |            0|        0.0|
|Mother years in HEALTHY state   |      3239213|       19.2|
|Mother years in INFECTED state  |      1055136|        6.3|
|Mother years in STOPPED state   |            0|        0.0|
|Mother years in SYMPTOMS state  |            0|        0.0|
|Mother years in TREATED state   |            0|        0.0|


|state                          | mother_years| percentage|
|:------------------------------|------------:|----------:|
|Mother years in DEAD state     |     12208461|       72.4|
|Mother years in HEALTHY state  |      3239213|       19.2|
|Mother years in INFECTED state |      1409176|        8.4|
|Mother years in STOPPED state  |            0|        0.0|
|Mother years in SYMPTOMS state |            0|        0.0|
|Mother years in TREATED state  |            0|        0.0|

#### Below 18 (inclusive)


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DEAD state      |      1976587|       45.6|
|Mother years in DIAGNOSED state |       340708|        7.9|
|Mother years in DIAGSYMP state  |            0|        0.0|
|Mother years in HEALTHY state   |       988322|       22.8|
|Mother years in INFECTED state  |      1026934|       23.7|
|Mother years in STOPPED state   |            0|        0.0|
|Mother years in SYMPTOMS state  |            0|        0.0|
|Mother years in TREATED state   |            0|        0.0|


|state                          | mother_years| percentage|
|:------------------------------|------------:|----------:|
|Mother years in DEAD state     |      1976587|       45.6|
|Mother years in HEALTHY state  |       988322|       22.8|
|Mother years in INFECTED state |      1367642|       31.6|
|Mother years in STOPPED state  |            0|        0.0|
|Mother years in SYMPTOMS state |            0|        0.0|
|Mother years in TREATED state  |            0|        0.0|

#### Between 12 and 18 (inclusive)


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DEAD state      |      1101703|       69.0|
|Mother years in DIAGNOSED state |        54301|        3.4|
|Mother years in DIAGSYMP state  |            0|        0.0|
|Mother years in HEALTHY state   |       315923|       19.8|
|Mother years in INFECTED state  |       124276|        7.8|
|Mother years in STOPPED state   |            0|        0.0|
|Mother years in SYMPTOMS state  |            0|        0.0|
|Mother years in TREATED state   |            0|        0.0|


|state                          | mother_years| percentage|
|:------------------------------|------------:|----------:|
|Mother years in DEAD state     |      1101703|       69.0|
|Mother years in HEALTHY state  |       315923|       19.8|
|Mother years in INFECTED state |       178577|       11.2|
|Mother years in STOPPED state  |            0|        0.0|
|Mother years in SYMPTOMS state |            0|        0.0|
|Mother years in TREATED state  |            0|        0.0|

![plot of chunk unnamed-chunk-22](figure/OnlyInfectedMortality/unnamed-chunk-22.png) 

![plot of chunk unnamed-chunk-23](figure/OnlyInfectedMortality/unnamed-chunk-23.png) 

### Schooling Outcomes

The number of children in the IN SCHOOL category in the figure below are the number of children who died during school years. The number of children in the NOT IN SCHOOL category in the figure below are the number of children who died before starting school. 

![plot of chunk unnamed-chunk-24](figure/OnlyInfectedMortality/unnamed-chunk-24.png) 


|school_status |  Value|
|:-------------|------:|
|NOT_IN_SCHOOL |      0|
|IN_SCHOOL     |      0|
|DROPOUT       | 133627|
|GRADUATED     |  94402|

### Abuse Outcomes


|metrics                 |   Value|
|:-----------------------|-------:|
|Susceptible Children    |  228029|
|Abused Children         |  125464|
|Susceptible Child Years | 1390653|
|Abused Child Years      |  205550|


| Number of abuse episodes|  Value|
|------------------------:|------:|
|                        0| 102565|
|                        1|  92588|
|                        2|  28955|
|                        3|   3742|
|                        4|    175|
|                        5|      4|
|                        6|      0|
|                        7|      0|
|                        8|      0|
|                        9|      0|
|                       10|      0|

### Depression Outcomes


|metrics                 |   Value|
|:-----------------------|-------:|
|Susceptible Children    |  228029|
|Depressed Children      |  159992|
|Susceptible Child Years | 1359571|
|Depressed Child Years   |  236632|


| Number of depressive episodes| Value|
|-----------------------------:|-----:|
|                             0| 68037|
|                             1| 88630|
|                             2| 52198|
|                             3| 16456|
|                             4|  2584|
|                             5|   121|
|                             6|     3|
|                             7|     0|
|                             8|     0|
|                             9|     0|
|                            10|     0|

### Condom Usage Outcomes


|metrics                               |  Value|
|:-------------------------------------|------:|
|Inconsistent Condom Usage Child Years | 760215|
|Consistent Condom Usage Child Years   | 607959|

### Debut Outcomes


|                                                       |         14|         15|         16|
|:------------------------------------------------------|----------:|----------:|----------:|
|Integer Age                                            |     13.000|     14.000|     15.000|
|Number of children who debuted                         |  16643.000|   4963.000|   6071.000|
|Number of Children who entered the state               | 228029.000| 228029.000| 228029.000|
|Number of sexually active Child years spent in state   |   8308.712|  19115.562|  24672.999|
|Number of sexually inactive Child years spent in state | 219720.288| 208913.438| 203356.001|
|Sexually active state entrace rate                     |      0.076|      0.024|      0.030|
|Total number of Child years spent in state             | 228029.000| 228029.000| 228029.000|

shut down


```
## 
## 
## |metrics                               |  Value|
## |:-------------------------------------|------:|
## |Inconsistent Condom Usage Child Years | 760215|
## |Consistent Condom Usage Child Years   | 607959|
```

```
## Using Value as value column: use value.var to override.
```



