# Scenario Report




## Model Version: 49
## Scenario: Base

```
## [1] "Scenario Label"
```

```
## character(0)
```

```
## [1] "Scenario Notes"
```

```
## Error: subscript out of bounds
```

## Mother Model

### Population Stats


There are 100000 Mothers in this scenario.

There are 273624 Children in this scenario.

### State Transitions

A table of the number of mothers who entered each of the different states.


|state                               | entrances| percentage|
|:-----------------------------------|---------:|----------:|
|Mother entrances in DIAGNOSED state |      8123|        8.1|
|Mother entrances in DIAGSYMP state  |     33159|       33.2|
|Mother entrances in HEALTHY state   |         0|        0.0|
|Mother entrances in INFECTED state  |     39992|       40.0|
|Mother entrances in STOPPED state   |     11420|       11.4|
|Mother entrances in SYMPTOMS state  |     31519|       31.5|
|Mother entrances in TREATED state   |     28017|       28.0|

### State Membership

The total time spent by mothers in the various states.


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DIAGNOSED state |        32002|        0.6|
|Mother years in DIAGSYMP state  |        14168|        0.3|
|Mother years in HEALTHY state   |      4497170|       85.2|
|Mother years in INFECTED state  |       282811|        5.4|
|Mother years in STOPPED state   |        18729|        0.4|
|Mother years in SYMPTOMS state  |        69539|        1.3|
|Mother years in TREATED state   |       366468|        6.9|

Plot of the total time spent in the states involved in scheduling the death of a mother.

![plot of chunk unnamed-chunk-7](figure/Base/unnamed-chunk-7.png) 

Plot of the total time spent in the detailed states that track mothers disease course.

![plot of chunk unnamed-chunk-8](figure/Base/unnamed-chunk-8.png) 

### Mother Survival

#### General Notes

The mortality of the the treated mothers is unrealistic

If there is no mortality in the scenario for the population the plot is for then the plot cannot be produced.

#### Survival of all Mothers


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-9](figure/Base/unnamed-chunk-9.png) 

#### Survival of Mother who never became infected


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-10](figure/Base/unnamed-chunk-10.png) 

#### Survival of Mother who became infected


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-11](figure/Base/unnamed-chunk-11.png) 

#### Survival of Mother who became treated


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-12](figure/Base/unnamed-chunk-12.png) 

### Number of children per mother

![plot of chunk unnamed-chunk-13](figure/Base/unnamed-chunk-13.png) 

### Age of mothers at birth of children

![plot of chunk unnamed-chunk-14](figure/Base/unnamed-chunk-14.png) 

## Child Model

### Gender Ratio

![plot of chunk unnamed-chunk-15](figure/Base/unnamed-chunk-15.png) 

### State Membership

#### All Ages


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DEAD state      |      7835730|       51.1|
|Mother years in DIAGNOSED state |        51552|        0.3|
|Mother years in DIAGSYMP state  |        18150|        0.1|
|Mother years in HEALTHY state   |      5914270|       38.6|
|Mother years in INFECTED state  |       350463|        2.3|
|Mother years in STOPPED state   |        55335|        0.4|
|Mother years in SYMPTOMS state  |       124747|        0.8|
|Mother years in TREATED state   |       983520|        6.4|


|state                          | mother_years| percentage|
|:------------------------------|------------:|----------:|
|Mother years in DEAD state     |      7835995|       51.1|
|Mother years in HEALTHY state  |      5915226|       38.6|
|Mother years in INFECTED state |       399364|        2.6|
|Mother years in STOPPED state  |        55349|        0.4|
|Mother years in SYMPTOMS state |       144018|        0.9|
|Mother years in TREATED state  |       983815|        6.4|

#### Below 18 (inclusive)


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DEAD state      |       794650|       16.7|
|Mother years in DIAGNOSED state |        49426|        1.0|
|Mother years in DIAGSYMP state  |        17220|        0.4|
|Mother years in HEALTHY state   |      2792220|       58.6|
|Mother years in INFECTED state  |       338026|        7.1|
|Mother years in STOPPED state   |        33132|        0.7|
|Mother years in SYMPTOMS state  |       119900|        2.5|
|Mother years in TREATED state   |       622924|       13.1|


