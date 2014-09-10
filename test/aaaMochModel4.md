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


There are 100000 Mothers in this scenario.

There are 298719 Children in this scenario.

### State Transitions

A table of the number of mothers who entered each of the different states.


|state                               | entrances| percentage|
|:-----------------------------------|---------:|----------:|
|Mother entrances in DIAGNOSED state |     16114|       16.1|
|Mother entrances in DIAGSYMP state  |     24860|       24.9|
|Mother entrances in HEALTHY state   |         0|        0.0|
|Mother entrances in INFECTED state  |     39992|       40.0|
|Mother entrances in STOPPED state   |      9136|        9.1|
|Mother entrances in SYMPTOMS state  |     16860|       16.9|
|Mother entrances in TREATED state   |     22176|       22.2|

### State Membership

The total time spent by mothers in the various states.


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DIAGNOSED state |        52011|        1.0|
|Mother years in DIAGSYMP state  |        15477|        0.3|
|Mother years in HEALTHY state   |      4497170|       87.3|
|Mother years in INFECTED state  |       205116|        4.0|
|Mother years in STOPPED state   |        15046|        0.3|
|Mother years in SYMPTOMS state  |        72932|        1.4|
|Mother years in TREATED state   |       292148|        5.7|

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
|Mother years in DEAD state      |      8701705|       51.9|
|Mother years in DIAGNOSED state |        81553|        0.5|
|Mother years in DIAGSYMP state  |        26716|        0.2|
|Mother years in HEALTHY state   |      6686029|       39.8|
|Mother years in INFECTED state  |       243165|        1.4|
|Mother years in STOPPED state   |        47694|        0.3|
|Mother years in SYMPTOMS state  |       145621|        0.9|
|Mother years in TREATED state   |       847694|        5.1|

![plot of chunk unnamed-chunk-17](figure/ZeroGestation/unnamed-chunk-17.png) 

![plot of chunk unnamed-chunk-18](figure/ZeroGestation/unnamed-chunk-18.png) 

### Schooling Outcomes

The number of children in the IN SCHOOL category in the figure below are the number of children who died during school years. The number of children in the NOT IN SCHOOL category in the figure below are the number of children who died before starting school. 

![plot of chunk unnamed-chunk-19](figure/ZeroGestation/unnamed-chunk-19.png) 


|school_status |  Value|
|:-------------|------:|
|NOT_IN_SCHOOL |  25227|
|IN_SCHOOL     |   1857|
|DROPOUT       | 160226|
|GRADUATED     | 111409|

### Abuse Outcomes


|metrics                 |   Value|
|:-----------------------|-------:|
|Susceptible Children    |  272526|
|Abused Children         |  148706|
|Susceptible Child Years | 1708162|
|Abused Child Years      |  192652|


| Number of abuse episodes|  Value|
|------------------------:|------:|
|                        0| 123820|
|                        1| 106612|
|                        2|  35886|
|                        3|   5766|
|                        4|    432|
|                        5|     10|
|                        6|      0|
|                        7|      0|
|                        8|      0|
|                        9|      0|
|                       10|      0|

### Depression Outcomes


|metrics                 |   Value|
|:-----------------------|-------:|
|Susceptible Children    |  272526|
|Depressed Children      |  176153|
|Susceptible Child Years | 1654168|
|Depressed Child Years   |  246646|


| Number of depressive episodes|  Value|
|-----------------------------:|------:|
|                             0|  96373|
|                             1| 106558|
|                             2|  53339|
|                             3|  14268|
|                             4|   1883|
|                             5|    102|
|                             6|      3|
|                             7|      0|
|                             8|      0|
|                             9|      0|
|                            10|      0|

### Condom Usage Outcomes


|metrics                               |  Value|
|:-------------------------------------|------:|
|Inconsistent Condom Usage Child Years | 898021|
|Consistent Condom Usage Child Years   | 730361|

### Debut Outcomes


|                                                       |         14|         15|         16|
|:------------------------------------------------------|----------:|----------:|----------:|
|Integer Age                                            |     13.000|     14.000|     15.000|
|Number of children who debuted                         |  19188.000|   5713.000|   7165.000|
|Number of Children who entered the state               | 272328.000| 272117.000| 271863.000|
|Number of sexually active Child years spent in state   |   9584.561|  22038.582|  28406.628|
|Number of sexually inactive Child years spent in state | 262631.895| 249943.555| 243283.691|
|Sexually active state entrace rate                     |      0.073|      0.023|      0.029|
|Total number of Child years spent in state             | 272216.456| 271982.137| 271690.319|

shut down


```
## 
## 
## |metrics                               |  Value|
## |:-------------------------------------|------:|
## |Inconsistent Condom Usage Child Years | 898021|
## |Consistent Condom Usage Child Years   | 730361|
```

```
## Using Value as value column: use value.var to override.
```



