# Question 1
# Implement Simpson's 1/3rd rule

# Implement Integral function
f <- function(x){
  return (x/(1+x))
}

n <- 10
a <- 0
b <- 5
exact_integral <- 4.22

simpson_1_3_rd <- function(f, n, a, b)
{
  # Base Case
  if (n %% 2 != 0)
  {
    stop('n must be an even number')
  }
  h <- (b-a)/n # Width of the class interval
  x <- seq(a, b, by=h) # Generate seq
  
  even_sum <- sum(f(x[c(2:(n-2)) * 2]))
  odd_sum <- sum(f(x[c(1:(n-1)) * 2 + 1]))
  
  print(odd_sum)
  print(even_sum)
  
  res <- (1/3)*h*(f(a) + f(b) + 4*odd_sum + 2*even_sum)
  
  return (res)
}

result <- simpson_1_3_rd(f, n, a, b)
print(result)

# Calculate Relative Error for a finer value of n = 20
n_finer <- 20
result_finer <- simpson_1_3_rd(f, n_finer, a, b)
relative_error <- abs((result-result_finer)/result_finer)
print(relative_error)

true_error <- result - exact_integral
print(true_error)

# Implement Trapezoidal Rule
trapezoidal <- function(f, a, b, n)
{
  h = (b-a)/n
  x = seq(a, b, by=h)
  
  res <- (1/2)*h*(f(a) + f(b) + 2*sum(f(x[2:(n-1)])))
  return (res)
}

result <- trapezoidal(f, a, b, n)
print(result)

n_finer <- 20
result_finer <- trapezoidal(f, a, b, n_finer)
relative_error <- abs((result-result_finer)/result_finer)
print(relative_error)
true_error <- result - exact_integral












# Question 2
# Implement Bisection Method

f_bisection <- function(x)
{
  return (x^3 - x - 1)
}

bisection <- function(f, a, b, accuracy = 1e-6, max_iters=100)
{
  if (f_bisection(a)*f_bisection(b) >= 0)
  {
    stop("The function might have opposite signs at endpoints")
  }
  
  iter <- 1
  
  while (iter < max_iters)
  {
    c <- (a+b)/2
    
    if (abs(f_bisection(c)) < accuracy || (b-a)/2 < accuracy)
    {
      return (c)
    }
    if (f_bisection(c)*f_bisection(a) < 0)
    {
      b <- c
    }
    else
    {
      a <- c
    }
    iter <- iter + 1
  }
  warning("Maximum number of iterations reached")
  return ((a+b)/2)
}

a <- 1
b <- 3
root <- bisection(f_bisection, a, b)
cat("Root of the equation: ",root)











# Question 3
library(ggplot2)
data <- read.csv('bestsellers1.csv')
data_heatmap <- data[,c("User.rating", "Reviews")]
data_heatmap
# Define a custom color palette
my_color_palette <- scale_color_gradient(low = "lightblue", high = "darkred")

# Create the heatmap using ggplot2
ggplot(data_heatmap, aes(x = User.Rating, y = Reviews)) +
  geom_tile(aes(fill = User.Rating), color = "white") +
  my_color_palette +
  labs(
    title = "Heatmap of User Ratings vs. Reviews",
    x = "User Rating",
    y = "Reviews"
  ) +
  theme_minimal()














# Question 4
install.packages("plotly")
library(plotly)
labels <- c("Andhra", "Aruranchal", "Bihar", "Chandigarh", "Delhi", "Kerala", "Punjab", "UP")
values <- c(59, 79, 110, 168, 92, 85, 113, 102)
pie_chart <- plot_ly(
  labels = labels,
  values = values,
  type = 'pie'
)

layout(pie_chart, title="3D Pie Chart")














# Question 5
f <- function(x, y)
{
  return (2*(x^2) + 2*(y^2))
}

x <- seq(-20, 20, length.out=100)
y <- seq(-20, 20, length.out=100)

z <- outer(x, y, Vectorize(function(x,y) f(x,y)))

contour(x, y, z,
        xlab = "X",
        ylab = "Y",
        main = "2x^2 + 2y^2",
        col = rainbow(20))
