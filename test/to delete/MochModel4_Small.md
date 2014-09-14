# Scenario Report




## Model Version: 49
## Scenario: Small

```
## [1] "Scenario Label"
```

```
## [1] "Small - 1000 Mothers"
```

```
## [1] "Scenario Notes"
```

```
## [1] "A scenario with only 1000 mothers to see if anything breaks when the numbers are smaller." 
## [2] " Substitude: 'int\tStartingPopulationSize = 10000' with 'int\tStartingPopulationSize = 1000'"
```

## Mother Model

### Population Stats


There are 100000 Mothers in this scenario.

There are 262470 Children in this scenario.

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

![plot of chunk unnamed-chunk-7](figure/Small/unnamed-chunk-7.png) 

Plot of the total time spent in the detailed states that track mothers disease course.

![plot of chunk unnamed-chunk-8](figure/Small/unnamed-chunk-8.png) 

### Mother Survival

#### General Notes

The mortality of the the treated mothers is unrealistic

If there is no mortality in the scenario for the population the plot is for then the plot cannot be produced.

#### Survival of all Mothers


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-9](figure/Small/unnamed-chunk-9.png) 

#### Survival of Mother who never became infected


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-10](figure/Small/unnamed-chunk-10.png) 

#### Survival of Mother who became infected


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-11](figure/Small/unnamed-chunk-11.png) 

#### Survival of Mother who became treated


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-12](figure/Small/unnamed-chunk-12.png) 

### Number of children per mother

![plot of chunk unnamed-chunk-13](figure/Small/unnamed-chunk-13.png) 

### Age of mothers at birth of children

![plot of chunk unnamed-chunk-14](figure/Small/unnamed-chunk-14.png) 

## Child Model

### Gender Ratio

![plot of chunk unnamed-chunk-15](figure/Small/unnamed-chunk-15.png) 

### State Membership

#### All Ages


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DEAD state      |      7595584|       51.5|
|Mother years in DIAGNOSED state |        71279|        0.5|
|Mother years in DIAGSYMP state  |        23268|        0.2|
|Mother years in HEALTHY state   |      5931646|       40.3|
|Mother years in INFECTED state  |       214174|        1.5|
|Mother years in STOPPED state   |        41713|        0.3|
|Mother years in SYMPTOMS state  |       125114|        0.8|
|Mother years in TREATED state   |       733499|        5.0|


|state                          | mother_years| percentage|
|:------------------------------|------------:|----------:|
|Mother years in DEAD state     |      7595953|       51.5|
|Mother years in HEALTHY state  |      5932710|       40.3|
|Mother years in INFECTED state |       281814|        1.9|
|Mother years in STOPPED state  |        41719|        0.3|
|Mother years in SYMPTOMS state |       150316|        1.0|
|Mother years in TREATED state  |       733765|        5.0|

#### Below 18 (inclusive)


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DEAD state      |       841939|       18.4|
|Mother years in DIAGNOSED state |        69841|        1.5|
|Mother years in DIAGSYMP state  |        21402|        0.5|
|Mother years in HEALTHY state   |      2797307|       61.2|
|Mother years in INFECTED state  |       209816|        4.6|
|Mother years in STOPPED state   |        26668|        0.6|
|Mother years in SYMPTOMS state  |       120470|        2.6|
|Mother years in TREATED state   |       486087|       10.6|


|state                          | mother_years| percentage|
|:------------------------------|------------:|----------:|
|Mother years in DEAD state     |       842271|       18.4|
|Mother years in HEALTHY state  |      2798370|       61.2|
|Mother years in INFECTED state |       276039|        6.0|
|Mother years in STOPPED state  |        26673|        0.6|
|Mother years in SYMPTOMS state |       143825|        3.1|
|Mother years in TREATED state  |       486351|       10.6|

