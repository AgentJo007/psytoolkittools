#' Load Experiment Data
#' @description This functions loads experiment data from a Psytoolkit experiment
#' Therefore, a vector of filenames and a vector of labels which represents the
#' structure of the experiment file have to be provided
#' @param experiment_file_names A vector of experiment filenames 
#' @param label_structur A vector of labels that represents the structur of the saved experiment value
#' @param merge_dataframe The result of this function can be directly added to a existing dataframe (e.g. survey data).
#' The default value is NA.
#'
#' @return data.frame
#' @export
#'
#' @examples
load_experiment_data = function(experiment_file_names,label_structure, merge_dataframe = NA){
  
  d = data.frame()
  
  for(i in c(1:length(experiment_file_names))){
    data_list = .read_experiment_file(experiment_file_names[i])
    
    d = rbind(d, data_list)
  }
  
  d = setNames(d, label_structure)
  
  
  
  ### add to existing dataframe?
  if(is.na(merge_dataframe)){
    return(d)
  }
  else{
    return(cbind(merge_dataframe, d))
  }

}

.read_experiment_file = function(filename){
  experiment_data = read.csv(filename, sep =" ", header = FALSE)
  
  
  data_vector = c()
  
  for(row in c(1:nrow(experiment_data))){
    for(entry in c(1:length(experiment_data[row, ]))){
      
      e = experiment_data[row, entry]
      if(!is.na(e)){
        data_vector = append(data_vector, e)
      }
    }
  }
  
  return(data_vector)
}
