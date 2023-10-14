############## Problem 1 ###################



n_terms <- 100
result <- 0
expression <- sqrt(1 + n_terms)
for (n in n_terms:1) {
  result <- expression
  expression <- sqrt(1 + n * result)
}
cat("The result of the series up to 100 terms is:", result)











############ Problem 2 ###############



# Defining the given function f(x)
f <- function(x, a, b) {
  return ((gamma(a + b) / (gamma(a) * gamma(b))) * (x^(a - 1)) * ((1 - x)^(b - 1)))
}

# Taking any 2 values of the parameters alpha and beta 
a1 <- 2
b1 <- 3
a2 <- 1
b2 <- 4

# Defining the number of intervals for numerical integration
n <- 1000

# Perform numerical integration using the trapezoidal rule
numerical_integration <- function(f, a, b, n) {
  x <- seq(0, 1, length.out = n + 1)
  dx <- 1 / n
  integral <- 0.5 * dx * (f(x[1], a, b) + f(x[n + 1], a, b))
  integral <- integral + dx * sum(f(x[2:n], a, b))
  return(integral)
}

# Calculating the integrals
result1 <- numerical_integration(f, a1, b1, n)
result2 <- numerical_integration(f, a2, b2, n)

cat(paste("Integral for alpha=", a1, ", beta=", b1, ": ", result1, "\n"))
cat(paste("Integral for alpha=", a2, ", beta=", b2, ": ", result2, "\n"))

# Load necessary libraries for plotting
library(ggplot2)

# Generate x values
x <- seq(0.01, 0.99, length.out = 100)

# Calculate f(x) for both sets of parameters
y1 <- f(x, a1, b1)
y2 <- f(x, a2, b2)

# Create a data frame for plotting
df <- data.frame(x = x, y1 = y1, y2 = y2)

# Plot the results with legends
ggplot(df, aes(x = x)) +
  geom_line(aes(y = y1, color = "alpha=2, beta=3")) +
  geom_line(aes(y = y2, color = "alpha=1, beta=4")) +
  labs(x = "x", y = "f(x)", color = "Parameters") +
  scale_color_manual(values = c("alpha=2, beta=3" = "blue", "alpha=1, beta=4" = "red")) +
  ggtitle("Plot of f(x) for Different Parameter Values") +
  theme_minimal()










############ Problem 3 ###############



# Define the function f(x)
f <- function(x) {
  return(x*x*x - 4 * x - 9)
}

# Initial guesses
x0 <- 0
x1 <- 2

# Tolerable error
e <- 0.0001

repeat {
  # Calculate new approximated root x2
  x2 <- x0 - ((x0 - x1) * f(x0)) / (f(x0) - f(x1))
  
  # Calculate f(x0)f(x2)
  f_x0_x2 <- f(x0) * f(x2)
  
  if (f_x0_x2 < 0) {
    x0 <- x0
    x1 <- x2
  } else if (f_x0_x2 > 0) {
    x0 <- x2
    x1 <- x1
  } else {
    # Root found
    break
  }
  
  if (abs(f(x2)) <= e) {
    # Root found within tolerable error
    break
  }
}

# Display the root
cat("The root is approximately:", round(x2, 4))










################# Problem 4 ###################



library(magrittr)
library(ggplot2)
library(plotrix)
library(dplyr)
getwd()
imdb <- read.csv("imdb.csv")
is.data.frame(imdb)

names(imdb)
View(imdb)
#series by directors

new_imdb <- subset(imdb, Director=="Howard Hawks" | Director == "Joel Coen")
View(new_imdb)
#arranged according to rating
new1_imdb <-  imdb %>% arrange(IMDB_Rating)
View(new1_imdb)

new2_imdb <- imdb %>% arrange(No_of_Votes)
#top 10 voted movies
head(new2_imdb, n =10)

#arrange  the files according to released years, IMDB_Rating ,
?filter
new3_imdb <- imdb %>% arrange(Released_Year) %>% arrange(IMDB_Rating)
new4_imdb <- subset(new3_imdb, Meta_score>70)
View(new4_imdb)
#bar plot


filtered_movies <- subset(imdb, Released_Year >= 2010 & Released_Year <= 2020)

# Create the barplot
ggplot(filtered_movies, aes(x = as.factor(Released_Year))) +
  geom_bar() +
  labs(
    title = "Number of Movies Released (2010-2020)",
    x = "Release Year",
    y = "Count of Movies"
  ) 