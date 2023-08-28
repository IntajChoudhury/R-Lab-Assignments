##### PROBLEM 1 ################################################################



A = matrix(  c(3,-2,1,-1,4,-2), nrow=2, byrow=TRUE ); A
B = matrix(  c(-7,4,9,5,2,-1), nrow=3, byrow=TRUE ); B


# (i) Matrix multiplication AB

mat_mul <- function( X, Y){
  Z = matrix(c(0,0,0,0), nrow =2, ncol = 2)
  for(i in 1:2){  ## traversing rows in matrix A
    for(j in 1:2){ ## traversing columns in matrix B
      for(k in 1:3){ ## mat mul of 2x3 n 3x2 so k = 3
        Z[i,j] = Z[i,j] + X[i,k]*Y[k,j]
      }
    }
  }
  Z
}

AB = mat_mul(A,B); AB


# (ii) To find (AB)^T and (AB)^-1

mat_transpose <- function(X){
  temp = 0
  for(i in 1:2){
    for(j in i:2){
      temp = X[i,j]
      X[i,j] = X[j,i]
      X[j,i] = temp
    }
  }
  X
}

mat_inverse <- function(X){
  adj_X = matrix(c( X[2,2], -X[2,1], -X[1,2], X[1,1]), nrow = 2)
  det_X = X[1,1]*X[2,2]-X[1,2]*X[2,1]
  X_inverse = adj_X/det_X
}

AB_t = mat_transpose(AB); AB_t
AB_i = mat_inverse(AB); AB_i


# (iii) Mean and Standard Deviation for each row n col of A, B, AB, AB_t

mean_n_sd <- function(vec){
  n = length(vec)
  meanVec = sum(vec)/n
  print("Mean is : ")
  print(meanVec)
  sd = sqrt((sum((vec-meanVec)**2))/(n-1))
  print("Standard Deviation is : ")
  print(sd)
}

mean_n_sd(A[1,])
mean_n_sd(A[2,])

mean_n_sd(A[,1])
mean_n_sd(A[,2])
mean_n_sd(A[,3])

mean_n_sd(B[1,])
mean_n_sd(B[2,])
mean_n_sd(B[3,])

mean_n_sd(B[,1])
mean_n_sd(B[,2])

mean_n_sd(AB[1,])
mean_n_sd(AB[2,])

mean_n_sd(AB[,1])
mean_n_sd(AB[,2])

mean_n_sd(AB_t[1,])
mean_n_sd(AB_t[2,])

mean_n_sd(AB_t[,1])
mean_n_sd(AB_t[,2])

mean_n_sd(AB_i[1,])
mean_n_sd(AB_i[2,])

mean_n_sd(AB_i[,1])
mean_n_sd(AB_i[,2])


# (iv) row sum n col sum of matrix A n B

sum <- function(vec) {
  ans = 0
  for(val in vec)
    ans = ans + val  
  return(ans)
}

A_sum_row_1 = sum(A[1,]); A_sum_row_1
A_sum_row_2 = sum(A[2,]); A_sum_row_2
A_sum_col_1 = sum(A[,1]); A_sum_col_1
A_sum_col_2 = sum(A[,2]); A_sum_col_2
A_sum_col_3 = sum(A[,3]); A_sum_col_3

B_sum_row_1 = sum(B[1,]); B_sum_row_1
B_sum_row_2 = sum(B[2,]); B_sum_row_2
B_sum_row_3 = sum(B[3,]); B_sum_row_3
B_sum_col_1 = sum(B[,1]); B_sum_col_1
B_sum_col_2 = sum(B[,2]); B_sum_col_2
