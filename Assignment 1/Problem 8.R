##### PROBLEM 8 ################################################################



# Function to generate Fibonacci sequence till n
generate_fibonacci <- function(n) {
  fibonacci = numeric(n)
  fibonacci[1] <- 0
  fibonacci[2] <- 1
  
  for (i in 3:n) {
    fibonacci[i] <- fibonacci[i - 1] + fibonacci[i - 2]
  }
  
  return(fibonacci)
}

# Generating and printing the first 10 Fibonacci numbers
n <- 10
fibonacci_sequence <- generate_fibonacci(n)
print("First 10 Fibonacci numbers are:"); fibonacci_sequence
