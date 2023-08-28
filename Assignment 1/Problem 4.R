##### PROBLEM 4 ################################################################



bubble_sort <- function(arr) {
  n <- length(arr)
  for (i in 1:(n - 1)) {
    swapped <- FALSE  # Initialize flag for swapping
    
    for (j in 1:(n - i)) {
      if (arr[j] > arr[j + 1]) {
        # Swap the elements
        temp <- arr[j]
        arr[j] <- arr[j + 1]
        arr[j + 1] <- temp
        swapped <- TRUE  # Set the flag
      }
    }
    
    # If no swaps happened in the inner loop, the array is sorted already
    if (!swapped) {
      break
    }
  }
  
  return(arr)
}

arr = c(-4, 44.7, -2, 40, 54, 1, -3, 4)
arr = bubble_sort(arr); arr
