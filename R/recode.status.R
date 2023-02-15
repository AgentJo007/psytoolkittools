
#' Recode Status
#' @description This function recodes the status variable to custom values.
#' @param status_vector Numeric vector of statuses. This vector will be recoded.
#' @param correct Numeric value which indicates a correct response.
#' @param error Numeric value which indicates an error.
#' @param timeout Numeric value which indicates a timeout.
#'
#' @return numeric vector
#' @export
#'
#' @examples
recode.status = function(status_vector, correct = 1, error = 0, timeout = NA){
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