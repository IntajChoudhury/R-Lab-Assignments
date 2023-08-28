##### PROBLEM 6 ################################################################



gammaFunc <- function(num){
  if(num == 1){
    return(1)
  }
  else if(num == 0.5){
    return(sqrt(3.14159))
  }
  else{
    return((num-1)*gammaFunc(num-1))
  }
}

gammaFunc(8)
gamma(8)

gammaFunc(2)
gamma(2)

gammaFunc(25)
gamma(25)

gammaFunc(3/2)
gamma(3/2)