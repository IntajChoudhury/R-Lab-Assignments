##### PROBLEM 7 ################################################################



# Function to calculate mean
find_mean <- function(data) {
  return( sum(data) / length(data))
}

# Function to calculate median
find_median <- function(data) {
  sorted_data <- sort(data)
  n <- length(sorted_data)
  
  if (n %% 2 == 0) {
    median_value <- (sorted_data[n / 2] + sorted_data[(n / 2) + 1]) / 2
  } else {
    median_value <- sorted_data[(n + 1) / 2]
  }
  
  return(median_value)
}


arr <- c(5, 10, 6, 8, 12, 16, 20, 10, 16, 15)

mean_value <- find_mean(arr)
print(paste("Mean:", mean_value))

median_value <- find_median(arr)
print(paste("Median:", median_value))