|state                          | mother_years| percentage|
|:------------------------------|------------:|----------:|
|Mother years in DEAD state     |       794891|       16.7|
|Mother years in HEALTHY state  |      2793165|       58.6|
|Mother years in INFECTED state |       384815|        8.1|
|Mother years in STOPPED state  |        33147|        0.7|
|Mother years in SYMPTOMS state |       138267|        2.9|
|Mother years in TREATED state  |       623214|       13.1|

#### Between 12 and 18 (inclusive)


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DEAD state      |       480256|       27.6|
|Mother years in DIAGNOSED state |         7632|        0.4|
|Mother years in DIAGSYMP state  |         3388|        0.2|
|Mother years in HEALTHY state   |       942636|       54.1|
|Mother years in INFECTED state  |        44457|        2.6|
|Mother years in STOPPED state   |        12982|        0.7|
|Mother years in SYMPTOMS state  |        19993|        1.1|
|Mother years in TREATED state   |       229706|       13.2|


|state                          | mother_years| percentage|
|:------------------------------|------------:|----------:|
|Mother years in DEAD state     |       480347|       27.6|
|Mother years in HEALTHY state  |       942745|       54.1|
|Mother years in INFECTED state |        51888|        3.0|
|Mother years in STOPPED state  |        12985|        0.7|
|Mother years in SYMPTOMS state |        23315|        1.3|
|Mother years in TREATED state  |       229772|       13.2|

![plot of chunk unnamed-chunk-22](figure/Base/unnamed-chunk-22.png) 

![plot of chunk unnamed-chunk-23](figure/Base/unnamed-chunk-23.png) 

### Schooling Outcomes

The number of children in the IN SCHOOL category in the figure below are the number of children who died during school years. The number of children in the NOT IN SCHOOL category in the figure below are the number of children who died before starting school. 

![plot of chunk unnamed-chunk-24](figure/Base/unnamed-chunk-24.png) 


|school_status |  Value|
|:-------------|------:|
|NOT_IN_SCHOOL |  23024|
|IN_SCHOOL     |   1963|
|DROPOUT       | 105991|
|GRADUATED     | 142646|

### Abuse Outcomes


|metrics                 |   Value|
|:-----------------------|-------:|
|Susceptible Children    |  249619|
|Abused Children         |  137394|
|Susceptible Child Years | 1159493|
|Abused Child Years      |  581558|


| Number of abuse episodes|  Value|
|------------------------:|------:|
|                        0| 112225|
|                        1| 137394|
|                        2|      0|
|                        3|      0|
|                        4|      0|
|                        5|      0|
|                        6|      0|
|                        7|      0|
|                        8|      0|
|                        9|      0|
|                       10|      0|

### Depression Outcomes


|metrics                 |   Value|
|:-----------------------|-------:|
|Susceptible Children    |  249619|
|Depressed Children      |  121657|
|Susceptible Child Years | 1275746|
|Depressed Child Years   |  465304|


| Number of depressive episodes|  Value|
|-----------------------------:|------:|
|                             0| 127962|
|                             1| 121657|
|                             2|      0|
|                             3|      0|
|                             4|      0|
|                             5|      0|
|                             6|      0|
|                             7|      0|
|                             8|      0|
|                             9|      0|
|                            10|      0|

### Condom Usage Outcomes


|metrics                               |  Value|
|:-------------------------------------|------:|
|Inconsistent Condom Usage Child Years | 882565|
|Consistent Condom Usage Child Years   | 608952|

### Debut Outcomes


|                                                       |         14|         15|         16|
|:------------------------------------------------------|----------:|----------:|----------:|
|Integer Age                                            |     13.000|     14.000|     15.000|
|Number of children who debuted                         |  18146.000|   5606.000|   7293.000|
|Number of Children who entered the state               | 249440.000| 249240.000| 249008.000|
|Number of sexually active Child years spent in state   |   8937.999|  20906.554|  27321.735|
|Number of sexually inactive Child years spent in state | 240397.208| 228210.898| 221531.615|
|Sexually active state entrace rate                     |      0.075|      0.025|      0.033|
|Total number of Child years spent in state             | 249335.207| 249117.452| 248853.350|

shut down


```
## 
## 
## |metrics                               |  Value|
## |:-------------------------------------|------:|
## |Inconsistent Condom Usage Child Years | 882565|
## |Consistent Condom Usage Child Years   | 608952|
```

```
## Using Value as value column: use value.var to override.
```



