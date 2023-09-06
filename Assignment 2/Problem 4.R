# Problem 4

# Create a data frame with the monthly sales data
dataset <- data.frame(
Month = c("January", "February", "March", "April"),
Category_A = c(5000, 4500, 5200, 2100),
Category_B = c(3000, 3200, 3100, 1500),
Category_C = c(2000, 2300, 1800, 3015)
)

# Transpose the data frame so that months are rows and categories are columns
dataset <- t(dataset[,-1]); dataset

# Create a bar chart using barplot
barplot(dataset, beside = TRUE, col = c("red", "orange", "green"),
names.arg = dataset[1,], ylim = c(0, 6000),
main = "Monthly Sales Data Past Year",
xlab = "Month",
ylab = "Sales Amount",
legend.text = rownames(dataset))