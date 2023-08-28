##### PROBLEM 10 ###############################################################



contains_element <- function(vector, element) {
  for (item in vector) {
    if (item == element) {
      return(TRUE)  # Element found in the vector
    }
  }
  return(FALSE)     # Element not found in the vector
}


X <-  c(4, 8, 10, 5, 6, 12)
element_to_check <- 5

if ( contains_element( X, element_to_check ) ) {
  print(paste("The vector contains ", element_to_check))
} else {
  print(paste("The vector does not contain ", element_to_check))
}
