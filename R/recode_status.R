
#' Recode Status
#'
#' @param status_vector 
#' @param correct 
#' @param error 
#' @param timeout 
#'
#' @return numeric vector
#' @export
#'
#' @examples
recode_status = function(status_vector, correct = 1, error = 0, timeout = NA){
  return_vector = c()
  
  for(i in c(1:length(status_vector))){
    x = NA
    if(status_vector[i] == 1){
      x = correct
    }
    
    if(status_vector[i] == 2){
      x = error
    }
    
    if(status_vector[i] == 3){
      x = timeout
    }
    
    
    #append
    return_vector = append(return_vector, x)
  }
  
  return(return_vector)
}