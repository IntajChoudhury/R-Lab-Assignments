# Problem 5



#part 1

setwd("C:\\RC\\Documents\\IIT Patna Remastered 2023-25\\Course\\1st Semester\\MC503 Simulation Lab\\Assignment 2")

# Load the dataset
dataset <- read.csv("medals_total.csv"); dataset

# Filter for India, USA, and China
countries <- c("USA", "CHN", "IND")
selected_data <- dataset[dataset$Country.Code %in% countries, ]

# Calculate total medals for each type by country
total_medals_count <- aggregate(cbind(Gold.Medal, Silver.Medal, Bronze.Medal) ~ Country.Code, data = selected_data, sum)
print(total_medals_count)


#part 2

countries <- c("CHN", "GBR")
filtered_country <- dataset[dataset$Country.Code %in%countries, ]

# Create a bar chart for all three types of medals
barplot(
t(filtered_country[, c("Gold.Medal", "Silver.Medal", "Bronze.Medal")]),
beside = TRUE,
names.arg = filtered_country$Country,
col = c("gold", "green", "brown"),
main = "Medals of China and UK",
xlab = "Country_Name",
ylab = "Number of Medals",
legend.text = c("Gold", "Silver", "Bronze")
)



#part 3

# Filter the dataset for the specified countries

countries <- c("IND", "USA", "JPN", "CHN", "BRA")
filtered_country <- dataset[dataset$Country.Code %in%countries, ]

print(filtered_country)



#part 4

medals_count <- aggregate(cbind(Gold.Medal, Silver.Medal, Bronze.Medal) ~ Country.Code, data = filtered_country, sum)

# Calculate the total medals for each country
medals_count$Total <- rowSums(medals_count[, c("Gold.Medal", "Silver.Medal", "Bronze.Medal")])

# Create a pie chart
pie(
medals_count$Total,
labels = medals_count$Country_Code,
col = c("gold", "green", "brown", "orange", "purple"),
main = "Total Medals by Country",
clockwise = TRUE
)



#part 5

# Filter the dataset for countries with at least two golds, five silver, and two bronze medals
Target_countries <- dataset[dataset$Gold.Medal >= 2 & dataset$Silver.Medal >= 5 & dataset$Bronze.Medal >= 2, ]

# Print the details of the filtered countries
print(Target_countries)
