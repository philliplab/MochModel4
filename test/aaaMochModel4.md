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

There are 31008 Children in this scenario.

### State Transitions

A table of the number of mothers who entered each of the different states.


|state                               | entrances| percentage|
|:-----------------------------------|---------:|----------:|
|Mother entrances in DIAGNOSED state |      1367|       13.7|
|Mother entrances in DIAGSYMP state  |      2147|       21.5|
|Mother entrances in HEALTHY state   |         0|        0.0|
|Mother entrances in INFECTED state  |      3472|       34.7|
|Mother entrances in STOPPED state   |       521|        5.2|
|Mother entrances in SYMPTOMS state  |      1491|       14.9|
|Mother entrances in TREATED state   |      1281|       12.8|

### State Membership

The total time spent by mothers in the various states.


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DIAGNOSED state |         4340|        0.8|
|Mother years in DIAGSYMP state  |         4525|        0.8|
|Mother years in HEALTHY state   |       493471|       90.7|
|Mother years in INFECTED state  |        17507|        3.2|
|Mother years in STOPPED state   |          805|        0.1|
|Mother years in SYMPTOMS state  |         6404|        1.2|
|Mother years in TREATED state   |        16875|        3.1|

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
|Mother years in DEAD state      |       869487|       49.4|
|Mother years in DIAGNOSED state |         8709|        0.5|
|Mother years in DIAGSYMP state  |         8699|        0.5|
|Mother years in HEALTHY state   |       778012|       44.2|
|Mother years in INFECTED state  |        24290|        1.4|
|Mother years in STOPPED state   |         2654|        0.2|
|Mother years in SYMPTOMS state  |        15031|        0.9|
|Mother years in TREATED state   |        52679|        3.0|

![plot of chunk unnamed-chunk-17](figure/ZeroGestation/unnamed-chunk-17.png) 

![plot of chunk unnamed-chunk-18](figure/ZeroGestation/unnamed-chunk-18.png) 

### Schooling Outcomes

The number of children in the IN SCHOOL category in the figure below are the number of children who died during school years. The number of children in the NOT IN SCHOOL category in the figure below are the number of children who died before starting school. 

![plot of chunk unnamed-chunk-19](figure/ZeroGestation/unnamed-chunk-19.png) 


|school_status | Value|
|:-------------|-----:|
|NOT_IN_SCHOOL |  2055|
|IN_SCHOOL     |   191|
|DROPOUT       | 17305|
|GRADUATED     | 11457|

### Abuse Outcomes


|metrics                 |  Value|
|:-----------------------|------:|
|Susceptible Children    |  28859|
|Abused Children         |  15014|
|Susceptible Child Years | 182033|
|Abused Child Years      |  19165|


| Number of abuse episodes| Value|
|------------------------:|-----:|
|                        0| 13845|
|                        1| 11047|
|                        2|  3382|
|                        3|   540|
|                        4|    43|
|                        5|     2|
|                        6|     0|
|                        7|     0|
|                        8|     0|
|                        9|     0|
|                       10|     0|

### Depression Outcomes


|metrics                 |  Value|
|:-----------------------|------:|
|Susceptible Children    |  28859|
|Depressed Children      |  17787|
|Susceptible Child Years | 176576|
|Depressed Child Years   |  24621|


| Number of depressive episodes| Value|
|-----------------------------:|-----:|
|                             0| 11072|
|                             1| 10904|
|                             2|  5283|
|                             3|  1411|
|                             4|   176|
|                             5|    13|
|                             6|     0|
|                             7|     0|
|                             8|     0|
|                             9|     0|
|                            10|     0|

### Condom Usage Outcomes


|metrics                               | Value|
|:-------------------------------------|-----:|
|Inconsistent Condom Usage Child Years | 97570|
|Consistent Condom Usage Child Years   | 74780|

### Debut Outcomes


|                                                       |        14|        15|        16|
|:------------------------------------------------------|---------:|---------:|---------:|
|Integer Age                                            |    13.000|    14.000|    15.000|
|Number of children who debuted                         |  1885.000|   552.000|   650.000|
|Number of Children who entered the state               | 28836.000| 28804.000| 28766.000|
|Number of sexually active Child years spent in state   |   960.855|  2163.517|  2771.253|
|Number of sexually inactive Child years spent in state | 27857.463| 26625.023| 25982.463|
|Sexually active state entrace rate                     |     0.068|     0.021|     0.025|
|Total number of Child years spent in state             | 28818.317| 28788.540| 28753.716|

shut down



