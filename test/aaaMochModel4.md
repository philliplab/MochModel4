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

#### All Ages


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


|state                          | mother_years| percentage|
|:------------------------------|------------:|----------:|
|Mother years in DEAD state     |      8702191|       51.9|
|Mother years in HEALTHY state  |      6687194|       39.9|
|Mother years in INFECTED state |       320438|        1.9|
|Mother years in STOPPED state  |        47711|        0.3|
|Mother years in SYMPTOMS state |       174636|        1.0|
|Mother years in TREATED state  |       848007|        5.1|

#### Below 18 (inclusive)


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DEAD state      |       976971|       18.8|
|Mother years in DIAGNOSED state |        79914|        1.5|
|Mother years in DIAGSYMP state  |        24712|        0.5|
|Mother years in HEALTHY state   |      3150188|       60.5|
|Mother years in INFECTED state  |       238600|        4.6|
|Mother years in STOPPED state   |        30325|        0.6|
|Mother years in SYMPTOMS state  |       140421|        2.7|
|Mother years in TREATED state   |       563885|       10.8|


|state                          | mother_years| percentage|
|:------------------------------|------------:|----------:|
|Mother years in DEAD state     |       977432|       18.8|
|Mother years in HEALTHY state  |      3151352|       60.5|
|Mother years in INFECTED state |       314242|        6.0|
|Mother years in STOPPED state  |        30343|        0.6|
|Mother years in SYMPTOMS state |       167451|        3.2|
|Mother years in TREATED state  |       564195|       10.8|

#### Between 12 and 18 (inclusive)


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DEAD state      |       571249|       30.1|
|Mother years in DIAGNOSED state |         8820|        0.5|
|Mother years in DIAGSYMP state  |         5792|        0.3|
|Mother years in HEALTHY state   |      1065302|       56.0|
|Mother years in INFECTED state  |        21988|        1.2|
|Mother years in STOPPED state   |        10854|        0.6|
|Mother years in SYMPTOMS state  |        22837|        1.2|
|Mother years in TREATED state   |       193972|       10.2|


|state                          | mother_years| percentage|
|:------------------------------|------------:|----------:|
|Mother years in DEAD state     |       571371|       30.1|
|Mother years in HEALTHY state  |      1065348|       56.0|
|Mother years in INFECTED state |        30459|        1.6|
|Mother years in STOPPED state  |        10859|        0.6|
|Mother years in SYMPTOMS state |        28758|        1.5|
|Mother years in TREATED state  |       194018|       10.2|

![plot of chunk unnamed-chunk-22](figure/ZeroGestation/unnamed-chunk-22.png) 

![plot of chunk unnamed-chunk-23](figure/ZeroGestation/unnamed-chunk-23.png) 

### Schooling Outcomes

The number of children in the IN SCHOOL category in the figure below are the number of children who died during school years. The number of children in the NOT IN SCHOOL category in the figure below are the number of children who died before starting school. 

![plot of chunk unnamed-chunk-24](figure/ZeroGestation/unnamed-chunk-24.png) 


|school_status |  Value|
|:-------------|------:|
|NOT_IN_SCHOOL |  25227|
|IN_SCHOOL     |   1801|
|DROPOUT       | 160436|
|GRADUATED     | 111255|

### Abuse Outcomes


|metrics                 |   Value|
|:-----------------------|-------:|
|Susceptible Children    |  272526|
|Abused Children         |  148982|
|Susceptible Child Years | 1658309|
|Abused Child Years      |  242505|


| Number of abuse episodes|  Value|
|------------------------:|------:|
|                        0| 123544|
|                        1| 110603|
|                        2|  33881|
|                        3|   4280|
|                        4|    216|
|                        5|      2|
|                        6|      0|
|                        7|      0|
|                        8|      0|
|                        9|      0|
|                       10|      0|

### Depression Outcomes


|metrics                 |   Value|
|:-----------------------|-------:|
|Susceptible Children    |  272526|
|Depressed Children      |  178700|
|Susceptible Child Years | 1647972|
|Depressed Child Years   |  252843|


| Number of depressive episodes|  Value|
|-----------------------------:|------:|
|                             0|  93826|
|                             1| 105992|
|                             2|  55354|
|                             3|  15200|
|                             4|   2045|
|                             5|    108|
|                             6|      1|
|                             7|      0|
|                             8|      0|
|                             9|      0|
|                            10|      0|

### Condom Usage Outcomes


|metrics                               |  Value|
|:-------------------------------------|------:|
|Inconsistent Condom Usage Child Years | 905682|
|Consistent Condom Usage Child Years   | 722700|

### Debut Outcomes


|                                                       |         14|         15|         16|
|:------------------------------------------------------|----------:|----------:|----------:|
|Integer Age                                            |     13.000|     14.000|     15.000|
|Number of children who debuted                         |  19477.000|   5878.000|   7090.000|
|Number of Children who entered the state               | 272328.000| 272117.000| 271863.000|
|Number of sexually active Child years spent in state   |   9733.371|  22409.625|  28857.219|
|Number of sexually inactive Child years spent in state | 262483.085| 249572.512| 242833.100|
|Sexually active state entrace rate                     |      0.074|      0.024|      0.029|
|Total number of Child years spent in state             | 272216.456| 271982.137| 271690.319|

shut down


```
## 
## 
## |metrics                               |  Value|
## |:-------------------------------------|------:|
## |Inconsistent Condom Usage Child Years | 905682|
## |Consistent Condom Usage Child Years   | 722700|
```

```
## Using Value as value column: use value.var to override.
```



