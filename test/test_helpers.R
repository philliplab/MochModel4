#' Adds a new test to the test_results list and prints output
#' @param test_results A list containing all the previously run tests
#' @param name The name of the new test
#' @param scenarios A character vector of the scenarios used in this test (optional)
#' @param result The result ot the current test (optional)
#' @param description A wordy description of the test (optional)
#' @export

new_test <- function(test_results, name, scenarios = NULL, result = NULL, description = NULL){
  anchor_link <- gsub(" ", "", name)
  test_results[[name]] <- list(name = name,
                               result = result,
                               scenarios = scenarios, 
                               anchor_link = anchor_link)
  cat(paste0('### <a name="', anchor_link,'"></a>', name, "\n\n"))
  cat(paste0("Scenario(s): ", scenarios, "\n\n"))
  cat(paste0(description, '\n\n'))
  cat(paste0("[To Summary Table](#summary_tab_link)  \n\n"))
  return(test_results)
}

#' Adds a result to an already existing entry in the list of all tests
#' @param test_results A list containing all the previously run tests
#' @param name The name of the test the result must be attached to
#' @param result The result ot the current test (optional)
#' @export

new_result <- function(test_results, name, result){
  test_results[[name]][['result']] <- result
  cat("  \n\n")
  cat(paste0("**Result: ", result, "**  \n\n"))
  cat('---\n\n')
  return(test_results)
}

#' Prints a table summary of all the tests 
#' @param test_results A list containing all the previously run tests
#' @export
print_test_results <- function(test_results){
  cat(paste0('### <a name="summary_tab_link"></a>Summary Table\n\n'))
  cat("|Name|Result|Scenarios|\n")
  cat("|:-:|:-:|:-:|\n")
  for (i in test_results){
    cat(paste0("|[", i$name, "](#", i$anchor_link, ")|", i$result, "|", paste(i$scenarios, collapse = ", "), " \n"))
  }
}

#' Returns the number of mothers that were created
#' @param db_channel The connection to the access database to use
#' @export

get_mother_population_size <- function(db_channel){
  DurationOfLife <- as.data.frame(new_RTable("MotherDurationOfLife", db_channel))
  return(subset(DurationOfLife, 
                metrics == "Population size", 
                select = 'Value')[1,1])
}

#' Returns all the ages at death for mothers based on certain criteria and modifiers
#' @param db_channel The connection to the access database to use
#' @param time_since The event from which the time to death must be tracked.
#'  Defaults to 'Birth'. Valid options are 'Birth' and Infection'.
#' @param status_at_death The death_schedule_state the mother was in when she died.
#'  Defaults to -1 to indicate the any status is allowed. 
#'  Valid options are -1 for 'any', 0 for 'mdsHEALTHY' and 1 for 'mdsINFECTED'
#' @param vdp_age_at_infection Restrict the selection to only subject with a specific 
#'  van der paal age category at infection. Defaults to -1 meaning that it should 
#'  not be used to filter the data.
#' @export

get_mother_mortality <- function(db_channel, time_since = 'Birth',
                                 status_at_death = -1, vdp_age_at_infection = -1){
  mdd <- as.data.frame(new_RTable("MotherDeathDetails", db_channel))[,1:3]
  mdd <- dcast(mdd, `split( actor_id, ACTOR_ID )` ~ metrics)
  if (status_at_death != -1){
    mdd <- subset(mdd, `Status at death` == status_at_death)
  }
  if (vdp_age_at_infection != -1){
    mdd <- subset(mdd, `Van der Paal Age category at infection` == vdp_age_at_infection)
  }
  if (time_since != 'Birth'){
    if (time_since == 'Infection'){
      mdd$`Age at Death` <- mdd$`Age at Death` - mdd$`Age at Infection`
    }
  }
  return(mdd$`Age at Death`)
}
