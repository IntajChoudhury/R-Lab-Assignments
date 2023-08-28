##### PROBLEM 3 ################################################################



minimum  <- function(arr){
  mini = .Machine$integer.max
  for(val in arr){
    if(mini > val){
      mini = val
    }
  }
  return(mini)
}

maximum = function(arr){
  maxi = -.Machine$integer.max
  for(val in arr){
    if(val > maxi)
      maxi = val
  }
  return(maxi)
}

arr = c( -4, 44.7, -2, 40, 54, 1, -3, 4)

min_element = minimum(arr); min_element
max_element = maximum(arr); max_element