#### Between 12 and 18 (inclusive)


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DEAD state      |       494171|       29.6|
|Mother years in DIAGNOSED state |         7979|        0.5|
|Mother years in DIAGSYMP state  |         5145|        0.3|
|Mother years in HEALTHY state   |       945171|       56.6|
|Mother years in INFECTED state  |        20014|        1.2|
|Mother years in STOPPED state   |         9667|        0.6|
|Mother years in SYMPTOMS state  |        20075|        1.2|
|Mother years in TREATED state   |       167978|       10.1|


|state                          | mother_years| percentage|
|:------------------------------|------------:|----------:|
|Mother years in DEAD state     |       494261|       29.6|
|Mother years in HEALTHY state  |       945216|       56.6|
|Mother years in INFECTED state |        27667|        1.7|
|Mother years in STOPPED state  |         9668|        0.6|
|Mother years in SYMPTOMS state |        25375|        1.5|
|Mother years in TREATED state  |       168014|       10.1|

![plot of chunk unnamed-chunk-22](figure/Small/unnamed-chunk-22.png) 

![plot of chunk unnamed-chunk-23](figure/Small/unnamed-chunk-23.png) 

### Schooling Outcomes

The number of children in the IN SCHOOL category in the figure below are the number of children who died during school years. The number of children in the NOT IN SCHOOL category in the figure below are the number of children who died before starting school. 

![plot of chunk unnamed-chunk-24](figure/Small/unnamed-chunk-24.png) 


|school_status |  Value|
|:-------------|------:|
|NOT_IN_SCHOOL |  22064|
|IN_SCHOOL     |   1726|
|DROPOUT       | 123692|
|GRADUATED     | 114988|

### Abuse Outcomes


|metrics                 |   Value|
|:-----------------------|-------:|
|Susceptible Children    |  239465|
|Abused Children         |  131104|
|Susceptible Child Years | 1456334|
|Abused Child Years      |  213866|


| Number of abuse episodes|  Value|
|------------------------:|------:|
|                        0| 108361|
|                        1|  97289|
|                        2|  29886|
|                        3|   3746|
|                        4|    179|
|                        5|      4|
|                        6|      0|
|                        7|      0|
|                        8|      0|
|                        9|      0|
|                       10|      0|

### Depression Outcomes


|metrics                 |   Value|
|:-----------------------|-------:|
|Susceptible Children    |  239465|
|Depressed Children      |  156619|
|Susceptible Child Years | 1448573|
|Depressed Child Years   |  221627|


| Number of depressive episodes| Value|
|-----------------------------:|-----:|
|                             0| 82846|
|                             1| 93227|
|                             2| 48011|
|                             3| 13412|
|                             4|  1888|
|                             5|    80|
|                             6|     1|
|                             7|     0|
|                             8|     0|
|                             9|     0|
|                            10|     0|

### Condom Usage Outcomes


|metrics                               |  Value|
|:-------------------------------------|------:|
|Inconsistent Condom Usage Child Years | 796752|
|Consistent Condom Usage Child Years   | 634067|

### Debut Outcomes


|                                                       |         14|         15|         16|
|:------------------------------------------------------|----------:|----------:|----------:|
|Integer Age                                            |     13.000|     14.000|     15.000|
|Number of children who debuted                         |  16902.000|   5046.000|   6279.000|
|Number of Children who entered the state               | 239292.000| 239097.000| 238873.000|
|Number of sexually active Child years spent in state   |   8479.486|  19407.464|  25075.771|
|Number of sexually inactive Child years spent in state | 230710.855| 219571.928| 213649.072|
|Sexually active state entrace rate                     |      0.073|      0.023|      0.029|
|Total number of Child years spent in state             | 239190.341| 238979.391| 238724.843|

shut down


```
## 
## 
## |metrics                               |  Value|
## |:-------------------------------------|------:|
## |Inconsistent Condom Usage Child Years | 796752|
## |Consistent Condom Usage Child Years   | 634067|
```

```
## Using Value as value column: use value.var to override.
```



