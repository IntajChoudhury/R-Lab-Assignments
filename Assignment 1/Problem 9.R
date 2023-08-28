##### PROBLEM 9 ################################################################



common_elements <- function(vector1, vector2) {
  common <- vector()
  
  for (a in vector1) {
    for (b in vector2) {
      if (a == b) {
        common <- append(common, a)
        break  # No need to continue checking once a common element is found
      }
    }
  }
  
  return(common)
}


X <- c(5,1,4,3)
Y <- c(2,4,6,10)

ans <- common_elements(X, Y)
print("Common element is:"); print(ans)
