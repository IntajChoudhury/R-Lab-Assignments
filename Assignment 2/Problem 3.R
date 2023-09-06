# Problem 3

## Create the dataset
X1 <- c(2, 4, 6, 10, 4, 7, 12, 20, 5)
X2 <- c(10, 5, 5, 20, 4, 70, 40, 12, NA) # Adding a missing value
X3 <- c(2, 4, 2.5, 34, 1.6, 9.5, 6, 2, NA) # Adding a missing value

# Combine the vectors into a data frame
data <- data.frame(X1, X2, X3)

# Summary of the dataset
summary(data)

# Remove rows with missing values
cleaned_data <- na.omit(data)

# Calculate the sum of X1, X2, and X3
cleaned_data$Sum <- cleaned_data$X1 + cleaned_data$X2 + cleaned_data$X3

# Print cleaned data
print(cleaned_data)
  

  