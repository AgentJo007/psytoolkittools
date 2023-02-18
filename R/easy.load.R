#' Easy Load
#'
#' @param survey.path 
#' @param experiment.data 
#' @param experiment.file.names.vector 
#' @param experiment.files.structure 
#'
#' @return data.frame
#' @export
#'
#' @examples
#' @import "cli"
#' @importFrom "utils" "read.csv"
#' @import "glue"
easy.load = function(survey.path = NA, experiment.data = NA, experiment.file.names.vector = NA ,experiment.files.structure){
  
  cli::cli_h1("psytoolkittools: Easy Load")
  
  #check and load survey
  if(is.na(survey.path)){
    cli::cli_alert_info("Please type in the path to the survey data (.csv).")
    survey.path = readline(prompt = ">>>")
  }
  
  #load survey data
  survey_data = load_survey_data(survey.path)
  print(survey_data)
  
  #check experiment.data
  if(is.na(experiment.data)){
    cli::cli_alert_info("Please enter the experiment data directory.")
    experiment.data = readline(prompt = ">>>")
  }
  
  #check experiment.data.names vector
  if(is.na(experiment.file.names.vector)){
    head(survey_data)
    cli::cli_alert_info("Please enter the column which holds the experiment file names.")
    experiment.file.names.vector = readline(prompt = ">>>")
  }
  
  
  #merge experiment filenames
  experiment.file.names = glue("{experiment.data}/{experiment.file.names.vector}")
  
  #load experiment data
  ex_data = psytoolkittools::load.experiment.data(experiment.file.names, experiment.files.structure)
  
  #cbind
  survey_data = cbind(survey_data, ex_data)
  
  return(survey_data)

}



###Helper Functions
#load survey data from csv file
load_survey_data = function(survey_path){
  result = read.csv(survey_path)
  
  return(result)
}

