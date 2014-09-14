# Scenario Report




## Model Version: 49
## Scenario: OnlyTreatedMortality

```
## [1] "Scenario Label"
```

```
## [1] "Mortality only in the treated state"
```

```
## [1] "Scenario Notes"
```

```
## [1] "Almost all mothers become treated and are immortal in all states before treatment"                 
## [2] " Substitude: 'HealthyMortalityMotherMultiplier = 1' with 'HealthyMortalityMotherMultiplier = 0'"   
## [3] "Substitude: 'IncidenceMotherMultiplier = 1' with 'IncidenceMotherMultiplier = 5'"                  
## [4] "Substitude: 'SymptomsMotherMultiplier = 1' with 'SymptomsMotherMultiplier = 10'"                   
## [5] "Substitude: 'InfectedDiagnosisMotherMultiplier = 1' with 'InfectedDiagnosisMotherMultiplier = 10'" 
## [6] "Substitude: 'SymptomsDiagnosisMotherMultiplier = 1' with 'SymptomsDiagnosisMotherMultiplier = 10'" 
## [7] "Substitude: 'TreatmentMotherMultiplier = 1' with 'TreatmentMotherMultiplier = 1000'"               
## [8] "Substitude: 'TreatmentCessationMotherMultiplier = 1' with 'TreatmentCessationMotherMultiplier = 0'"
## [9] "Substitude: 'InfectedMortalityMotherMultiplier = 1' with 'InfectedMortalityMotherMultiplier = 0'"
```

## Mother Model

### Population Stats


There are 100000 Mothers in this scenario.

There are 294960 Children in this scenario.

### State Transitions

A table of the number of mothers who entered each of the different states.


|state                               | entrances| percentage|
|:-----------------------------------|---------:|----------:|
|Mother entrances in DIAGNOSED state |     37829|       37.8|
|Mother entrances in DIAGSYMP state  |     82943|       82.9|
|Mother entrances in HEALTHY state   |         0|        0.0|
|Mother entrances in INFECTED state  |     94418|       94.4|
|Mother entrances in STOPPED state   |         0|        0.0|
|Mother entrances in SYMPTOMS state  |     56589|       56.6|
|Mother entrances in TREATED state   |     82940|       82.9|

### State Membership

The total time spent by mothers in the various states.


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DIAGNOSED state |      15507.6|        0.2|
|Mother years in DIAGSYMP state  |        995.4|        0.0|
|Mother years in HEALTHY state   |    2340012.5|       35.8|
|Mother years in INFECTED state  |      61661.5|        0.9|
|Mother years in STOPPED state   |          0.0|        0.0|
|Mother years in SYMPTOMS state  |    2745319.4|       42.0|
|Mother years in TREATED state   |    1368390.9|       20.9|

Plot of the total time spent in the states involved in scheduling the death of a mother.

![plot of chunk unnamed-chunk-7](figure/OnlyTreatedMortality/unnamed-chunk-7.png) 

Plot of the total time spent in the detailed states that track mothers disease course.

![plot of chunk unnamed-chunk-8](figure/OnlyTreatedMortality/unnamed-chunk-8.png) 

### Mother Survival

#### General Notes

The mortality of the the treated mothers is unrealistic

If there is no mortality in the scenario for the population the plot is for then the plot cannot be produced.

#### Survival of all Mothers


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-9](figure/OnlyTreatedMortality/unnamed-chunk-9.png) 

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

![plot of chunk unnamed-chunk-11](figure/OnlyTreatedMortality/unnamed-chunk-11.png) 

#### Survival of Mother who became treated


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-12](figure/OnlyTreatedMortality/unnamed-chunk-12.png) 

### Number of children per mother

![plot of chunk unnamed-chunk-13](figure/OnlyTreatedMortality/unnamed-chunk-13.png) 

### Age of mothers at birth of children

![plot of chunk unnamed-chunk-14](figure/OnlyTreatedMortality/unnamed-chunk-14.png) 

## Child Model

### Gender Ratio

![plot of chunk unnamed-chunk-15](figure/OnlyTreatedMortality/unnamed-chunk-15.png) 

### State Membership

#### All Ages


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DEAD state      |    8461016.9|       40.2|
|Mother years in DIAGNOSED state |       7267.3|        0.0|
|Mother years in DIAGSYMP state  |        333.3|        0.0|
|Mother years in HEALTHY state   |    1420977.3|        6.8|
|Mother years in INFECTED state  |      22433.2|        0.1|
|Mother years in STOPPED state   |          0.0|        0.0|
|Mother years in SYMPTOMS state  |    7597591.7|       36.1|
|Mother years in TREATED state   |    3519356.0|       16.7|


|state                          | mother_years| percentage|
|:------------------------------|------------:|----------:|
|Mother years in DEAD state     |      8461017|       40.2|
|Mother years in HEALTHY state  |      1420977|        6.8|
|Mother years in INFECTED state |        28524|        0.1|
|Mother years in STOPPED state  |            0|        0.0|
|Mother years in SYMPTOMS state |      7599102|       36.1|
|Mother years in TREATED state  |      3519356|       16.7|

