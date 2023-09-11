# Problem 3





# (i)



#lmport the library dplyr

library(dplyr)

bikeBaltimore <- read.csv('C:/RC/Documents/IIT Patna Remastered 2023-25/Course/1st Semester/MC503 Simulation Lab/Assignment 3/Bike_lanes.csv')
print(bikeBaltimore)

View(bikeBaltimore)

# dimension of the given data frame
dim(bikeBaltimore)

num_of_Lanes <- nrow(bikeBaltimore)
print(num_of_Lanes)





# (ii)



#Total distance cover
total_length_feet <- sum(bikeBaltimore$length)
print(total_length_feet)

# Convert total length from feet to miles (1 mile = 5280 feet)
total_length_miles <- total_length_feet / 5280

print(total_length_miles)





# (iii)



# Number of Type of lanes in Baltimore

table(bikeBaltimore$type)
length(table(bikeBaltimore$type))

unique(bikeBaltimore$type)
length(unique(bikeBaltimore$type))

counts = bikeBaltimore %>%
  count(type)

# The type with the most number of bike lanes
most_common_type <- bikeBaltimore %>%
  count(type) %>%
  arrange(desc(n)) %>%
  head(1) %>%
  pull(type)

most_common_count <- bikeBaltimore %>%
  count(type) %>%
  arrange(desc(n)) %>%
  head(1) %>%
  pull(n)
# Display the most common type and its count
cat("bike lanes types:", most_common_type, "n")
cat("Number of bike lanes :", most_common_count, "\n")

# The type with the longest average bike lane length

longest_average_type <- bikeBaltimore %>%
  group_by(type) %>%
  summarize(avg_length = mean(length)) %>%
  arrange(desc(avg_length)) %>%
  head(1) %>%
  pull(type)

longest_average_length <- bikeBaltimore %>%
  group_by(type) %>%
  summarize(avg_length = mean(length)) %>%
  arrange(desc(avg_length)) %>%
  head(1) %>%
  pull(avg_length)

# Display the type with the longest average length and its length

cat("longest average bike lane length type:", longest_average_type, "\n")
cat("Longest average bike lane length (in feet):", longest_average_length, "n")





# (iv)



# Project category
project_category <-bikeBaltimore %>%
  
  group_by(project) %>%
  
  summarise(n = n(),mean = mean(length)) %>%
  
  arrange(desc(mean))

print(project_category)
