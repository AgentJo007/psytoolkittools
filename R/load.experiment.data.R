#' Load Experiment Data
#' @description This functions loads experiment data from a Psytoolkit experiment
#' Therefore, a vector of filenames and a vector of labels which represents the
#' structure of the experiment file have to be provided
#' @param experiment.file.names A vector of experiment filenames 
#' @param label.structur A vector of labels that represents the structur of the saved experiment value
#' @param merge.dataframe The result of this function can be directly added to a existing dataframe (e.g. survey data).
#' The default value is NA.
#'
#' @return data.frame
#' @export
#'
#' @examples
load.experiment.data = function(experiment.file.names,label.structure, merge.dataframe = NA){
  
  d = data.frame()
  
  for(i in c(1:length(experiment.file.names))){
    data.list = .read.experiment.file(experiment.file.names[i])
    
    d = rbind(d, data.list)
  }
  
  d = setNames(d, label.structure)
  
  
  
  ### add to existing dataframe?
  if(is.na(merge.dataframe)){
    return(d)
  }
  else{
    return(cbind(merge.dataframe, d))
  }

}

.read.experiment.file = function(filename){
  experiment.data = read.csv(filename, sep =" ", header = FALSE)
  
  
  data.vector = c()
  
  for(row in c(1:nrow(experiment.data))){
    for(entry in c(1:length(experiment.data[row, ]))){
      
      e = experiment.data[row, entry]
      if(!is.na(e)){
        data.vector = append(data.vector, e)
      }
    }
  }
  
  return(data.vector)
}
