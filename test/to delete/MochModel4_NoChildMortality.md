# Scenario Report




## Model Version: 49
## Scenario: NoChildMortality

```
## [1] "Scenario Label"
```

```
## [1] "Immortal children"
```

```
## [1] "Scenario Notes"
```

```
## [1] "No mortality for children"                                                      
## [2] " Substitude: 'MortalityChildMultiplier = 1' with 'MortalityChildMultiplier = 0'"
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

![plot of chunk unnamed-chunk-7](figure/NoChildMortality/unnamed-chunk-7.png) 

Plot of the total time spent in the detailed states that track mothers disease course.

![plot of chunk unnamed-chunk-8](figure/NoChildMortality/unnamed-chunk-8.png) 

### Mother Survival

#### General Notes

The mortality of the the treated mothers is unrealistic

If there is no mortality in the scenario for the population the plot is for then the plot cannot be produced.

#### Survival of all Mothers


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-9](figure/NoChildMortality/unnamed-chunk-9.png) 

#### Survival of Mother who never became infected


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-10](figure/NoChildMortality/unnamed-chunk-10.png) 

#### Survival of Mother who became infected


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-11](figure/NoChildMortality/unnamed-chunk-11.png) 

#### Survival of Mother who became treated


```
## Using Value as value column: use value.var to override.
```

![plot of chunk unnamed-chunk-12](figure/NoChildMortality/unnamed-chunk-12.png) 

### Number of children per mother

![plot of chunk unnamed-chunk-13](figure/NoChildMortality/unnamed-chunk-13.png) 

### Age of mothers at birth of children

![plot of chunk unnamed-chunk-14](figure/NoChildMortality/unnamed-chunk-14.png) 

## Child Model

### Gender Ratio

![plot of chunk unnamed-chunk-15](figure/NoChildMortality/unnamed-chunk-15.png) 

### State Membership

#### All Ages


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DEAD state      |     10398565|       55.2|
|Mother years in DIAGNOSED state |        74564|        0.4|
|Mother years in DIAGSYMP state  |        23348|        0.1|
|Mother years in HEALTHY state   |      7126911|       37.9|
|Mother years in INFECTED state  |       227514|        1.2|
|Mother years in STOPPED state   |        42888|        0.2|
|Mother years in SYMPTOMS state  |       132591|        0.7|
|Mother years in TREATED state   |       802810|        4.3|


|state                          | mother_years| percentage|
|:------------------------------|------------:|----------:|
|Mother years in DEAD state     |     10398565|       55.2|
|Mother years in HEALTHY state  |      7126911|       37.9|
|Mother years in INFECTED state |       299771|        1.6|
|Mother years in STOPPED state  |        42888|        0.2|
|Mother years in SYMPTOMS state |       158246|        0.8|
|Mother years in TREATED state  |       802810|        4.3|

#### Below 18 (inclusive)


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DEAD state      |       862187|       17.3|
|Mother years in DIAGNOSED state |        72984|        1.5|
|Mother years in DIAGSYMP state  |        21527|        0.4|
|Mother years in HEALTHY state   |      3133124|       62.8|
|Mother years in INFECTED state  |       222907|        4.5|
|Mother years in STOPPED state   |        26780|        0.5|
|Mother years in SYMPTOMS state  |       127474|        2.6|
|Mother years in TREATED state   |       519947|       10.4|


|state                          | mother_years| percentage|
|:------------------------------|------------:|----------:|
|Mother years in DEAD state     |       862187|       17.3|
|Mother years in HEALTHY state  |      3133124|       62.8|
|Mother years in INFECTED state |       293601|        5.9|
|Mother years in STOPPED state  |        26780|        0.5|
|Mother years in SYMPTOMS state |       151291|        3.0|
|Mother years in TREATED state  |       519947|       10.4|

#### Between 12 and 18 (inclusive)


|state                           | mother_years| percentage|
|:-------------------------------|------------:|----------:|
|Mother years in DEAD state      |       509936|       27.8|
|Mother years in DIAGNOSED state |         8406|        0.5|
|Mother years in DIAGSYMP state  |         5097|        0.3|
|Mother years in HEALTHY state   |      1080798|       58.8|
|Mother years in INFECTED state  |        21225|        1.2|
|Mother years in STOPPED state   |         9746|        0.5|
|Mother years in SYMPTOMS state  |        21486|        1.2|
|Mother years in TREATED state   |       180596|        9.8|


|state                          | mother_years| percentage|
|:------------------------------|------------:|----------:|
|Mother years in DEAD state     |       509936|       27.8|
|Mother years in HEALTHY state  |      1080798|       58.8|
|Mother years in INFECTED state |        29397|        1.6|
|Mother years in STOPPED state  |         9746|        0.5|
|Mother years in SYMPTOMS state |        26817|        1.5|
|Mother years in TREATED state  |       180596|        9.8|

![plot of chunk unnamed-chunk-22](figure/NoChildMortality/unnamed-chunk-22.png) 

![plot of chunk unnamed-chunk-23](figure/NoChildMortality/unnamed-chunk-23.png) 

### Schooling Outcomes

The number of children in the IN SCHOOL category in the figure below are the number of children who died during school years. The number of children in the NOT IN SCHOOL category in the figure below are the number of children who died before starting school. 

![plot of chunk unnamed-chunk-24](figure/NoChildMortality/unnamed-chunk-24.png) 


|school_status |  Value|
|:-------------|------:|
|NOT_IN_SCHOOL |      0|
|IN_SCHOOL     |      0|
|DROPOUT       | 134925|
|GRADUATED     | 127545|

### Abuse Outcomes


|metrics                 |   Value|
|:-----------------------|-------:|
|Susceptible Children    |  262470|
|Abused Children         |  143576|
|Susceptible Child Years | 1603543|
|Abused Child Years      |  233747|


| Number of abuse episodes|  Value|
|------------------------:|------:|
|                        0| 118894|
|                        1| 106631|
|                        2|  32591|
|                        3|   4166|
|                        4|    185|
|                        5|      3|
|                        6|      0|
|                        7|      0|
|                        8|      0|
|                        9|      0|
|                       10|      0|

### Depression Outcomes


|metrics                 |   Value|
|:-----------------------|-------:|
|Susceptible Children    |  262470|
|Depressed Children      |  171596|
|Susceptible Child Years | 1595176|
|Depressed Child Years   |  242114|


| Number of depressive episodes|  Value|
|-----------------------------:|------:|
|                             0|  90874|
|                             1| 102537|
|                             2|  52472|
|                             3|  14557|
|                             4|   1920|
|                             5|    110|
|                             6|      0|
|                             7|      0|
|                             8|      0|
|                             9|      0|
|                            10|      0|

### Condom Usage Outcomes


|metrics                               |  Value|
|:-------------------------------------|------:|
|Inconsistent Condom Usage Child Years | 877074|
|Consistent Condom Usage Child Years   | 697746|

### Debut Outcomes


|                                                       |         14|         15|         16|
|:------------------------------------------------------|----------:|----------:|----------:|
|Integer Age                                            |     13.000|     14.000|     15.000|
|Number of children who debuted                         |  18410.000|   5689.000|   6998.000|
|Number of Children who entered the state               | 262470.000| 262470.000| 262470.000|
|Number of sexually active Child years spent in state   |   9200.047|  21258.478|  27624.258|
|Number of sexually inactive Child years spent in state | 253269.953| 241211.522| 234845.742|
|Sexually active state entrace rate                     |      0.073|      0.024|      0.030|
|Total number of Child years spent in state             | 262470.000| 262470.000| 262470.000|

shut down


```
## 
## 
## |metrics                               |  Value|
## |:-------------------------------------|------:|
## |Inconsistent Condom Usage Child Years | 877074|
## |Consistent Condom Usage Child Years   | 697746|
```

```
## Using Value as value column: use value.var to override.
```



