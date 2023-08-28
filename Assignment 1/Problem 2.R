##### PROBLEM 2 ################################################################



fact = function(n){
  if(n==0 || n==1)
    return(1)
  return(n*fact(n-1))
}

fact_6 = fact(6); fact_6
fact_13 = fact(13); fact_13
fact_37 = fact(37); fact_37
