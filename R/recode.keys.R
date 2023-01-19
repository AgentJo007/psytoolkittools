#' Recode Keys
#'
#' @param vector A vector of key values
#' @param keys A vector of keys. Those keys have to be in the same order than
#' in your experiment.
#'
#' @return numeric
#' 
#' @export
#' @examples
recode.keys = function(vector, keys){
  
  for(v in c(1:length(vector))){
    for(i in c(1:length(keys))){
      if(v == i){
        vector[v] = keys[i]
      }
    }
  }
  
  
  return(vector)
}