#### Below 18 (inclusive)


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DEAD state      |     626071.2|       11.2|
|Mother years in DIAGNOSED state |       6363.0|        0.1|
|Mother years in DIAGSYMP state  |        178.8|        0.0|
|Mother years in HEALTHY state   |     466237.1|        8.3|
|Mother years in INFECTED state  |      22251.3|        0.4|
|Mother years in STOPPED state   |          0.0|        0.0|
|Mother years in SYMPTOMS state  |    2913735.7|       52.0|
|Mother years in TREATED state   |    1569402.9|       28.0|


|state                          | mother_years| percentage|
|:------------------------------|------------:|----------:|
|Mother years in DEAD state     |       626071|       11.2|
|Mother years in HEALTHY state  |       466237|        8.3|
|Mother years in INFECTED state |        28294|        0.5|
|Mother years in STOPPED state  |            0|        0.0|
|Mother years in SYMPTOMS state |      2914235|       52.0|
|Mother years in TREATED state  |      1569403|       28.0|

#### Between 12 and 18 (inclusive)


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DEAD state      |    374282.55|       18.1|
|Mother years in DIAGNOSED state |       254.39|        0.0|
|Mother years in DIAGSYMP state  |        21.76|        0.0|
|Mother years in HEALTHY state   |    135304.33|        6.6|
|Mother years in INFECTED state  |       555.22|        0.0|
|Mother years in STOPPED state   |         0.00|        0.0|
|Mother years in SYMPTOMS state  |   1021568.98|       49.5|
|Mother years in TREATED state   |    532732.76|       25.8|


|state                          | mother_years| percentage|
|:------------------------------|------------:|----------:|
|Mother years in DEAD state     |     374282.5|       18.1|
|Mother years in HEALTHY state  |     135304.3|        6.6|
|Mother years in INFECTED state |        691.7|        0.0|
|Mother years in STOPPED state  |          0.0|        0.0|
|Mother years in SYMPTOMS state |    1021708.7|       49.5|
|Mother years in TREATED state  |     532732.8|       25.8|

![plot of chunk unnamed-chunk-22](figure/OnlyTreatedMortality/unnamed-chunk-22.png) 

![plot of chunk unnamed-chunk-23](figure/OnlyTreatedMortality/unnamed-chunk-23.png) 

### Schooling Outcomes

The number of children in the IN SCHOOL category in the figure below are the number of children who died during school years. The number of children in the NOT IN SCHOOL category in the figure below are the number of children who died before starting school. 

![plot of chunk unnamed-chunk-24](figure/OnlyTreatedMortality/unnamed-chunk-24.png) 


|school_status |  Value|
|:-------------|------:|
|NOT_IN_SCHOOL |      0|
|IN_SCHOOL     |      0|
|DROPOUT       | 155397|
|GRADUATED     | 139563|

### Abuse Outcomes


|metrics                 |   Value|
|:-----------------------|-------:|
|Susceptible Children    |  294960|
|Abused Children         |  173307|
|Susceptible Child Years | 1774321|
|Abused Child Years      |  290399|


| Number of abuse episodes|  Value|
|------------------------:|------:|
|                        0| 121653|
|                        1| 123742|
|                        2|  43024|
|                        3|   6198|
|                        4|    333|
|                        5|     10|
|                        6|      0|
|                        7|      0|
|                        8|      0|
|                        9|      0|
|                       10|      0|

### Depression Outcomes


|metrics                 |   Value|
|:-----------------------|-------:|
|Susceptible Children    |  294960|
|Depressed Children      |  198542|
|Susceptible Child Years | 1780002|
|Depressed Child Years   |  284718|


| Number of depressive episodes|  Value|
|-----------------------------:|------:|
|                             0|  96418|
|                             1| 115406|
|                             2|  62714|
|                             3|  17905|
|                             4|   2401|
|                             5|    116|
|                             6|      0|
|                             7|      0|
|                             8|      0|
|                             9|      0|
|                            10|      0|

### Condom Usage Outcomes


|metrics                               |  Value|
|:-------------------------------------|------:|
|Inconsistent Condom Usage Child Years | 989685|
|Consistent Condom Usage Child Years   | 780075|

### Debut Outcomes


|                                                       |         14|         15|         16|
|:------------------------------------------------------|----------:|----------:|----------:|
|Integer Age                                            |     13.000|     14.000|     15.000|
|Number of children who debuted                         |  22413.000|   6445.000|   8070.000|
|Number of Children who entered the state               | 294960.000| 294960.000| 294960.000|
|Number of sexually active Child years spent in state   |  11238.015|  25640.563|  32896.738|
|Number of sexually inactive Child years spent in state | 283721.985| 269319.437| 262063.262|
|Sexually active state entrace rate                     |      0.079|      0.024|      0.031|
|Total number of Child years spent in state             | 294960.000| 294960.000| 294960.000|

shut down


```
## 
## 
## |metrics                               |  Value|
## |:-------------------------------------|------:|
## |Inconsistent Condom Usage Child Years | 989685|
## |Consistent Condom Usage Child Years   | 780075|
```

```
## Using Value as value column: use value.var to override.
```



