# Problem 1





# (i)



#Create the data set with the given information

populousCities <- data.frame(
  City = c("New York", "Los Angeles", "Chicago", "Houston", "Phoenix",
           "Philadelphia", "San Antonio", "San Diego", "Dallas", "San Jose"),
  Population = c(8.60, 4.06, 2.68, 2.40, 1.71, 1.58, 1.57, 1.45, 1.40, 1.03)
  
)

View(populousCities)





# (ii)



# Sort the data frame by Population in descending order
populousCities <- populousCities[order(-populousCities$Population), ]

# Rename the object
sortedPopulousCities <- populousCities

# Create a pie chart
library(ggplot2)

# Define colors for the pie chart
colors <- rainbow(nrow(sortedPopulousCities))
# Create the pie chart
pie_chart <- ggplot(sortedPopulousCities, aes(x ="", y = Population, fill = City)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar(theta = "y") +
  scale_fill_manual(values = colors) +
  theme_void() +
  labs(title = "Population Distribution of Cities")

# Display the pie chart
print(pie_chart)





# (iii)



# Calculate the total population
total_population <- sum(sortedPopulousCities$Population)

# Calculate the percentages and round them to the nearest whole number
sortedPopulousCities$ Percentage <- round((sortedPopulousCities$Population /
                                             total_population) * 100)

# Create a pie chart with percentage labels
pie_chart_with_percentage <- ggplot(sortedPopulousCities, aes(x ="", y = Population, fill = City)) +
geom_bar(stat = "identity", width = 1) +
coord_polar(theta = "y") +
scale_fill_manual(values = colors) +
theme_void() +
labs(title = "Population Distribution of Cities") +
geom_text(aes(label = paste0(City, "\n", Percentage, "%")), position = position_stack(vjust = 0.5))

# Display the pie chart with percentage labels
print(pie_chart_with_percentage)
