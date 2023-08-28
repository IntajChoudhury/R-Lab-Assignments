##### PROBLEM 5 ################################################################



is_prime <- function(n) {
  if (n <= 1) {
    return(FALSE)  # Numbers less than or equal to 1 are not prime
  }
  
  for (i in 2:sqrt(n)) {
    if (n %% i == 0) {
      return(FALSE)  # If divisible by any number from 2 to sqrt(n), not prime
    }
  }
  
  return(TRUE)
}

n = 47
is_prime(n)

n2 = 8
is_prime(n2)