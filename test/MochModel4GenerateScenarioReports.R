library(knitr) # required for knitting from rmd to md
library(markdown) # required for md to html 
library(modgenTester)
library(knitr)
library(plyr)
library(survival)
library(reshape2)
library(survMisc)
library(gridExtra)
library(digest)
library(foreach)
library(doSNOW)
source('MochModel4Tests_helpers.R')

generate_report <- function(scenario) {
  scenario_name <- gsub(".scex$", "", scenario$scex)
  knit('MochModel4ScenarioReport.Rmd', paste0('aaaMochModel4.md')) # creates md file
  knit('MochModel4ScenarioReport.Rmd', paste0('MochModel4_', scenario_name, '.md')) # creates md file
  markdownToHTML(paste0('MochModel4_', scenario_name, '.md'), 
                 paste0('MochModel4_', scenario_name, '.html')) # creates html file
}

odbcCloseAll()

sd <- "C:/Users/Administrator/Documents/Visual Studio 2010/Projects/MochModel4"
td <- "C:/Users/Administrator/Documents/Visual Studio 2010/Projects/MochModel4/test"
setwd(td)

available_scenarios <- list_all_scenarios(td, FALSE)

ptm <- proc.time()
cl <- makeCluster(6)
clusterExport(cl, 'td')
clusterExport(cl, 'generate_report')
clusterCall(cl, function() {
  library(modgenTester)
  library(knitr)
  library(markdown)
  setwd(td)
})
registerDoSNOW(cl)

foreach(scenario = available_scenarios) %dopar% {
  generate_report(scenario)
}

running_time <- proc.time() - ptm

print("Running Time")
print(running_time)
print("Number of Reports Generated")
print(length(available_scenarios))


