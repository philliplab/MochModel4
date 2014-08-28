# Scenario Report


```r
source('MochModel4Tests_helpers.R')
rerun_models <- FALSE
rerun_models <- TRUE
options(scipen=999)
library(modgenTester)
library(knitr)
library(plyr)
library(survival)
library(reshape2)
library(survMisc)
library(gridExtra)
library(digest)
odbcCloseAll()
opts_chunk$set(echo = FALSE)
opts_chunk$set(fig.height = 10)
opts_chunk$set(fig.width = 10)
sd <- "C:/Users/Administrator/Documents/Visual Studio 2010/Projects/MochModel4"
td <- "C:/Users/Administrator/Documents/Visual Studio 2010/Projects/MochModel4/test"
setwd(td)

scenario_name <- gsub(".scex", "", scenario$scex)
all_results <- list_all_results(td)
result <- all_results[[grep(scenario_name, all_results)]]
db_channel <- access_database(result)

ModelVersion <- as.data.frame(new_RTable("ModelVersion", db_channel))$Value[1]
print(ModelVersion)
```

```
## [1] 46
```
